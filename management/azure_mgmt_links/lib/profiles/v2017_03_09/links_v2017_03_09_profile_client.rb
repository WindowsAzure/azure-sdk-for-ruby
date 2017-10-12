# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'profiles/v2017_03_09/links_v2017_03_09_module_definition.rb'
require 'profiles/v2017_03_09/modules/links_profile_module'
require 'profiles/common/configurable'
require 'profiles/common/default'

module Azure::Links::Profiles::V2017_03_09::Mgmt
  #
  # Client class for the V2017_03_09 profile SDK.
  #
  class Client
    include Azure::ARM::Configurable

    attr_reader  :links

    def initialize(options = {})
      if options.is_a?(Hash) && options.length == 0
        @options = setup_options
      else
        @options = options
      end

      reset!(options)

      @links = LinksClass.new(self)
    end

    def credentials
      if @credentials.nil?
        self.active_directory_settings ||= Azure::ARM::Default.active_directory_settings

        @credentials = MsRest::TokenCredentials.new(
                    MsRestAzure::ApplicationTokenProvider.new(
                        self.tenant_id, self.client_id, self.client_secret, self.active_directory_settings))
      end
      @credentials
    end
  end
end
