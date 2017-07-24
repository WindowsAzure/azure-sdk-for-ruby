# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require 'generated/azure_mgmt_datalake_store/module_definition'

module Azure::ARM::DataLakeStore
  autoload :FirewallRules,                                      'generated/azure_mgmt_datalake_store/firewall_rules.rb'
  autoload :TrustedIdProviders,                                 'generated/azure_mgmt_datalake_store/trusted_id_providers.rb'
  autoload :Account,                                            'generated/azure_mgmt_datalake_store/account.rb'
  autoload :DataLakeStoreAccountManagementClient,               'generated/azure_mgmt_datalake_store/data_lake_store_account_management_client.rb'

  module Models
    autoload :EncryptionConfig,                                   'generated/azure_mgmt_datalake_store/models/encryption_config.rb'
    autoload :UpdateKeyVaultMetaInfo,                             'generated/azure_mgmt_datalake_store/models/update_key_vault_meta_info.rb'
    autoload :KeyVaultMetaInfo,                                   'generated/azure_mgmt_datalake_store/models/key_vault_meta_info.rb'
    autoload :UpdateFirewallRuleParameters,                       'generated/azure_mgmt_datalake_store/models/update_firewall_rule_parameters.rb'
    autoload :SubResource,                                        'generated/azure_mgmt_datalake_store/models/sub_resource.rb'
    autoload :Resource,                                           'generated/azure_mgmt_datalake_store/models/resource.rb'
    autoload :DataLakeStoreFirewallRuleListResult,                'generated/azure_mgmt_datalake_store/models/data_lake_store_firewall_rule_list_result.rb'
    autoload :UpdateEncryptionConfig,                             'generated/azure_mgmt_datalake_store/models/update_encryption_config.rb'
    autoload :UpdateTrustedIdProviderParameters,                  'generated/azure_mgmt_datalake_store/models/update_trusted_id_provider_parameters.rb'
    autoload :DataLakeStoreAccountUpdateParameters,               'generated/azure_mgmt_datalake_store/models/data_lake_store_account_update_parameters.rb'
    autoload :EncryptionIdentity,                                 'generated/azure_mgmt_datalake_store/models/encryption_identity.rb'
    autoload :ErrorDetails,                                       'generated/azure_mgmt_datalake_store/models/error_details.rb'
    autoload :DataLakeStoreTrustedIdProviderListResult,           'generated/azure_mgmt_datalake_store/models/data_lake_store_trusted_id_provider_list_result.rb'
    autoload :DataLakeStoreAccountListResult,                     'generated/azure_mgmt_datalake_store/models/data_lake_store_account_list_result.rb'
    autoload :FirewallRule,                                       'generated/azure_mgmt_datalake_store/models/firewall_rule.rb'
    autoload :TrustedIdProvider,                                  'generated/azure_mgmt_datalake_store/models/trusted_id_provider.rb'
    autoload :DataLakeStoreAccount,                               'generated/azure_mgmt_datalake_store/models/data_lake_store_account.rb'
    autoload :DataLakeStoreAccountBasic,                          'generated/azure_mgmt_datalake_store/models/data_lake_store_account_basic.rb'
    autoload :EncryptionConfigType,                               'generated/azure_mgmt_datalake_store/models/encryption_config_type.rb'
    autoload :EncryptionState,                                    'generated/azure_mgmt_datalake_store/models/encryption_state.rb'
    autoload :EncryptionProvisioningState,                        'generated/azure_mgmt_datalake_store/models/encryption_provisioning_state.rb'
    autoload :FirewallState,                                      'generated/azure_mgmt_datalake_store/models/firewall_state.rb'
    autoload :TrustedIdProviderState,                             'generated/azure_mgmt_datalake_store/models/trusted_id_provider_state.rb'
    autoload :TierType,                                           'generated/azure_mgmt_datalake_store/models/tier_type.rb'
    autoload :FirewallAllowAzureIpsState,                         'generated/azure_mgmt_datalake_store/models/firewall_allow_azure_ips_state.rb'
    autoload :DataLakeStoreAccountStatus,                         'generated/azure_mgmt_datalake_store/models/data_lake_store_account_status.rb'
    autoload :DataLakeStoreAccountState,                          'generated/azure_mgmt_datalake_store/models/data_lake_store_account_state.rb'
  end
end
