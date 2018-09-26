# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_storage'

module Azure::Profiles::Latest
  module Storage
    module Mgmt
      Usages = Azure::Storage::Mgmt::V2018_03_01_preview::Usages
      Operations = Azure::Storage::Mgmt::V2018_03_01_preview::Operations
      StorageAccounts = Azure::Storage::Mgmt::V2018_03_01_preview::StorageAccounts
      Skus = Azure::Storage::Mgmt::V2018_03_01_preview::Skus
      BlobContainers = Azure::Storage::Mgmt::V2018_03_01_preview::BlobContainers

      module Models
        LeaseStatus = Azure::Storage::Mgmt::V2018_03_01_preview::Models::LeaseStatus
        Services = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Services
        LeaseDuration = Azure::Storage::Mgmt::V2018_03_01_preview::Models::LeaseDuration
        State = Azure::Storage::Mgmt::V2018_03_01_preview::Models::State
        Reason = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Reason
        Permissions = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Permissions
        OperationDisplay = Azure::Storage::Mgmt::V2018_03_01_preview::Models::OperationDisplay
        OperationListResult = Azure::Storage::Mgmt::V2018_03_01_preview::Models::OperationListResult
        SKUCapability = Azure::Storage::Mgmt::V2018_03_01_preview::Models::SKUCapability
        AccountSasParameters = Azure::Storage::Mgmt::V2018_03_01_preview::Models::AccountSasParameters
        ListAccountSasResponse = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ListAccountSasResponse
        KeyVaultProperties = Azure::Storage::Mgmt::V2018_03_01_preview::Models::KeyVaultProperties
        ListServiceSasResponse = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ListServiceSasResponse
        ManagementPoliciesRulesSetParameter = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ManagementPoliciesRulesSetParameter
        ServiceSasParameters = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ServiceSasParameters
        ListContainerItems = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ListContainerItems
        LegalHold = Azure::Storage::Mgmt::V2018_03_01_preview::Models::LegalHold
        LegalHoldProperties = Azure::Storage::Mgmt::V2018_03_01_preview::Models::LegalHoldProperties
        Restriction = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Restriction
        IPRule = Azure::Storage::Mgmt::V2018_03_01_preview::Models::IPRule
        TagProperty = Azure::Storage::Mgmt::V2018_03_01_preview::Models::TagProperty
        NetworkRuleSet = Azure::Storage::Mgmt::V2018_03_01_preview::Models::NetworkRuleSet
        Identity = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Identity
        Operation = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Operation
        StorageAccountCheckNameAvailabilityParameters = Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountCheckNameAvailabilityParameters
        StorageAccountKey = Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountKey
        Sku = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Sku
        StorageAccountListResult = Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountListResult
        EncryptionService = Azure::Storage::Mgmt::V2018_03_01_preview::Models::EncryptionService
        StorageAccountListKeysResult = Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountListKeysResult
        Encryption = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Encryption
        StorageAccountRegenerateKeyParameters = Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountRegenerateKeyParameters
        ServiceSpecification = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ServiceSpecification
        StorageAccountUpdateParameters = Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountUpdateParameters
        CustomDomain = Azure::Storage::Mgmt::V2018_03_01_preview::Models::CustomDomain
        Dimension = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Dimension
        UsageName = Azure::Storage::Mgmt::V2018_03_01_preview::Models::UsageName
        Usage = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Usage
        EncryptionServices = Azure::Storage::Mgmt::V2018_03_01_preview::Models::EncryptionServices
        UsageListResult = Azure::Storage::Mgmt::V2018_03_01_preview::Models::UsageListResult
        CheckNameAvailabilityResult = Azure::Storage::Mgmt::V2018_03_01_preview::Models::CheckNameAvailabilityResult
        Resource = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Resource
        Endpoints = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Endpoints
        MetricSpecification = Azure::Storage::Mgmt::V2018_03_01_preview::Models::MetricSpecification
        VirtualNetworkRule = Azure::Storage::Mgmt::V2018_03_01_preview::Models::VirtualNetworkRule
        StorageAccount = Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccount
        StorageAccountCreateParameters = Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountCreateParameters
        ListContainerItem = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ListContainerItem
        UpdateHistoryProperty = Azure::Storage::Mgmt::V2018_03_01_preview::Models::UpdateHistoryProperty
        ImmutabilityPolicyProperties = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ImmutabilityPolicyProperties
        StorageSkuListResult = Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageSkuListResult
        AzureEntityResource = Azure::Storage::Mgmt::V2018_03_01_preview::Models::AzureEntityResource
        BlobContainer = Azure::Storage::Mgmt::V2018_03_01_preview::Models::BlobContainer
        ImmutabilityPolicy = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ImmutabilityPolicy
        SkuTier = Azure::Storage::Mgmt::V2018_03_01_preview::Models::SkuTier
        TrackedResource = Azure::Storage::Mgmt::V2018_03_01_preview::Models::TrackedResource
        Kind = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Kind
        ProxyResource = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ProxyResource
        StorageAccountManagementPolicies = Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountManagementPolicies
        KeyPermission = Azure::Storage::Mgmt::V2018_03_01_preview::Models::KeyPermission
        AccessTier = Azure::Storage::Mgmt::V2018_03_01_preview::Models::AccessTier
        SignedResource = Azure::Storage::Mgmt::V2018_03_01_preview::Models::SignedResource
        Action = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Action
        ReasonCode = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ReasonCode
        SkuName = Azure::Storage::Mgmt::V2018_03_01_preview::Models::SkuName
        Bypass = Azure::Storage::Mgmt::V2018_03_01_preview::Models::Bypass
        DefaultAction = Azure::Storage::Mgmt::V2018_03_01_preview::Models::DefaultAction
        SignedResourceTypes = Azure::Storage::Mgmt::V2018_03_01_preview::Models::SignedResourceTypes
        ProvisioningState = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ProvisioningState
        AccountStatus = Azure::Storage::Mgmt::V2018_03_01_preview::Models::AccountStatus
        PublicAccess = Azure::Storage::Mgmt::V2018_03_01_preview::Models::PublicAccess
        UsageUnit = Azure::Storage::Mgmt::V2018_03_01_preview::Models::UsageUnit
        LeaseState = Azure::Storage::Mgmt::V2018_03_01_preview::Models::LeaseState
        KeySource = Azure::Storage::Mgmt::V2018_03_01_preview::Models::KeySource
        ImmutabilityPolicyState = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ImmutabilityPolicyState
        ImmutabilityPolicyUpdateType = Azure::Storage::Mgmt::V2018_03_01_preview::Models::ImmutabilityPolicyUpdateType
        HttpProtocol = Azure::Storage::Mgmt::V2018_03_01_preview::Models::HttpProtocol
      end

      class StorageManagementClass
        attr_reader :usages, :operations, :storage_accounts, :skus, :blob_containers, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Storage::Mgmt::V2018_03_01_preview::StorageManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @usages = @client_0.usages
          @operations = @client_0.operations
          @storage_accounts = @client_0.storage_accounts
          @skus = @client_0.skus
          @blob_containers = @client_0.blob_containers

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Storage/Mgmt"
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
          def lease_status
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::LeaseStatus
          end
          def services
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::Services
          end
          def lease_duration
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::LeaseDuration
          end
          def state
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::State
          end
          def reason
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::Reason
          end
          def permissions
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::Permissions
          end
          def operation_display
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::OperationDisplay
          end
          def operation_list_result
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::OperationListResult
          end
          def skucapability
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::SKUCapability
          end
          def account_sas_parameters
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::AccountSasParameters
          end
          def list_account_sas_response
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::ListAccountSasResponse
          end
          def key_vault_properties
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::KeyVaultProperties
          end
          def list_service_sas_response
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::ListServiceSasResponse
          end
          def management_policies_rules_set_parameter
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::ManagementPoliciesRulesSetParameter
          end
          def service_sas_parameters
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::ServiceSasParameters
          end
          def list_container_items
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::ListContainerItems
          end
          def legal_hold
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::LegalHold
          end
          def legal_hold_properties
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::LegalHoldProperties
          end
          def restriction
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::Restriction
          end
          def iprule
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::IPRule
          end
          def tag_property
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::TagProperty
          end
          def network_rule_set
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::NetworkRuleSet
          end
          def identity
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::Identity
          end
          def operation
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::Operation
          end
          def storage_account_check_name_availability_parameters
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountCheckNameAvailabilityParameters
          end
          def storage_account_key
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountKey
          end
          def sku
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::Sku
          end
          def storage_account_list_result
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountListResult
          end
          def encryption_service
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::EncryptionService
          end
          def storage_account_list_keys_result
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountListKeysResult
          end
          def encryption
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::Encryption
          end
          def storage_account_regenerate_key_parameters
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountRegenerateKeyParameters
          end
          def service_specification
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::ServiceSpecification
          end
          def storage_account_update_parameters
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountUpdateParameters
          end
          def custom_domain
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::CustomDomain
          end
          def dimension
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::Dimension
          end
          def usage_name
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::UsageName
          end
          def usage
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::Usage
          end
          def encryption_services
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::EncryptionServices
          end
          def usage_list_result
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::UsageListResult
          end
          def check_name_availability_result
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::CheckNameAvailabilityResult
          end
          def resource
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::Resource
          end
          def endpoints
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::Endpoints
          end
          def metric_specification
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::MetricSpecification
          end
          def virtual_network_rule
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::VirtualNetworkRule
          end
          def storage_account
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccount
          end
          def storage_account_create_parameters
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountCreateParameters
          end
          def list_container_item
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::ListContainerItem
          end
          def update_history_property
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::UpdateHistoryProperty
          end
          def immutability_policy_properties
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::ImmutabilityPolicyProperties
          end
          def storage_sku_list_result
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageSkuListResult
          end
          def azure_entity_resource
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::AzureEntityResource
          end
          def blob_container
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::BlobContainer
          end
          def immutability_policy
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::ImmutabilityPolicy
          end
          def sku_tier
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::SkuTier
          end
          def tracked_resource
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::TrackedResource
          end
          def kind
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::Kind
          end
          def proxy_resource
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::ProxyResource
          end
          def storage_account_management_policies
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::StorageAccountManagementPolicies
          end
          def key_permission
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::KeyPermission
          end
          def access_tier
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::AccessTier
          end
          def signed_resource
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::SignedResource
          end
          def action
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::Action
          end
          def reason_code
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::ReasonCode
          end
          def sku_name
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::SkuName
          end
          def bypass
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::Bypass
          end
          def default_action
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::DefaultAction
          end
          def signed_resource_types
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::SignedResourceTypes
          end
          def provisioning_state
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::ProvisioningState
          end
          def account_status
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::AccountStatus
          end
          def public_access
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::PublicAccess
          end
          def usage_unit
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::UsageUnit
          end
          def lease_state
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::LeaseState
          end
          def key_source
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::KeySource
          end
          def immutability_policy_state
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::ImmutabilityPolicyState
          end
          def immutability_policy_update_type
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::ImmutabilityPolicyUpdateType
          end
          def http_protocol
            Azure::Storage::Mgmt::V2018_03_01_preview::Models::HttpProtocol
          end
        end
      end
    end
  end
end
