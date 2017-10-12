# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_notification_hubs'

module Azure::NotificationHubs::Profiles::Latest::Mgmt
    Namespaces = Azure::ARM::NotificationHubs::Api_2017_04_01::Namespaces
    Name = Azure::ARM::NotificationHubs::Api_2017_04_01::Name
    NotificationHubs = Azure::ARM::NotificationHubs::Api_2017_04_01::NotificationHubs
    Hubs = Azure::ARM::NotificationHubs::Api_2017_04_01::Hubs

    module Models
      ResourceListKeys = Azure::ARM::NotificationHubs::Api_2017_04_01::Models::ResourceListKeys
      PolicykeyResource = Azure::ARM::NotificationHubs::Api_2017_04_01::Models::PolicykeyResource
      CheckNameAvailabilityResponse = Azure::ARM::NotificationHubs::Api_2017_04_01::Models::CheckNameAvailabilityResponse
      ApnsCredential = Azure::ARM::NotificationHubs::Api_2017_04_01::Models::ApnsCredential
      CheckAvailabilityParameters = Azure::ARM::NotificationHubs::Api_2017_04_01::Models::CheckAvailabilityParameters
      WnsCredential = Azure::ARM::NotificationHubs::Api_2017_04_01::Models::WnsCredential
      CheckNameAvailabilityRequestParameters = Azure::ARM::NotificationHubs::Api_2017_04_01::Models::CheckNameAvailabilityRequestParameters
      NamespacePatchParameters = Azure::ARM::NotificationHubs::Api_2017_04_01::Models::NamespacePatchParameters
      Sku = Azure::ARM::NotificationHubs::Api_2017_04_01::Models::Sku
      SharedAccessAuthorizationRuleProperties = Azure::ARM::NotificationHubs::Api_2017_04_01::Models::SharedAccessAuthorizationRuleProperties
      SubResource = Azure::ARM::NotificationHubs::Api_2017_04_01::Models::SubResource
      BaiduCredential = Azure::ARM::NotificationHubs::Api_2017_04_01::Models::BaiduCredential
      NamespaceListResult = Azure::ARM::NotificationHubs::Api_2017_04_01::Models::NamespaceListResult
      NotificationHubListResult = Azure::ARM::NotificationHubs::Api_2017_04_01::Models::NotificationHubListResult
      GcmCredential = Azure::ARM::NotificationHubs::Api_2017_04_01::Models::GcmCredential
      SharedAccessAuthorizationRuleListResult = Azure::ARM::NotificationHubs::Api_2017_04_01::Models::SharedAccessAuthorizationRuleListResult
      MpnsCredential = Azure::ARM::NotificationHubs::Api_2017_04_01::Models::MpnsCredential
      Resource = Azure::ARM::NotificationHubs::Api_2017_04_01::Models::Resource
      AdmCredential = Azure::ARM::NotificationHubs::Api_2017_04_01::Models::AdmCredential
      CheckAvailabilityResult = Azure::ARM::NotificationHubs::Api_2017_04_01::Models::CheckAvailabilityResult
      NamespaceCreateOrUpdateParameters = Azure::ARM::NotificationHubs::Api_2017_04_01::Models::NamespaceCreateOrUpdateParameters
      NamespaceResource = Azure::ARM::NotificationHubs::Api_2017_04_01::Models::NamespaceResource
      SharedAccessAuthorizationRuleCreateOrUpdateParameters = Azure::ARM::NotificationHubs::Api_2017_04_01::Models::SharedAccessAuthorizationRuleCreateOrUpdateParameters
      SharedAccessAuthorizationRuleResource = Azure::ARM::NotificationHubs::Api_2017_04_01::Models::SharedAccessAuthorizationRuleResource
      NotificationHubCreateOrUpdateParameters = Azure::ARM::NotificationHubs::Api_2017_04_01::Models::NotificationHubCreateOrUpdateParameters
      NotificationHubResource = Azure::ARM::NotificationHubs::Api_2017_04_01::Models::NotificationHubResource
      PnsCredentialsResource = Azure::ARM::NotificationHubs::Api_2017_04_01::Models::PnsCredentialsResource
      SkuName = Azure::ARM::NotificationHubs::Api_2017_04_01::Models::SkuName
      NamespaceType = Azure::ARM::NotificationHubs::Api_2017_04_01::Models::NamespaceType
      AccessRights = Azure::ARM::NotificationHubs::Api_2017_04_01::Models::AccessRights
    end

    #
    # NotificationHubs
    #
    class NotificationHubsClass
      attr_reader :namespaces, :name, :notification_hubs, :hubs, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_options
        else
          @options = options
        end

        reset!(options)

        @configurable, @base_url, @options = self, nil, nil

        client_0 = Azure::ARM::NotificationHubs::Api_2017_04_01::NotificationHubsManagementClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @namespaces = client_0.namespaces
        @name = client_0.name
        @notification_hubs = client_0.notification_hubs
        @hubs = client_0.hubs

        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client(version = '2017-04-01')
        case version
          when '2017-04-01'
            client = Azure::ARM::NotificationHubs::Api_2017_04_01::NotificationHubsManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def resource_list_keys
          Azure::ARM::NotificationHubs::Api_2017_04_01::Models::ResourceListKeys
        end
        def policykey_resource
          Azure::ARM::NotificationHubs::Api_2017_04_01::Models::PolicykeyResource
        end
        def check_name_availability_response
          Azure::ARM::NotificationHubs::Api_2017_04_01::Models::CheckNameAvailabilityResponse
        end
        def apns_credential
          Azure::ARM::NotificationHubs::Api_2017_04_01::Models::ApnsCredential
        end
        def check_availability_parameters
          Azure::ARM::NotificationHubs::Api_2017_04_01::Models::CheckAvailabilityParameters
        end
        def wns_credential
          Azure::ARM::NotificationHubs::Api_2017_04_01::Models::WnsCredential
        end
        def check_name_availability_request_parameters
          Azure::ARM::NotificationHubs::Api_2017_04_01::Models::CheckNameAvailabilityRequestParameters
        end
        def namespace_patch_parameters
          Azure::ARM::NotificationHubs::Api_2017_04_01::Models::NamespacePatchParameters
        end
        def sku
          Azure::ARM::NotificationHubs::Api_2017_04_01::Models::Sku
        end
        def shared_access_authorization_rule_properties
          Azure::ARM::NotificationHubs::Api_2017_04_01::Models::SharedAccessAuthorizationRuleProperties
        end
        def sub_resource
          Azure::ARM::NotificationHubs::Api_2017_04_01::Models::SubResource
        end
        def baidu_credential
          Azure::ARM::NotificationHubs::Api_2017_04_01::Models::BaiduCredential
        end
        def namespace_list_result
          Azure::ARM::NotificationHubs::Api_2017_04_01::Models::NamespaceListResult
        end
        def notification_hub_list_result
          Azure::ARM::NotificationHubs::Api_2017_04_01::Models::NotificationHubListResult
        end
        def gcm_credential
          Azure::ARM::NotificationHubs::Api_2017_04_01::Models::GcmCredential
        end
        def shared_access_authorization_rule_list_result
          Azure::ARM::NotificationHubs::Api_2017_04_01::Models::SharedAccessAuthorizationRuleListResult
        end
        def mpns_credential
          Azure::ARM::NotificationHubs::Api_2017_04_01::Models::MpnsCredential
        end
        def resource
          Azure::ARM::NotificationHubs::Api_2017_04_01::Models::Resource
        end
        def adm_credential
          Azure::ARM::NotificationHubs::Api_2017_04_01::Models::AdmCredential
        end
        def check_availability_result
          Azure::ARM::NotificationHubs::Api_2017_04_01::Models::CheckAvailabilityResult
        end
        def namespace_create_or_update_parameters
          Azure::ARM::NotificationHubs::Api_2017_04_01::Models::NamespaceCreateOrUpdateParameters
        end
        def namespace_resource
          Azure::ARM::NotificationHubs::Api_2017_04_01::Models::NamespaceResource
        end
        def shared_access_authorization_rule_create_or_update_parameters
          Azure::ARM::NotificationHubs::Api_2017_04_01::Models::SharedAccessAuthorizationRuleCreateOrUpdateParameters
        end
        def shared_access_authorization_rule_resource
          Azure::ARM::NotificationHubs::Api_2017_04_01::Models::SharedAccessAuthorizationRuleResource
        end
        def notification_hub_create_or_update_parameters
          Azure::ARM::NotificationHubs::Api_2017_04_01::Models::NotificationHubCreateOrUpdateParameters
        end
        def notification_hub_resource
          Azure::ARM::NotificationHubs::Api_2017_04_01::Models::NotificationHubResource
        end
        def pns_credentials_resource
          Azure::ARM::NotificationHubs::Api_2017_04_01::Models::PnsCredentialsResource
        end
        def sku_name
          Azure::ARM::NotificationHubs::Api_2017_04_01::Models::SkuName
        end
        def namespace_type
          Azure::ARM::NotificationHubs::Api_2017_04_01::Models::NamespaceType
        end
        def access_rights
          Azure::ARM::NotificationHubs::Api_2017_04_01::Models::AccessRights
        end
      end
    end
end
