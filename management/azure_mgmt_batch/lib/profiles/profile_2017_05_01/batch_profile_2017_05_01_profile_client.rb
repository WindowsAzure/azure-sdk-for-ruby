# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'profiles/profile_2017_05_01/batch_profile_2017_05_01_module_definition.rb'
require 'profiles/profile_2017_05_01/modules/batch_profile_module'
require 'profiles/common/configurable'
require 'profiles/common/default'

module Azure::Batch::Management::Profile_2017_05_01
  #
  # Client class for the Profile_2017_05_01 profile SDK.
  #
  class Client
    include Azure::ARM::Configurable

    attr_accessor  :batch

    def initialize(options = {})
      if options.is_a?(Hash) && options.length == 0
        @options = setup_options
      else
        @options = options
      end

      reset!(options)

      self.batch = BatchClass.new(self)
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
