# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_key_vault'

module Azure::KeyVault::Profiles::Latest
  module Mgmt
    Vaults = Azure::KeyVault::Mgmt::V2018_02_14::Vaults
    Operations = Azure::KeyVault::Mgmt::V2018_02_14::Operations

    module Models
      DeletedVault = Azure::KeyVault::Mgmt::V2018_02_14::Models::DeletedVault
      VaultListResult = Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultListResult
      Permissions = Azure::KeyVault::Mgmt::V2018_02_14::Models::Permissions
      NetworkRuleSet = Azure::KeyVault::Mgmt::V2018_02_14::Models::NetworkRuleSet
      VaultProperties = Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultProperties
      VirtualNetworkRule = Azure::KeyVault::Mgmt::V2018_02_14::Models::VirtualNetworkRule
      DeletedVaultListResult = Azure::KeyVault::Mgmt::V2018_02_14::Models::DeletedVaultListResult
      ResourceListResult = Azure::KeyVault::Mgmt::V2018_02_14::Models::ResourceListResult
      IPRule = Azure::KeyVault::Mgmt::V2018_02_14::Models::IPRule
      VaultCreateOrUpdateParameters = Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultCreateOrUpdateParameters
      VaultCheckNameAvailabilityParameters = Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultCheckNameAvailabilityParameters
      Resource = Azure::KeyVault::Mgmt::V2018_02_14::Models::Resource
      CheckNameAvailabilityResult = Azure::KeyVault::Mgmt::V2018_02_14::Models::CheckNameAvailabilityResult
      VaultAccessPolicyParameters = Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultAccessPolicyParameters
      VaultPatchProperties = Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultPatchProperties
      LogSpecification = Azure::KeyVault::Mgmt::V2018_02_14::Models::LogSpecification
      VaultPatchParameters = Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultPatchParameters
      ServiceSpecification = Azure::KeyVault::Mgmt::V2018_02_14::Models::ServiceSpecification
      AccessPolicyEntry = Azure::KeyVault::Mgmt::V2018_02_14::Models::AccessPolicyEntry
      OperationDisplay = Azure::KeyVault::Mgmt::V2018_02_14::Models::OperationDisplay
      DeletedVaultProperties = Azure::KeyVault::Mgmt::V2018_02_14::Models::DeletedVaultProperties
      VaultAccessPolicyProperties = Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultAccessPolicyProperties
      Sku = Azure::KeyVault::Mgmt::V2018_02_14::Models::Sku
      Vault = Azure::KeyVault::Mgmt::V2018_02_14::Models::Vault
      OperationListResult = Azure::KeyVault::Mgmt::V2018_02_14::Models::OperationListResult
      Operation = Azure::KeyVault::Mgmt::V2018_02_14::Models::Operation
      SkuName = Azure::KeyVault::Mgmt::V2018_02_14::Models::SkuName
      KeyPermissions = Azure::KeyVault::Mgmt::V2018_02_14::Models::KeyPermissions
      SecretPermissions = Azure::KeyVault::Mgmt::V2018_02_14::Models::SecretPermissions
      CertificatePermissions = Azure::KeyVault::Mgmt::V2018_02_14::Models::CertificatePermissions
      StoragePermissions = Azure::KeyVault::Mgmt::V2018_02_14::Models::StoragePermissions
      CreateMode = Azure::KeyVault::Mgmt::V2018_02_14::Models::CreateMode
      AccessPolicyUpdateKind = Azure::KeyVault::Mgmt::V2018_02_14::Models::AccessPolicyUpdateKind
      NetworkRuleBypassOptions = Azure::KeyVault::Mgmt::V2018_02_14::Models::NetworkRuleBypassOptions
      NetworkRuleAction = Azure::KeyVault::Mgmt::V2018_02_14::Models::NetworkRuleAction
      Reason = Azure::KeyVault::Mgmt::V2018_02_14::Models::Reason
    end

    #
    # KeyVaultManagementClass
    #
    class KeyVaultManagementClass
      attr_reader :vaults, :operations, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_default_options
        else
          @options = options
        end

        reset!(options)

        @configurable = self
        @base_url = options[:base_url].nil? ? nil:options[:base_url]
        @options = options[:options].nil? ? nil:options[:options]

        @client_0 = Azure::KeyVault::Mgmt::V2018_02_14::KeyVaultManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @vaults = @client_0.vaults
        @operations = @client_0.operations

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/KeyVault/Mgmt'
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_0.respond_to?method
          @client_0.send(method, *args)
        else
          super
        end
      end

    end

    class ModelClasses
      def deleted_vault
        Azure::KeyVault::Mgmt::V2018_02_14::Models::DeletedVault
      end
      def vault_list_result
        Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultListResult
      end
      def permissions
        Azure::KeyVault::Mgmt::V2018_02_14::Models::Permissions
      end
      def network_rule_set
        Azure::KeyVault::Mgmt::V2018_02_14::Models::NetworkRuleSet
      end
      def vault_properties
        Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultProperties
      end
      def virtual_network_rule
        Azure::KeyVault::Mgmt::V2018_02_14::Models::VirtualNetworkRule
      end
      def deleted_vault_list_result
        Azure::KeyVault::Mgmt::V2018_02_14::Models::DeletedVaultListResult
      end
      def resource_list_result
        Azure::KeyVault::Mgmt::V2018_02_14::Models::ResourceListResult
      end
      def iprule
        Azure::KeyVault::Mgmt::V2018_02_14::Models::IPRule
      end
      def vault_create_or_update_parameters
        Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultCreateOrUpdateParameters
      end
      def vault_check_name_availability_parameters
        Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultCheckNameAvailabilityParameters
      end
      def resource
        Azure::KeyVault::Mgmt::V2018_02_14::Models::Resource
      end
      def check_name_availability_result
        Azure::KeyVault::Mgmt::V2018_02_14::Models::CheckNameAvailabilityResult
      end
      def vault_access_policy_parameters
        Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultAccessPolicyParameters
      end
      def vault_patch_properties
        Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultPatchProperties
      end
      def log_specification
        Azure::KeyVault::Mgmt::V2018_02_14::Models::LogSpecification
      end
      def vault_patch_parameters
        Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultPatchParameters
      end
      def service_specification
        Azure::KeyVault::Mgmt::V2018_02_14::Models::ServiceSpecification
      end
      def access_policy_entry
        Azure::KeyVault::Mgmt::V2018_02_14::Models::AccessPolicyEntry
      end
      def operation_display
        Azure::KeyVault::Mgmt::V2018_02_14::Models::OperationDisplay
      end
      def deleted_vault_properties
        Azure::KeyVault::Mgmt::V2018_02_14::Models::DeletedVaultProperties
      end
      def vault_access_policy_properties
        Azure::KeyVault::Mgmt::V2018_02_14::Models::VaultAccessPolicyProperties
      end
      def sku
        Azure::KeyVault::Mgmt::V2018_02_14::Models::Sku
      end
      def vault
        Azure::KeyVault::Mgmt::V2018_02_14::Models::Vault
      end
      def operation_list_result
        Azure::KeyVault::Mgmt::V2018_02_14::Models::OperationListResult
      end
      def operation
        Azure::KeyVault::Mgmt::V2018_02_14::Models::Operation
      end
      def sku_name
        Azure::KeyVault::Mgmt::V2018_02_14::Models::SkuName
      end
      def key_permissions
        Azure::KeyVault::Mgmt::V2018_02_14::Models::KeyPermissions
      end
      def secret_permissions
        Azure::KeyVault::Mgmt::V2018_02_14::Models::SecretPermissions
      end
      def certificate_permissions
        Azure::KeyVault::Mgmt::V2018_02_14::Models::CertificatePermissions
      end
      def storage_permissions
        Azure::KeyVault::Mgmt::V2018_02_14::Models::StoragePermissions
      end
      def create_mode
        Azure::KeyVault::Mgmt::V2018_02_14::Models::CreateMode
      end
      def access_policy_update_kind
        Azure::KeyVault::Mgmt::V2018_02_14::Models::AccessPolicyUpdateKind
      end
      def network_rule_bypass_options
        Azure::KeyVault::Mgmt::V2018_02_14::Models::NetworkRuleBypassOptions
      end
      def network_rule_action
        Azure::KeyVault::Mgmt::V2018_02_14::Models::NetworkRuleAction
      end
      def reason
        Azure::KeyVault::Mgmt::V2018_02_14::Models::Reason
      end
    end
  end
end
