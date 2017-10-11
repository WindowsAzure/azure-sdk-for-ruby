# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
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
require 'generated/azure_mgmt_datalake_analytics/module_definition'
require 'ms_rest_azure'

module Azure::ARM::DataLakeAnalytics
  autoload :ComputePolicies,                                    'generated/azure_mgmt_datalake_analytics/compute_policies.rb'
  autoload :FirewallRules,                                      'generated/azure_mgmt_datalake_analytics/firewall_rules.rb'
  autoload :StorageAccounts,                                    'generated/azure_mgmt_datalake_analytics/storage_accounts.rb'
  autoload :DataLakeStoreAccounts,                              'generated/azure_mgmt_datalake_analytics/data_lake_store_accounts.rb'
  autoload :Account,                                            'generated/azure_mgmt_datalake_analytics/account.rb'
  autoload :Locations,                                          'generated/azure_mgmt_datalake_analytics/locations.rb'
  autoload :Operations,                                         'generated/azure_mgmt_datalake_analytics/operations.rb'
  autoload :DataLakeAnalyticsAccountManagementClient,           'generated/azure_mgmt_datalake_analytics/data_lake_analytics_account_management_client.rb'

  module Models
    autoload :DataLakeAnalyticsAccountUpdateParameters,           'generated/azure_mgmt_datalake_analytics/models/data_lake_analytics_account_update_parameters.rb'
    autoload :ComputePolicyCreateOrUpdateParameters,              'generated/azure_mgmt_datalake_analytics/models/compute_policy_create_or_update_parameters.rb'
    autoload :StorageContainer,                                   'generated/azure_mgmt_datalake_analytics/models/storage_container.rb'
    autoload :ComputePolicyListResult,                            'generated/azure_mgmt_datalake_analytics/models/compute_policy_list_result.rb'
    autoload :SasTokenInfo,                                       'generated/azure_mgmt_datalake_analytics/models/sas_token_info.rb'
    autoload :OptionalSubResource,                                'generated/azure_mgmt_datalake_analytics/models/optional_sub_resource.rb'
    autoload :DataLakeAnalyticsAccountPropertiesBasic,            'generated/azure_mgmt_datalake_analytics/models/data_lake_analytics_account_properties_basic.rb'
    autoload :DataLakeAnalyticsAccountListDataLakeStoreResult,    'generated/azure_mgmt_datalake_analytics/models/data_lake_analytics_account_list_data_lake_store_result.rb'
    autoload :Resource,                                           'generated/azure_mgmt_datalake_analytics/models/resource.rb'
    autoload :ComputePolicyAccountCreateParameters,               'generated/azure_mgmt_datalake_analytics/models/compute_policy_account_create_parameters.rb'
    autoload :OperationListResult,                                'generated/azure_mgmt_datalake_analytics/models/operation_list_result.rb'
    autoload :AddDataLakeStoreParameters,                         'generated/azure_mgmt_datalake_analytics/models/add_data_lake_store_parameters.rb'
    autoload :DataLakeAnalyticsAccountListResult,                 'generated/azure_mgmt_datalake_analytics/models/data_lake_analytics_account_list_result.rb'
    autoload :UpdateStorageAccountParameters,                     'generated/azure_mgmt_datalake_analytics/models/update_storage_account_parameters.rb'
    autoload :DataLakeAnalyticsFirewallRuleListResult,            'generated/azure_mgmt_datalake_analytics/models/data_lake_analytics_firewall_rule_list_result.rb'
    autoload :ListSasTokensResult,                                'generated/azure_mgmt_datalake_analytics/models/list_sas_tokens_result.rb'
    autoload :UpdateFirewallRuleParameters,                       'generated/azure_mgmt_datalake_analytics/models/update_firewall_rule_parameters.rb'
    autoload :SubResource,                                        'generated/azure_mgmt_datalake_analytics/models/sub_resource.rb'
    autoload :NameAvailabilityInformation,                        'generated/azure_mgmt_datalake_analytics/models/name_availability_information.rb'
    autoload :AddStorageAccountParameters,                        'generated/azure_mgmt_datalake_analytics/models/add_storage_account_parameters.rb'
    autoload :CheckNameAvailabilityParameters,                    'generated/azure_mgmt_datalake_analytics/models/check_name_availability_parameters.rb'
    autoload :DataLakeAnalyticsAccountListStorageAccountsResult,  'generated/azure_mgmt_datalake_analytics/models/data_lake_analytics_account_list_storage_accounts_result.rb'
    autoload :CapabilityInformation,                              'generated/azure_mgmt_datalake_analytics/models/capability_information.rb'
    autoload :ListStorageContainersResult,                        'generated/azure_mgmt_datalake_analytics/models/list_storage_containers_result.rb'
    autoload :OperationDisplay,                                   'generated/azure_mgmt_datalake_analytics/models/operation_display.rb'
    autoload :ComputePolicy,                                      'generated/azure_mgmt_datalake_analytics/models/compute_policy.rb'
    autoload :Operation,                                          'generated/azure_mgmt_datalake_analytics/models/operation.rb'
    autoload :StorageAccountInfo,                                 'generated/azure_mgmt_datalake_analytics/models/storage_account_info.rb'
    autoload :DataLakeStoreAccountInfo,                           'generated/azure_mgmt_datalake_analytics/models/data_lake_store_account_info.rb'
    autoload :FirewallRule,                                       'generated/azure_mgmt_datalake_analytics/models/firewall_rule.rb'
    autoload :DataLakeAnalyticsAccountBasic,                      'generated/azure_mgmt_datalake_analytics/models/data_lake_analytics_account_basic.rb'
    autoload :DataLakeAnalyticsAccount,                           'generated/azure_mgmt_datalake_analytics/models/data_lake_analytics_account.rb'
    autoload :TierType,                                           'generated/azure_mgmt_datalake_analytics/models/tier_type.rb'
    autoload :FirewallState,                                      'generated/azure_mgmt_datalake_analytics/models/firewall_state.rb'
    autoload :FirewallAllowAzureIpsState,                         'generated/azure_mgmt_datalake_analytics/models/firewall_allow_azure_ips_state.rb'
    autoload :AADObjectType,                                      'generated/azure_mgmt_datalake_analytics/models/aadobject_type.rb'
    autoload :DataLakeAnalyticsAccountStatus,                     'generated/azure_mgmt_datalake_analytics/models/data_lake_analytics_account_status.rb'
    autoload :DataLakeAnalyticsAccountState,                      'generated/azure_mgmt_datalake_analytics/models/data_lake_analytics_account_state.rb'
    autoload :SubscriptionState,                                  'generated/azure_mgmt_datalake_analytics/models/subscription_state.rb'
    autoload :OperationOrigin,                                    'generated/azure_mgmt_datalake_analytics/models/operation_origin.rb'
  end
end
