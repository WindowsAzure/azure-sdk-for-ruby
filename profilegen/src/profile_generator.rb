# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'erb'
require 'json'
require 'ms_rest'
require 'fileutils'
require 'ms_rest_azure'
require_relative 'profile_templates'

#
# Class to generate the profile
#

class ProfileGenerator
  # Accessors to be used in the generation of profile client
  attr_accessor :file_names, :profile_name, :module_class_mapper
  # Accessors to be used in the generation of module
  attr_accessor :module_require, :module_name, :class_name, :operation_types, :management_client, :model_types
  # Accessors to be used in the generation of profile spec file
  attr_accessor :profile_version, :profile_ruby_version, :spec_includes

  def initialize(profile, output_dir, dir_metadata)
    @profile_name = profile['name']
    @resource_types = profile['resourceTypes']
    @profile_ruby_version = profile['ruby_version']
    @output_dir = output_dir
    @dir_metadata = dir_metadata
    @file_names, @model_types, @operation_types = [], [], []
    @spec_includes, @module_class_mapper = [], []
  end

  #
  # Public method to generate the profile SDK
  #
  # Steps:
  #     1. Generate the profile SDK files
  #     2. Generate the profile gemspec file
  #     3. Generate the profile License file
  #     4. Generate the Utils files
  #
  def generate
    generate_profile_sdk
    generate_profile_gemspec
    generate_license_and_rakefile
    generate_utils
  end

  private
  #
  # Method to generate the profile SDK files
  #
  # Steps:
  #     1. Generate the module files for each RP
  #     2. Generate the profile client
  #
  def generate_profile_sdk
    generate_modules
    generate_client
  end

  #
  # Method to generate the profile gemspec.
  # Gets the spec template and renders it
  #
  def generate_profile_gemspec
    @profile_version = get_profile_version
    file = get_spec_file
    file.write(get_renderer(ProfileTemplates.spec_template))
  end

  #
  # Method to generate the License file. Copies
  # the license file from resources folder to destination
  #
  def generate_license_and_rakefile
    profile_folder = "#{@output_dir}/#{@profile_name}/"
    copy_file './res/LICENSE.txt', profile_folder
    copy_file './res/Rakefile', profile_folder
  end

  #
  # Method to generate the utils files.
  # Copies the configurable.rb & default.rb files from the
  # resources folder to destination.
  #
  def generate_utils
    utils_folder = "#{@output_dir}/#{@profile_name}/lib/utils/"
    copy_file './res/configurable.rb', utils_folder
    copy_file './res/default.rb', utils_folder
  end

  def copy_file(source, destination)
    FileUtils.cp source, destination
  end

  #
  # Method to generate the individual module files per RP.
  # For each RP in the profile:
  #        1. Load the main file
  #        2. Generate the list of operations
  #        3. Generate the list of models
  #        4. Generate the module file
  #
  def generate_modules
    @resource_types.each do |resource_type_name, resource_type|
      base_file_path = @dir_metadata[resource_type_name]['path'] + get_sdk_path + "azure_mgmt_#{get_ruby_specific_resource_type_name(resource_type_name).downcase}.rb"
      require base_file_path
      @module_require = @dir_metadata[resource_type_name]['module_require']
      @spec_includes << @module_require
      @module_name    = get_module_name(resource_type_name)
      @class_name     = get_ruby_specific_resource_type_name(resource_type_name)
      @module_class_mapper << { 'module_name': @module_name, 'class_name': @class_name }
      generate_operation_types(resource_type_name)
      generate_model_types(resource_type_name)
      file = get_module_file resource_type_name
      file.write(get_renderer(ProfileTemplates.module_template))
    end
  end

  #
  # Method to generate the client file
  # Gets the client template and renders it
  #
  def generate_client
    file = get_client_file
    file.write(get_renderer(ProfileTemplates.client_template))
  end

  #
  # Method to get renderer
  #
  # @param template for which the renderer will be created
  #
  def get_renderer(template)
    renderer = ERB.new(template, 0, '-%>')
    renderer.result(get_binding)
  end

  #
  # Method to generate operations
  #
  # @param resource_type_name name of the resource for which the
  # operations to be generated
  #
  def generate_operation_types(resource_type_name)
    obj = Module.const_get(@dir_metadata[resource_type_name]['namespace'])
    operations = []
    obj.constants.select do |const_name|
      if((obj.const_get(const_name).instance_of?Class) && !const_name.to_s.end_with?("ManagementClient"))
        operations << const_name.to_s
      elsif((obj.const_get(const_name).instance_of?Class))
        @management_client = obj.name + '::' + const_name.to_s
      end

    end
    operations.each do |operation|
      operation_body = obj.name + '::' + operation
      @operation_types << { 'operation_name': get_model_name(operation), 'operation_body': operation_body}
    end
  end

  #
  # Method to generate model types
  #
  # @param resource_type_name name of the resource for which the
  # models to be generated
  #
  def generate_model_types(resource_type_name)
    obj = Module.const_get(@dir_metadata[resource_type_name]['namespace'] + '::Models')
    obj.constants.select do |const_name|
      if(obj.const_get(const_name).instance_of?Class)
        method_name = get_model_name(const_name.to_s)
        method_body = obj.name + '::' + const_name.to_s
        @model_types << {'method_name': method_name, 'method_body': method_body}
      end
    end
  end

  #
  # Utility methods
  #
  def get_module_name(resource_type_name)
    get_ruby_specific_resource_type_name(resource_type_name).capitalize + 'Module'
  end

  def get_model_name(model_name)
    model_name.gsub(/([a-z\d])([A-Z])/,'\1_\2').downcase
  end

  def get_client_file
    check_and_create_directory
    file_name =  "#{@output_dir}/#{@profile_name}/lib/client.rb"
    File.new(file_name, 'w')
  end

  def get_module_file(resource_type_name)
    check_and_create_directory
    file_name = get_module_file_name(resource_type_name)
    @file_names << file_name.sub('.rb', '')
    complete_file_name = "#{@output_dir}/#{@profile_name}/lib/modules/#{file_name}"
    File.new(complete_file_name, 'w')
  end

  def get_spec_file
    check_and_create_directory
    file_name =  "#{@output_dir}/#{@profile_name}/azure_mgmt_profile_#{@profile_version}.gemspec"
    File.new(file_name, 'w')
  end

  def get_module_file_name(resource_type_name)
    get_ruby_specific_resource_type_name(resource_type_name).downcase + '_profile_module.rb'
  end

  def check_and_create_directory
    Dir.mkdir("#{@output_dir}/#{@profile_name}") unless File.directory?("#{@output_dir}/#{@profile_name}")
    Dir.mkdir("#{@output_dir}/#{@profile_name}/lib") unless File.directory?("#{@output_dir}/#{@profile_name}/lib")
    Dir.mkdir("#{@output_dir}/#{@profile_name}/lib/utils") unless File.directory?("#{@output_dir}/#{@profile_name}/lib/utils")
    Dir.mkdir("#{@output_dir}/#{@profile_name}/lib/modules") unless File.directory?("#{@output_dir}/#{@profile_name}/lib/modules")
  end

  def get_ruby_specific_resource_type_name(resource_type_name)
    resource_type_name.slice(resource_type_name.rindex('.') + 1, resource_type_name.length - 1)
  end

  def get_profile_version
    @profile_name[4..@profile_name.length - 1]
  end

  def get_binding
    binding
  end

  def get_sdk_path
    'lib/'
  end
end
