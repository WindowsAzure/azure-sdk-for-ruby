# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_search'

module Azure::Search::Profiles::V2015_08_19::Mgmt
    AdminKeys = Azure::ARM::Search::Api_2015_08_19::AdminKeys
    QueryKeys = Azure::ARM::Search::Api_2015_08_19::QueryKeys
    Services = Azure::ARM::Search::Api_2015_08_19::Services

    module Models
      Sku = Azure::ARM::Search::Api_2015_08_19::Models::Sku
      CheckNameAvailabilityInput = Azure::ARM::Search::Api_2015_08_19::Models::CheckNameAvailabilityInput
      SearchManagementRequestOptions = Azure::ARM::Search::Api_2015_08_19::Models::SearchManagementRequestOptions
      AdminKeyResult = Azure::ARM::Search::Api_2015_08_19::Models::AdminKeyResult
      Resource = Azure::ARM::Search::Api_2015_08_19::Models::Resource
      QueryKey = Azure::ARM::Search::Api_2015_08_19::Models::QueryKey
      CheckNameAvailabilityOutput = Azure::ARM::Search::Api_2015_08_19::Models::CheckNameAvailabilityOutput
      SearchService = Azure::ARM::Search::Api_2015_08_19::Models::SearchService
      UnavailableNameReason = Azure::ARM::Search::Api_2015_08_19::Models::UnavailableNameReason
      SkuName = Azure::ARM::Search::Api_2015_08_19::Models::SkuName
      HostingMode = Azure::ARM::Search::Api_2015_08_19::Models::HostingMode
      SearchServiceStatus = Azure::ARM::Search::Api_2015_08_19::Models::SearchServiceStatus
      ProvisioningState = Azure::ARM::Search::Api_2015_08_19::Models::ProvisioningState
      AdminKeyKind = Azure::ARM::Search::Api_2015_08_19::Models::AdminKeyKind
    end

    #
    # Search
    #
    class SearchClass
      attr_reader :admin_keys, :query_keys, :services, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_options
        else
          @options = options
        end

        reset!(options)

        @configurable, @base_url, @options = self, nil, nil

        client_0 = Azure::ARM::Search::Api_2015_08_19::SearchManagementClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @admin_keys = client_0.admin_keys
        @query_keys = client_0.query_keys
        @services = client_0.services

        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client(version = '2015-08-19')
        case version
          when '2015-08-19'
            client = Azure::ARM::Search::Api_2015_08_19::SearchManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def sku
          Azure::ARM::Search::Api_2015_08_19::Models::Sku
        end
        def check_name_availability_input
          Azure::ARM::Search::Api_2015_08_19::Models::CheckNameAvailabilityInput
        end
        def search_management_request_options
          Azure::ARM::Search::Api_2015_08_19::Models::SearchManagementRequestOptions
        end
        def admin_key_result
          Azure::ARM::Search::Api_2015_08_19::Models::AdminKeyResult
        end
        def resource
          Azure::ARM::Search::Api_2015_08_19::Models::Resource
        end
        def query_key
          Azure::ARM::Search::Api_2015_08_19::Models::QueryKey
        end
        def check_name_availability_output
          Azure::ARM::Search::Api_2015_08_19::Models::CheckNameAvailabilityOutput
        end
        def search_service
          Azure::ARM::Search::Api_2015_08_19::Models::SearchService
        end
        def unavailable_name_reason
          Azure::ARM::Search::Api_2015_08_19::Models::UnavailableNameReason
        end
        def sku_name
          Azure::ARM::Search::Api_2015_08_19::Models::SkuName
        end
        def hosting_mode
          Azure::ARM::Search::Api_2015_08_19::Models::HostingMode
        end
        def search_service_status
          Azure::ARM::Search::Api_2015_08_19::Models::SearchServiceStatus
        end
        def provisioning_state
          Azure::ARM::Search::Api_2015_08_19::Models::ProvisioningState
        end
        def admin_key_kind
          Azure::ARM::Search::Api_2015_08_19::Models::AdminKeyKind
        end
      end
    end
end
