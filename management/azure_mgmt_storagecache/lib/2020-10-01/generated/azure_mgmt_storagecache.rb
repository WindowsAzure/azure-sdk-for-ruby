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
require '2020-10-01/generated/azure_mgmt_storagecache/module_definition'
require 'ms_rest_azure'

module Azure::StorageCache::Mgmt::V2020_10_01
  autoload :Operations,                                         '2020-10-01/generated/azure_mgmt_storagecache/operations.rb'
  autoload :Skus,                                               '2020-10-01/generated/azure_mgmt_storagecache/skus.rb'
  autoload :UsageModels,                                        '2020-10-01/generated/azure_mgmt_storagecache/usage_models.rb'
  autoload :AscOperations,                                      '2020-10-01/generated/azure_mgmt_storagecache/asc_operations.rb'
  autoload :Caches,                                             '2020-10-01/generated/azure_mgmt_storagecache/caches.rb'
  autoload :StorageTargets,                                     '2020-10-01/generated/azure_mgmt_storagecache/storage_targets.rb'
  autoload :StorageCacheManagementClient,                       '2020-10-01/generated/azure_mgmt_storagecache/storage_cache_management_client.rb'

  module Models
    autoload :CacheUsernameDownloadSettingsCredentials,           '2020-10-01/generated/azure_mgmt_storagecache/models/cache_username_download_settings_credentials.rb'
    autoload :CacheUsernameDownloadSettings,                      '2020-10-01/generated/azure_mgmt_storagecache/models/cache_username_download_settings.rb'
    autoload :MetricDimension,                                    '2020-10-01/generated/azure_mgmt_storagecache/models/metric_dimension.rb'
    autoload :CacheDirectorySettings,                             '2020-10-01/generated/azure_mgmt_storagecache/models/cache_directory_settings.rb'
    autoload :ApiOperationPropertiesServiceSpecification,         '2020-10-01/generated/azure_mgmt_storagecache/models/api_operation_properties_service_specification.rb'
    autoload :CacheSku,                                           '2020-10-01/generated/azure_mgmt_storagecache/models/cache_sku.rb'
    autoload :ApiOperationListResult,                             '2020-10-01/generated/azure_mgmt_storagecache/models/api_operation_list_result.rb'
    autoload :Cache,                                              '2020-10-01/generated/azure_mgmt_storagecache/models/cache.rb'
    autoload :CachesListResult,                                   '2020-10-01/generated/azure_mgmt_storagecache/models/caches_list_result.rb'
    autoload :AscOperation,                                       '2020-10-01/generated/azure_mgmt_storagecache/models/asc_operation.rb'
    autoload :NamespaceJunction,                                  '2020-10-01/generated/azure_mgmt_storagecache/models/namespace_junction.rb'
    autoload :SystemData,                                         '2020-10-01/generated/azure_mgmt_storagecache/models/system_data.rb'
    autoload :Nfs3Target,                                         '2020-10-01/generated/azure_mgmt_storagecache/models/nfs3target.rb'
    autoload :CacheUpgradeStatus,                                 '2020-10-01/generated/azure_mgmt_storagecache/models/cache_upgrade_status.rb'
    autoload :ClfsTarget,                                         '2020-10-01/generated/azure_mgmt_storagecache/models/clfs_target.rb'
    autoload :KeyVaultKeyReferenceSourceVault,                    '2020-10-01/generated/azure_mgmt_storagecache/models/key_vault_key_reference_source_vault.rb'
    autoload :UnknownTarget,                                      '2020-10-01/generated/azure_mgmt_storagecache/models/unknown_target.rb'
    autoload :CacheEncryptionSettings,                            '2020-10-01/generated/azure_mgmt_storagecache/models/cache_encryption_settings.rb'
    autoload :StorageTargetProperties,                            '2020-10-01/generated/azure_mgmt_storagecache/models/storage_target_properties.rb'
    autoload :NfsAccessPolicy,                                    '2020-10-01/generated/azure_mgmt_storagecache/models/nfs_access_policy.rb'
    autoload :NfsAccessRule,                                      '2020-10-01/generated/azure_mgmt_storagecache/models/nfs_access_rule.rb'
    autoload :CacheActiveDirectorySettingsCredentials,            '2020-10-01/generated/azure_mgmt_storagecache/models/cache_active_directory_settings_credentials.rb'
    autoload :CacheSecuritySettings,                              '2020-10-01/generated/azure_mgmt_storagecache/models/cache_security_settings.rb'
    autoload :ApiOperationDisplay,                                '2020-10-01/generated/azure_mgmt_storagecache/models/api_operation_display.rb'
    autoload :UsageModelsResult,                                  '2020-10-01/generated/azure_mgmt_storagecache/models/usage_models_result.rb'
    autoload :ApiOperation,                                       '2020-10-01/generated/azure_mgmt_storagecache/models/api_operation.rb'
    autoload :StorageTargetResource,                              '2020-10-01/generated/azure_mgmt_storagecache/models/storage_target_resource.rb'
    autoload :ErrorResponse,                                      '2020-10-01/generated/azure_mgmt_storagecache/models/error_response.rb'
    autoload :UsageModel,                                         '2020-10-01/generated/azure_mgmt_storagecache/models/usage_model.rb'
    autoload :CacheHealth,                                        '2020-10-01/generated/azure_mgmt_storagecache/models/cache_health.rb'
    autoload :UsageModelDisplay,                                  '2020-10-01/generated/azure_mgmt_storagecache/models/usage_model_display.rb'
    autoload :KeyVaultKeyReference,                               '2020-10-01/generated/azure_mgmt_storagecache/models/key_vault_key_reference.rb'
    autoload :StorageTargetsResult,                               '2020-10-01/generated/azure_mgmt_storagecache/models/storage_targets_result.rb'
    autoload :MetricSpecification,                                '2020-10-01/generated/azure_mgmt_storagecache/models/metric_specification.rb'
    autoload :ResourceSkuCapabilities,                            '2020-10-01/generated/azure_mgmt_storagecache/models/resource_sku_capabilities.rb'
    autoload :CacheIdentity,                                      '2020-10-01/generated/azure_mgmt_storagecache/models/cache_identity.rb'
    autoload :ResourceSkuLocationInfo,                            '2020-10-01/generated/azure_mgmt_storagecache/models/resource_sku_location_info.rb'
    autoload :CacheActiveDirectorySettings,                       '2020-10-01/generated/azure_mgmt_storagecache/models/cache_active_directory_settings.rb'
    autoload :Restriction,                                        '2020-10-01/generated/azure_mgmt_storagecache/models/restriction.rb'
    autoload :CacheNetworkSettings,                               '2020-10-01/generated/azure_mgmt_storagecache/models/cache_network_settings.rb'
    autoload :ResourceSku,                                        '2020-10-01/generated/azure_mgmt_storagecache/models/resource_sku.rb'
    autoload :CloudErrorBody,                                     '2020-10-01/generated/azure_mgmt_storagecache/models/cloud_error_body.rb'
    autoload :ResourceSkusResult,                                 '2020-10-01/generated/azure_mgmt_storagecache/models/resource_skus_result.rb'
    autoload :StorageTarget,                                      '2020-10-01/generated/azure_mgmt_storagecache/models/storage_target.rb'
    autoload :Nfs3TargetProperties,                               '2020-10-01/generated/azure_mgmt_storagecache/models/nfs3target_properties.rb'
    autoload :ClfsTargetProperties,                               '2020-10-01/generated/azure_mgmt_storagecache/models/clfs_target_properties.rb'
    autoload :UnknownTargetProperties,                            '2020-10-01/generated/azure_mgmt_storagecache/models/unknown_target_properties.rb'
    autoload :MetricAggregationType,                              '2020-10-01/generated/azure_mgmt_storagecache/models/metric_aggregation_type.rb'
    autoload :CacheIdentityType,                                  '2020-10-01/generated/azure_mgmt_storagecache/models/cache_identity_type.rb'
    autoload :CreatedByType,                                      '2020-10-01/generated/azure_mgmt_storagecache/models/created_by_type.rb'
    autoload :HealthStateType,                                    '2020-10-01/generated/azure_mgmt_storagecache/models/health_state_type.rb'
    autoload :ProvisioningStateType,                              '2020-10-01/generated/azure_mgmt_storagecache/models/provisioning_state_type.rb'
    autoload :FirmwareStatusType,                                 '2020-10-01/generated/azure_mgmt_storagecache/models/firmware_status_type.rb'
    autoload :NfsAccessRuleScope,                                 '2020-10-01/generated/azure_mgmt_storagecache/models/nfs_access_rule_scope.rb'
    autoload :NfsAccessRuleAccess,                                '2020-10-01/generated/azure_mgmt_storagecache/models/nfs_access_rule_access.rb'
    autoload :DomainJoinedType,                                   '2020-10-01/generated/azure_mgmt_storagecache/models/domain_joined_type.rb'
    autoload :UsernameSource,                                     '2020-10-01/generated/azure_mgmt_storagecache/models/username_source.rb'
    autoload :UsernameDownloadedType,                             '2020-10-01/generated/azure_mgmt_storagecache/models/username_downloaded_type.rb'
    autoload :ReasonCode,                                         '2020-10-01/generated/azure_mgmt_storagecache/models/reason_code.rb'
  end
end
