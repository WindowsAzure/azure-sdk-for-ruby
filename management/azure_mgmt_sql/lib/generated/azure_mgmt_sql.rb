# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
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
require 'generated/azure_mgmt_sql/module_definition'
require 'ms_rest_azure'

module Azure::ARM::SQL
  autoload :Capabilities,                                       'generated/azure_mgmt_sql/capabilities.rb'
  autoload :FirewallRules,                                      'generated/azure_mgmt_sql/firewall_rules.rb'
  autoload :Databases,                                          'generated/azure_mgmt_sql/databases.rb'
  autoload :Servers,                                            'generated/azure_mgmt_sql/servers.rb'
  autoload :ElasticPools,                                       'generated/azure_mgmt_sql/elastic_pools.rb'
  autoload :RecommendedElasticPools,                            'generated/azure_mgmt_sql/recommended_elastic_pools.rb'
  autoload :Operations,                                         'generated/azure_mgmt_sql/operations.rb'
  autoload :FailoverGroups,                                     'generated/azure_mgmt_sql/failover_groups.rb'
  autoload :VnetFirewallRules,                                  'generated/azure_mgmt_sql/vnet_firewall_rules.rb'
  autoload :SqlManagementClient,                                'generated/azure_mgmt_sql/sql_management_client.rb'

  module Models
    autoload :OperationListResult,                                'generated/azure_mgmt_sql/models/operation_list_result.rb'
    autoload :MaxSizeCapability,                                  'generated/azure_mgmt_sql/models/max_size_capability.rb'
    autoload :TransparentDataEncryptionActivityListResult,        'generated/azure_mgmt_sql/models/transparent_data_encryption_activity_list_result.rb'
    autoload :EditionCapability,                                  'generated/azure_mgmt_sql/models/edition_capability.rb'
    autoload :Operation,                                          'generated/azure_mgmt_sql/models/operation.rb'
    autoload :LocationCapabilities,                               'generated/azure_mgmt_sql/models/location_capabilities.rb'
    autoload :RecommendedElasticPoolListResult,                   'generated/azure_mgmt_sql/models/recommended_elastic_pool_list_result.rb'
    autoload :OperationImpact,                                    'generated/azure_mgmt_sql/models/operation_impact.rb'
    autoload :ServiceObjectiveCapability,                         'generated/azure_mgmt_sql/models/service_objective_capability.rb'
    autoload :ServerVersionCapability,                            'generated/azure_mgmt_sql/models/server_version_capability.rb'
    autoload :FailoverGroupReadWriteEndpoint,                     'generated/azure_mgmt_sql/models/failover_group_read_write_endpoint.rb'
    autoload :SubResource,                                        'generated/azure_mgmt_sql/models/sub_resource.rb'
    autoload :ServiceTierAdvisorListResult,                       'generated/azure_mgmt_sql/models/service_tier_advisor_list_result.rb'
    autoload :RestorePointListResult,                             'generated/azure_mgmt_sql/models/restore_point_list_result.rb'
    autoload :ExportRequest,                                      'generated/azure_mgmt_sql/models/export_request.rb'
    autoload :RecommendedElasticPoolListMetricsResult,            'generated/azure_mgmt_sql/models/recommended_elastic_pool_list_metrics_result.rb'
    autoload :ReplicationLinkListResult,                          'generated/azure_mgmt_sql/models/replication_link_list_result.rb'
    autoload :OperationDisplay,                                   'generated/azure_mgmt_sql/models/operation_display.rb'
    autoload :SloUsageMetric,                                     'generated/azure_mgmt_sql/models/slo_usage_metric.rb'
    autoload :ElasticPoolListResult,                              'generated/azure_mgmt_sql/models/elastic_pool_list_result.rb'
    autoload :FailoverGroupReadOnlyEndpoint,                      'generated/azure_mgmt_sql/models/failover_group_read_only_endpoint.rb'
    autoload :ServiceObjectiveListResult,                         'generated/azure_mgmt_sql/models/service_objective_list_result.rb'
    autoload :ElasticPoolActivityListResult,                      'generated/azure_mgmt_sql/models/elastic_pool_activity_list_result.rb'
    autoload :ServerMetricListResult,                             'generated/azure_mgmt_sql/models/server_metric_list_result.rb'
    autoload :VnetFirewallRuleListResult,                         'generated/azure_mgmt_sql/models/vnet_firewall_rule_list_result.rb'
    autoload :RecommendedElasticPoolMetric,                       'generated/azure_mgmt_sql/models/recommended_elastic_pool_metric.rb'
    autoload :ElasticPoolDatabaseActivityListResult,              'generated/azure_mgmt_sql/models/elastic_pool_database_activity_list_result.rb'
    autoload :FirewallRuleListResult,                             'generated/azure_mgmt_sql/models/firewall_rule_list_result.rb'
    autoload :FailoverGroupListResult,                            'generated/azure_mgmt_sql/models/failover_group_list_result.rb'
    autoload :ServerMetric,                                       'generated/azure_mgmt_sql/models/server_metric.rb'
    autoload :ServerListResult,                                   'generated/azure_mgmt_sql/models/server_list_result.rb'
    autoload :ImportExtensionRequest,                             'generated/azure_mgmt_sql/models/import_extension_request.rb'
    autoload :DatabaseListResult,                                 'generated/azure_mgmt_sql/models/database_list_result.rb'
    autoload :DatabaseMetricListResult,                           'generated/azure_mgmt_sql/models/database_metric_list_result.rb'
    autoload :PartnerInfo,                                        'generated/azure_mgmt_sql/models/partner_info.rb'
    autoload :FirewallRule,                                       'generated/azure_mgmt_sql/models/firewall_rule.rb'
    autoload :TrackedResource,                                    'generated/azure_mgmt_sql/models/tracked_resource.rb'
    autoload :ProxyResource,                                      'generated/azure_mgmt_sql/models/proxy_resource.rb'
    autoload :ImportExportResponse,                               'generated/azure_mgmt_sql/models/import_export_response.rb'
    autoload :ImportRequest,                                      'generated/azure_mgmt_sql/models/import_request.rb'
    autoload :ReplicationLink,                                    'generated/azure_mgmt_sql/models/replication_link.rb'
    autoload :ServiceTierAdvisor,                                 'generated/azure_mgmt_sql/models/service_tier_advisor.rb'
    autoload :TransparentDataEncryption,                          'generated/azure_mgmt_sql/models/transparent_data_encryption.rb'
    autoload :RecommendedIndex,                                   'generated/azure_mgmt_sql/models/recommended_index.rb'
    autoload :Database,                                           'generated/azure_mgmt_sql/models/database.rb'
    autoload :RecommendedElasticPool,                             'generated/azure_mgmt_sql/models/recommended_elastic_pool.rb'
    autoload :ElasticPool,                                        'generated/azure_mgmt_sql/models/elastic_pool.rb'
    autoload :ElasticPoolActivity,                                'generated/azure_mgmt_sql/models/elastic_pool_activity.rb'
    autoload :ElasticPoolDatabaseActivity,                        'generated/azure_mgmt_sql/models/elastic_pool_database_activity.rb'
    autoload :Server,                                             'generated/azure_mgmt_sql/models/server.rb'
    autoload :RestorePoint,                                       'generated/azure_mgmt_sql/models/restore_point.rb'
    autoload :DatabaseMetric,                                     'generated/azure_mgmt_sql/models/database_metric.rb'
    autoload :ServiceObjective,                                   'generated/azure_mgmt_sql/models/service_objective.rb'
    autoload :TransparentDataEncryptionActivity,                  'generated/azure_mgmt_sql/models/transparent_data_encryption_activity.rb'
    autoload :DatabaseSecurityAlertPolicy,                        'generated/azure_mgmt_sql/models/database_security_alert_policy.rb'
    autoload :DatabaseBlobAuditingPolicy,                         'generated/azure_mgmt_sql/models/database_blob_auditing_policy.rb'
    autoload :FailoverGroup,                                      'generated/azure_mgmt_sql/models/failover_group.rb'
    autoload :VnetFirewallRule,                                   'generated/azure_mgmt_sql/models/vnet_firewall_rule.rb'
    autoload :CapabilityStatus,                                   'generated/azure_mgmt_sql/models/capability_status.rb'
    autoload :MaxSizeUnits,                                       'generated/azure_mgmt_sql/models/max_size_units.rb'
    autoload :PerformanceLevelUnit,                               'generated/azure_mgmt_sql/models/performance_level_unit.rb'
    autoload :DatabaseEdition,                                    'generated/azure_mgmt_sql/models/database_edition.rb'
    autoload :ServiceObjectiveName,                               'generated/azure_mgmt_sql/models/service_objective_name.rb'
    autoload :StorageKeyType,                                     'generated/azure_mgmt_sql/models/storage_key_type.rb'
    autoload :AuthenticationType,                                 'generated/azure_mgmt_sql/models/authentication_type.rb'
    autoload :ReplicationRole,                                    'generated/azure_mgmt_sql/models/replication_role.rb'
    autoload :ReplicationState,                                   'generated/azure_mgmt_sql/models/replication_state.rb'
    autoload :ElasticPoolEdition,                                 'generated/azure_mgmt_sql/models/elastic_pool_edition.rb'
    autoload :CreateMode,                                         'generated/azure_mgmt_sql/models/create_mode.rb'
    autoload :TransparentDataEncryptionStatus,                    'generated/azure_mgmt_sql/models/transparent_data_encryption_status.rb'
    autoload :RecommendedIndexAction,                             'generated/azure_mgmt_sql/models/recommended_index_action.rb'
    autoload :RecommendedIndexState,                              'generated/azure_mgmt_sql/models/recommended_index_state.rb'
    autoload :RecommendedIndexType,                               'generated/azure_mgmt_sql/models/recommended_index_type.rb'
    autoload :ReadScale,                                          'generated/azure_mgmt_sql/models/read_scale.rb'
    autoload :SampleName,                                         'generated/azure_mgmt_sql/models/sample_name.rb'
    autoload :ElasticPoolState,                                   'generated/azure_mgmt_sql/models/elastic_pool_state.rb'
    autoload :ServerVersion,                                      'generated/azure_mgmt_sql/models/server_version.rb'
    autoload :ServerState,                                        'generated/azure_mgmt_sql/models/server_state.rb'
    autoload :RestorePointTypes,                                  'generated/azure_mgmt_sql/models/restore_point_types.rb'
    autoload :TransparentDataEncryptionActivityStatus,            'generated/azure_mgmt_sql/models/transparent_data_encryption_activity_status.rb'
    autoload :SecurityAlertPolicyState,                           'generated/azure_mgmt_sql/models/security_alert_policy_state.rb'
    autoload :SecurityAlertPolicyEmailAccountAdmins,              'generated/azure_mgmt_sql/models/security_alert_policy_email_account_admins.rb'
    autoload :SecurityAlertPolicyUseServerDefault,                'generated/azure_mgmt_sql/models/security_alert_policy_use_server_default.rb'
    autoload :BlobAuditingPolicyState,                            'generated/azure_mgmt_sql/models/blob_auditing_policy_state.rb'
    autoload :ReadWriteEndpointFailoverPolicy,                    'generated/azure_mgmt_sql/models/read_write_endpoint_failover_policy.rb'
    autoload :ReadOnlyEndpointFailoverPolicy,                     'generated/azure_mgmt_sql/models/read_only_endpoint_failover_policy.rb'
    autoload :FailoverGroupReplicationRole,                       'generated/azure_mgmt_sql/models/failover_group_replication_role.rb'
  end
end
