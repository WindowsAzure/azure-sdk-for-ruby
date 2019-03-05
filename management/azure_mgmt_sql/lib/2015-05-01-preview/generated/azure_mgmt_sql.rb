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
require '2015-05-01-preview/generated/azure_mgmt_sql/module_definition'
require 'ms_rest_azure'

module Azure::SQL::Mgmt::V2015_05_01_preview
  autoload :DatabaseAdvisors,                                   '2015-05-01-preview/generated/azure_mgmt_sql/database_advisors.rb'
  autoload :DatabaseRecommendedActions,                         '2015-05-01-preview/generated/azure_mgmt_sql/database_recommended_actions.rb'
  autoload :ServerAdvisors,                                     '2015-05-01-preview/generated/azure_mgmt_sql/server_advisors.rb'
  autoload :DatabaseBlobAuditingPolicies,                       '2015-05-01-preview/generated/azure_mgmt_sql/database_blob_auditing_policies.rb'
  autoload :DatabaseAutomaticTuningOperations,                  '2015-05-01-preview/generated/azure_mgmt_sql/database_automatic_tuning_operations.rb'
  autoload :EncryptionProtectors,                               '2015-05-01-preview/generated/azure_mgmt_sql/encryption_protectors.rb'
  autoload :FailoverGroups,                                     '2015-05-01-preview/generated/azure_mgmt_sql/failover_groups.rb'
  autoload :FirewallRules,                                      '2015-05-01-preview/generated/azure_mgmt_sql/firewall_rules.rb'
  autoload :ManagedInstances,                                   '2015-05-01-preview/generated/azure_mgmt_sql/managed_instances.rb'
  autoload :Operations,                                         '2015-05-01-preview/generated/azure_mgmt_sql/operations.rb'
  autoload :ServerKeys,                                         '2015-05-01-preview/generated/azure_mgmt_sql/server_keys.rb'
  autoload :Servers,                                            '2015-05-01-preview/generated/azure_mgmt_sql/servers.rb'
  autoload :SyncAgents,                                         '2015-05-01-preview/generated/azure_mgmt_sql/sync_agents.rb'
  autoload :SyncGroups,                                         '2015-05-01-preview/generated/azure_mgmt_sql/sync_groups.rb'
  autoload :SyncMembers,                                        '2015-05-01-preview/generated/azure_mgmt_sql/sync_members.rb'
  autoload :SubscriptionUsages,                                 '2015-05-01-preview/generated/azure_mgmt_sql/subscription_usages.rb'
  autoload :VirtualClusters,                                    '2015-05-01-preview/generated/azure_mgmt_sql/virtual_clusters.rb'
  autoload :VirtualNetworkRules,                                '2015-05-01-preview/generated/azure_mgmt_sql/virtual_network_rules.rb'
  autoload :SqlManagementClient,                                '2015-05-01-preview/generated/azure_mgmt_sql/sql_management_client.rb'

  module Models
    autoload :OperationListResult,                                '2015-05-01-preview/generated/azure_mgmt_sql/models/operation_list_result.rb'
    autoload :RecommendedActionStateInfo,                         '2015-05-01-preview/generated/azure_mgmt_sql/models/recommended_action_state_info.rb'
    autoload :ManagedInstanceListResult,                          '2015-05-01-preview/generated/azure_mgmt_sql/models/managed_instance_list_result.rb'
    autoload :ManagedInstanceUpdate,                              '2015-05-01-preview/generated/azure_mgmt_sql/models/managed_instance_update.rb'
    autoload :RecommendedActionImpactRecord,                      '2015-05-01-preview/generated/azure_mgmt_sql/models/recommended_action_impact_record.rb'
    autoload :OperationDisplay,                                   '2015-05-01-preview/generated/azure_mgmt_sql/models/operation_display.rb'
    autoload :ResourceIdentity,                                   '2015-05-01-preview/generated/azure_mgmt_sql/models/resource_identity.rb'
    autoload :Sku,                                                '2015-05-01-preview/generated/azure_mgmt_sql/models/sku.rb'
    autoload :SyncGroupListResult,                                '2015-05-01-preview/generated/azure_mgmt_sql/models/sync_group_list_result.rb'
    autoload :SyncFullSchemaPropertiesListResult,                 '2015-05-01-preview/generated/azure_mgmt_sql/models/sync_full_schema_properties_list_result.rb'
    autoload :SyncFullSchemaTable,                                '2015-05-01-preview/generated/azure_mgmt_sql/models/sync_full_schema_table.rb'
    autoload :SubscriptionUsageListResult,                        '2015-05-01-preview/generated/azure_mgmt_sql/models/subscription_usage_list_result.rb'
    autoload :RecommendedActionErrorInfo,                         '2015-05-01-preview/generated/azure_mgmt_sql/models/recommended_action_error_info.rb'
    autoload :SyncGroupSchema,                                    '2015-05-01-preview/generated/azure_mgmt_sql/models/sync_group_schema.rb'
    autoload :RecommendedActionMetricInfo,                        '2015-05-01-preview/generated/azure_mgmt_sql/models/recommended_action_metric_info.rb'
    autoload :EncryptionProtectorListResult,                      '2015-05-01-preview/generated/azure_mgmt_sql/models/encryption_protector_list_result.rb'
    autoload :SyncFullSchemaProperties,                           '2015-05-01-preview/generated/azure_mgmt_sql/models/sync_full_schema_properties.rb'
    autoload :FailoverGroupReadOnlyEndpoint,                      '2015-05-01-preview/generated/azure_mgmt_sql/models/failover_group_read_only_endpoint.rb'
    autoload :Operation,                                          '2015-05-01-preview/generated/azure_mgmt_sql/models/operation.rb'
    autoload :SyncGroupSchemaTableColumn,                         '2015-05-01-preview/generated/azure_mgmt_sql/models/sync_group_schema_table_column.rb'
    autoload :RecommendedActionImplementationInfo,                '2015-05-01-preview/generated/azure_mgmt_sql/models/recommended_action_implementation_info.rb'
    autoload :FailoverGroupListResult,                            '2015-05-01-preview/generated/azure_mgmt_sql/models/failover_group_list_result.rb'
    autoload :SyncGroupLogListResult,                             '2015-05-01-preview/generated/azure_mgmt_sql/models/sync_group_log_list_result.rb'
    autoload :ServerKeyListResult,                                '2015-05-01-preview/generated/azure_mgmt_sql/models/server_key_list_result.rb'
    autoload :FirewallRuleListResult,                             '2015-05-01-preview/generated/azure_mgmt_sql/models/firewall_rule_list_result.rb'
    autoload :VirtualNetworkRuleListResult,                       '2015-05-01-preview/generated/azure_mgmt_sql/models/virtual_network_rule_list_result.rb'
    autoload :SyncMemberListResult,                               '2015-05-01-preview/generated/azure_mgmt_sql/models/sync_member_list_result.rb'
    autoload :ServerListResult,                                   '2015-05-01-preview/generated/azure_mgmt_sql/models/server_list_result.rb'
    autoload :AutomaticTuningOptions,                             '2015-05-01-preview/generated/azure_mgmt_sql/models/automatic_tuning_options.rb'
    autoload :ServerUpdate,                                       '2015-05-01-preview/generated/azure_mgmt_sql/models/server_update.rb'
    autoload :FailoverGroupReadWriteEndpoint,                     '2015-05-01-preview/generated/azure_mgmt_sql/models/failover_group_read_write_endpoint.rb'
    autoload :VirtualClusterUpdate,                               '2015-05-01-preview/generated/azure_mgmt_sql/models/virtual_cluster_update.rb'
    autoload :FailoverGroupUpdate,                                '2015-05-01-preview/generated/azure_mgmt_sql/models/failover_group_update.rb'
    autoload :SyncAgentListResult,                                '2015-05-01-preview/generated/azure_mgmt_sql/models/sync_agent_list_result.rb'
    autoload :SyncGroupLogProperties,                             '2015-05-01-preview/generated/azure_mgmt_sql/models/sync_group_log_properties.rb'
    autoload :SyncAgentKeyProperties,                             '2015-05-01-preview/generated/azure_mgmt_sql/models/sync_agent_key_properties.rb'
    autoload :Resource,                                           '2015-05-01-preview/generated/azure_mgmt_sql/models/resource.rb'
    autoload :VirtualClusterListResult,                           '2015-05-01-preview/generated/azure_mgmt_sql/models/virtual_cluster_list_result.rb'
    autoload :PartnerInfo,                                        '2015-05-01-preview/generated/azure_mgmt_sql/models/partner_info.rb'
    autoload :SyncAgentLinkedDatabaseListResult,                  '2015-05-01-preview/generated/azure_mgmt_sql/models/sync_agent_linked_database_list_result.rb'
    autoload :FirewallRuleList,                                   '2015-05-01-preview/generated/azure_mgmt_sql/models/firewall_rule_list.rb'
    autoload :SyncDatabaseIdProperties,                           '2015-05-01-preview/generated/azure_mgmt_sql/models/sync_database_id_properties.rb'
    autoload :ResourceWithWritableName,                           '2015-05-01-preview/generated/azure_mgmt_sql/models/resource_with_writable_name.rb'
    autoload :SyncDatabaseIdListResult,                           '2015-05-01-preview/generated/azure_mgmt_sql/models/sync_database_id_list_result.rb'
    autoload :SyncGroupSchemaTable,                               '2015-05-01-preview/generated/azure_mgmt_sql/models/sync_group_schema_table.rb'
    autoload :SyncFullSchemaTableColumn,                          '2015-05-01-preview/generated/azure_mgmt_sql/models/sync_full_schema_table_column.rb'
    autoload :ProxyResource,                                      '2015-05-01-preview/generated/azure_mgmt_sql/models/proxy_resource.rb'
    autoload :RecommendedAction,                                  '2015-05-01-preview/generated/azure_mgmt_sql/models/recommended_action.rb'
    autoload :Advisor,                                            '2015-05-01-preview/generated/azure_mgmt_sql/models/advisor.rb'
    autoload :TrackedResource,                                    '2015-05-01-preview/generated/azure_mgmt_sql/models/tracked_resource.rb'
    autoload :DatabaseBlobAuditingPolicy,                         '2015-05-01-preview/generated/azure_mgmt_sql/models/database_blob_auditing_policy.rb'
    autoload :DatabaseAutomaticTuning,                            '2015-05-01-preview/generated/azure_mgmt_sql/models/database_automatic_tuning.rb'
    autoload :EncryptionProtector,                                '2015-05-01-preview/generated/azure_mgmt_sql/models/encryption_protector.rb'
    autoload :FailoverGroup,                                      '2015-05-01-preview/generated/azure_mgmt_sql/models/failover_group.rb'
    autoload :ProxyResourceWithWritableName,                      '2015-05-01-preview/generated/azure_mgmt_sql/models/proxy_resource_with_writable_name.rb'
    autoload :FirewallRule,                                       '2015-05-01-preview/generated/azure_mgmt_sql/models/firewall_rule.rb'
    autoload :ManagedInstance,                                    '2015-05-01-preview/generated/azure_mgmt_sql/models/managed_instance.rb'
    autoload :ServerKey,                                          '2015-05-01-preview/generated/azure_mgmt_sql/models/server_key.rb'
    autoload :Server,                                             '2015-05-01-preview/generated/azure_mgmt_sql/models/server.rb'
    autoload :SyncAgent,                                          '2015-05-01-preview/generated/azure_mgmt_sql/models/sync_agent.rb'
    autoload :SyncAgentLinkedDatabase,                            '2015-05-01-preview/generated/azure_mgmt_sql/models/sync_agent_linked_database.rb'
    autoload :SyncGroup,                                          '2015-05-01-preview/generated/azure_mgmt_sql/models/sync_group.rb'
    autoload :SyncMember,                                         '2015-05-01-preview/generated/azure_mgmt_sql/models/sync_member.rb'
    autoload :SubscriptionUsage,                                  '2015-05-01-preview/generated/azure_mgmt_sql/models/subscription_usage.rb'
    autoload :VirtualCluster,                                     '2015-05-01-preview/generated/azure_mgmt_sql/models/virtual_cluster.rb'
    autoload :VirtualNetworkRule,                                 '2015-05-01-preview/generated/azure_mgmt_sql/models/virtual_network_rule.rb'
    autoload :AdvisorStatus,                                      '2015-05-01-preview/generated/azure_mgmt_sql/models/advisor_status.rb'
    autoload :AutoExecuteStatus,                                  '2015-05-01-preview/generated/azure_mgmt_sql/models/auto_execute_status.rb'
    autoload :AutoExecuteStatusInheritedFrom,                     '2015-05-01-preview/generated/azure_mgmt_sql/models/auto_execute_status_inherited_from.rb'
    autoload :RecommendedActionCurrentState,                      '2015-05-01-preview/generated/azure_mgmt_sql/models/recommended_action_current_state.rb'
    autoload :RecommendedActionInitiatedBy,                       '2015-05-01-preview/generated/azure_mgmt_sql/models/recommended_action_initiated_by.rb'
    autoload :ImplementationMethod,                               '2015-05-01-preview/generated/azure_mgmt_sql/models/implementation_method.rb'
    autoload :IsRetryable,                                        '2015-05-01-preview/generated/azure_mgmt_sql/models/is_retryable.rb'
    autoload :BlobAuditingPolicyState,                            '2015-05-01-preview/generated/azure_mgmt_sql/models/blob_auditing_policy_state.rb'
    autoload :AutomaticTuningMode,                                '2015-05-01-preview/generated/azure_mgmt_sql/models/automatic_tuning_mode.rb'
    autoload :AutomaticTuningOptionModeDesired,                   '2015-05-01-preview/generated/azure_mgmt_sql/models/automatic_tuning_option_mode_desired.rb'
    autoload :AutomaticTuningOptionModeActual,                    '2015-05-01-preview/generated/azure_mgmt_sql/models/automatic_tuning_option_mode_actual.rb'
    autoload :AutomaticTuningDisabledReason,                      '2015-05-01-preview/generated/azure_mgmt_sql/models/automatic_tuning_disabled_reason.rb'
    autoload :ServerKeyType,                                      '2015-05-01-preview/generated/azure_mgmt_sql/models/server_key_type.rb'
    autoload :ReadWriteEndpointFailoverPolicy,                    '2015-05-01-preview/generated/azure_mgmt_sql/models/read_write_endpoint_failover_policy.rb'
    autoload :ReadOnlyEndpointFailoverPolicy,                     '2015-05-01-preview/generated/azure_mgmt_sql/models/read_only_endpoint_failover_policy.rb'
    autoload :FailoverGroupReplicationRole,                       '2015-05-01-preview/generated/azure_mgmt_sql/models/failover_group_replication_role.rb'
    autoload :IdentityType,                                       '2015-05-01-preview/generated/azure_mgmt_sql/models/identity_type.rb'
    autoload :ManagedInstanceProxyOverride,                       '2015-05-01-preview/generated/azure_mgmt_sql/models/managed_instance_proxy_override.rb'
    autoload :OperationOrigin,                                    '2015-05-01-preview/generated/azure_mgmt_sql/models/operation_origin.rb'
    autoload :SyncAgentState,                                     '2015-05-01-preview/generated/azure_mgmt_sql/models/sync_agent_state.rb'
    autoload :SyncMemberDbType,                                   '2015-05-01-preview/generated/azure_mgmt_sql/models/sync_member_db_type.rb'
    autoload :SyncGroupLogType,                                   '2015-05-01-preview/generated/azure_mgmt_sql/models/sync_group_log_type.rb'
    autoload :SyncConflictResolutionPolicy,                       '2015-05-01-preview/generated/azure_mgmt_sql/models/sync_conflict_resolution_policy.rb'
    autoload :SyncGroupState,                                     '2015-05-01-preview/generated/azure_mgmt_sql/models/sync_group_state.rb'
    autoload :SyncDirection,                                      '2015-05-01-preview/generated/azure_mgmt_sql/models/sync_direction.rb'
    autoload :SyncMemberState,                                    '2015-05-01-preview/generated/azure_mgmt_sql/models/sync_member_state.rb'
    autoload :VirtualNetworkRuleState,                            '2015-05-01-preview/generated/azure_mgmt_sql/models/virtual_network_rule_state.rb'
  end
end
