# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_event_hub'

module Azure::Profiles::Latest
  module EventHub
    module Mgmt
      Namespaces = Azure::EventHub::Mgmt::V2017_04_01::Namespaces
      DisasterRecoveryConfigs = Azure::EventHub::Mgmt::V2017_04_01::DisasterRecoveryConfigs
      EventHubs = Azure::EventHub::Mgmt::V2017_04_01::EventHubs
      ConsumerGroups = Azure::EventHub::Mgmt::V2017_04_01::ConsumerGroups
      Operations = Azure::EventHub::Mgmt::V2017_04_01::Operations

      module Models
        Sku = Azure::EventHub::Mgmt::V2017_04_01::Models::Sku
        KeyType = Azure::EventHub::Mgmt::V2017_04_01::Models::KeyType
        CaptureDescription = Azure::EventHub::Mgmt::V2017_04_01::Models::CaptureDescription
        Destination = Azure::EventHub::Mgmt::V2017_04_01::Models::Destination
        CheckNameAvailabilityResult = Azure::EventHub::Mgmt::V2017_04_01::Models::CheckNameAvailabilityResult
        Resource = Azure::EventHub::Mgmt::V2017_04_01::Models::Resource
        ArmDisasterRecoveryListResult = Azure::EventHub::Mgmt::V2017_04_01::Models::ArmDisasterRecoveryListResult
        EventHubListResult = Azure::EventHub::Mgmt::V2017_04_01::Models::EventHubListResult
        AccessKeys = Azure::EventHub::Mgmt::V2017_04_01::Models::AccessKeys
        CheckNameAvailabilityParameter = Azure::EventHub::Mgmt::V2017_04_01::Models::CheckNameAvailabilityParameter
        EHNamespaceListResult = Azure::EventHub::Mgmt::V2017_04_01::Models::EHNamespaceListResult
        RegenerateAccessKeyParameters = Azure::EventHub::Mgmt::V2017_04_01::Models::RegenerateAccessKeyParameters
        EHNamespace = Azure::EventHub::Mgmt::V2017_04_01::Models::EHNamespace
        AuthorizationRule = Azure::EventHub::Mgmt::V2017_04_01::Models::AuthorizationRule
        Eventhub = Azure::EventHub::Mgmt::V2017_04_01::Models::Eventhub
        ConsumerGroup = Azure::EventHub::Mgmt::V2017_04_01::Models::ConsumerGroup
        ArmDisasterRecovery = Azure::EventHub::Mgmt::V2017_04_01::Models::ArmDisasterRecovery
        ConsumerGroupListResult = Azure::EventHub::Mgmt::V2017_04_01::Models::ConsumerGroupListResult
        AuthorizationRuleListResult = Azure::EventHub::Mgmt::V2017_04_01::Models::AuthorizationRuleListResult
        EntityStatus = Azure::EventHub::Mgmt::V2017_04_01::Models::EntityStatus
        AccessRights = Azure::EventHub::Mgmt::V2017_04_01::Models::AccessRights
        UnavailableReason = Azure::EventHub::Mgmt::V2017_04_01::Models::UnavailableReason
        SkuName = Azure::EventHub::Mgmt::V2017_04_01::Models::SkuName
        SkuTier = Azure::EventHub::Mgmt::V2017_04_01::Models::SkuTier
        ProvisioningStateDR = Azure::EventHub::Mgmt::V2017_04_01::Models::ProvisioningStateDR
        EncodingCaptureDescription = Azure::EventHub::Mgmt::V2017_04_01::Models::EncodingCaptureDescription
        OperationDisplay = Azure::EventHub::Mgmt::V2017_04_01::Models::OperationDisplay
        OperationListResult = Azure::EventHub::Mgmt::V2017_04_01::Models::OperationListResult
        RoleDisasterRecovery = Azure::EventHub::Mgmt::V2017_04_01::Models::RoleDisasterRecovery
        TrackedResource = Azure::EventHub::Mgmt::V2017_04_01::Models::TrackedResource
        ErrorResponse = Azure::EventHub::Mgmt::V2017_04_01::Models::ErrorResponse
        Operation = Azure::EventHub::Mgmt::V2017_04_01::Models::Operation
      end

      class EventHubManagementClass
        attr_reader :namespaces, :disaster_recovery_configs, :event_hubs, :consumer_groups, :operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::EventHub::Mgmt::V2017_04_01::EventHubManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @namespaces = @client_0.namespaces
          @disaster_recovery_configs = @client_0.disaster_recovery_configs
          @event_hubs = @client_0.event_hubs
          @consumer_groups = @client_0.consumer_groups
          @operations = @client_0.operations

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/EventHub/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_0.respond_to?method
            @client_0.send(method, *args)
          else
            super
          end
        end

        class ModelClasses
          def sku
            Azure::EventHub::Mgmt::V2017_04_01::Models::Sku
          end
          def key_type
            Azure::EventHub::Mgmt::V2017_04_01::Models::KeyType
          end
          def capture_description
            Azure::EventHub::Mgmt::V2017_04_01::Models::CaptureDescription
          end
          def destination
            Azure::EventHub::Mgmt::V2017_04_01::Models::Destination
          end
          def check_name_availability_result
            Azure::EventHub::Mgmt::V2017_04_01::Models::CheckNameAvailabilityResult
          end
          def resource
            Azure::EventHub::Mgmt::V2017_04_01::Models::Resource
          end
          def arm_disaster_recovery_list_result
            Azure::EventHub::Mgmt::V2017_04_01::Models::ArmDisasterRecoveryListResult
          end
          def event_hub_list_result
            Azure::EventHub::Mgmt::V2017_04_01::Models::EventHubListResult
          end
          def access_keys
            Azure::EventHub::Mgmt::V2017_04_01::Models::AccessKeys
          end
          def check_name_availability_parameter
            Azure::EventHub::Mgmt::V2017_04_01::Models::CheckNameAvailabilityParameter
          end
          def ehnamespace_list_result
            Azure::EventHub::Mgmt::V2017_04_01::Models::EHNamespaceListResult
          end
          def regenerate_access_key_parameters
            Azure::EventHub::Mgmt::V2017_04_01::Models::RegenerateAccessKeyParameters
          end
          def ehnamespace
            Azure::EventHub::Mgmt::V2017_04_01::Models::EHNamespace
          end
          def authorization_rule
            Azure::EventHub::Mgmt::V2017_04_01::Models::AuthorizationRule
          end
          def eventhub
            Azure::EventHub::Mgmt::V2017_04_01::Models::Eventhub
          end
          def consumer_group
            Azure::EventHub::Mgmt::V2017_04_01::Models::ConsumerGroup
          end
          def arm_disaster_recovery
            Azure::EventHub::Mgmt::V2017_04_01::Models::ArmDisasterRecovery
          end
          def consumer_group_list_result
            Azure::EventHub::Mgmt::V2017_04_01::Models::ConsumerGroupListResult
          end
          def authorization_rule_list_result
            Azure::EventHub::Mgmt::V2017_04_01::Models::AuthorizationRuleListResult
          end
          def entity_status
            Azure::EventHub::Mgmt::V2017_04_01::Models::EntityStatus
          end
          def access_rights
            Azure::EventHub::Mgmt::V2017_04_01::Models::AccessRights
          end
          def unavailable_reason
            Azure::EventHub::Mgmt::V2017_04_01::Models::UnavailableReason
          end
          def sku_name
            Azure::EventHub::Mgmt::V2017_04_01::Models::SkuName
          end
          def sku_tier
            Azure::EventHub::Mgmt::V2017_04_01::Models::SkuTier
          end
          def provisioning_state_dr
            Azure::EventHub::Mgmt::V2017_04_01::Models::ProvisioningStateDR
          end
          def encoding_capture_description
            Azure::EventHub::Mgmt::V2017_04_01::Models::EncodingCaptureDescription
          end
          def operation_display
            Azure::EventHub::Mgmt::V2017_04_01::Models::OperationDisplay
          end
          def operation_list_result
            Azure::EventHub::Mgmt::V2017_04_01::Models::OperationListResult
          end
          def role_disaster_recovery
            Azure::EventHub::Mgmt::V2017_04_01::Models::RoleDisasterRecovery
          end
          def tracked_resource
            Azure::EventHub::Mgmt::V2017_04_01::Models::TrackedResource
          end
          def error_response
            Azure::EventHub::Mgmt::V2017_04_01::Models::ErrorResponse
          end
          def operation
            Azure::EventHub::Mgmt::V2017_04_01::Models::Operation
          end
        end
      end
    end
  end
end
