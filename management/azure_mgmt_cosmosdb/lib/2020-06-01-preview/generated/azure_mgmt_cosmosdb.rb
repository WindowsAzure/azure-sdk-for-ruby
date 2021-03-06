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
require '2020-06-01-preview/generated/azure_mgmt_cosmosdb/module_definition'
require 'ms_rest_azure'

module Azure::Cosmosdb::Mgmt::V2020_06_01_preview
  autoload :DatabaseAccounts,                                   '2020-06-01-preview/generated/azure_mgmt_cosmosdb/database_accounts.rb'
  autoload :Operations,                                         '2020-06-01-preview/generated/azure_mgmt_cosmosdb/operations.rb'
  autoload :Database,                                           '2020-06-01-preview/generated/azure_mgmt_cosmosdb/database.rb'
  autoload :Collection,                                         '2020-06-01-preview/generated/azure_mgmt_cosmosdb/collection.rb'
  autoload :CollectionRegion,                                   '2020-06-01-preview/generated/azure_mgmt_cosmosdb/collection_region.rb'
  autoload :DatabaseAccountRegion,                              '2020-06-01-preview/generated/azure_mgmt_cosmosdb/database_account_region.rb'
  autoload :PercentileSourceTarget,                             '2020-06-01-preview/generated/azure_mgmt_cosmosdb/percentile_source_target.rb'
  autoload :PercentileTarget,                                   '2020-06-01-preview/generated/azure_mgmt_cosmosdb/percentile_target.rb'
  autoload :Percentile,                                         '2020-06-01-preview/generated/azure_mgmt_cosmosdb/percentile.rb'
  autoload :CollectionPartitionRegion,                          '2020-06-01-preview/generated/azure_mgmt_cosmosdb/collection_partition_region.rb'
  autoload :CollectionPartition,                                '2020-06-01-preview/generated/azure_mgmt_cosmosdb/collection_partition.rb'
  autoload :PartitionKeyRangeId,                                '2020-06-01-preview/generated/azure_mgmt_cosmosdb/partition_key_range_id.rb'
  autoload :PartitionKeyRangeIdRegion,                          '2020-06-01-preview/generated/azure_mgmt_cosmosdb/partition_key_range_id_region.rb'
  autoload :SqlResources,                                       '2020-06-01-preview/generated/azure_mgmt_cosmosdb/sql_resources.rb'
  autoload :MongoDBResources,                                   '2020-06-01-preview/generated/azure_mgmt_cosmosdb/mongo_dbresources.rb'
  autoload :TableResources,                                     '2020-06-01-preview/generated/azure_mgmt_cosmosdb/table_resources.rb'
  autoload :CassandraResources,                                 '2020-06-01-preview/generated/azure_mgmt_cosmosdb/cassandra_resources.rb'
  autoload :GremlinResources,                                   '2020-06-01-preview/generated/azure_mgmt_cosmosdb/gremlin_resources.rb'
  autoload :RestorableDatabaseAccounts,                         '2020-06-01-preview/generated/azure_mgmt_cosmosdb/restorable_database_accounts.rb'
  autoload :RestorableSqlDatabases,                             '2020-06-01-preview/generated/azure_mgmt_cosmosdb/restorable_sql_databases.rb'
  autoload :RestorableSqlContainers,                            '2020-06-01-preview/generated/azure_mgmt_cosmosdb/restorable_sql_containers.rb'
  autoload :RestorableSqlResources,                             '2020-06-01-preview/generated/azure_mgmt_cosmosdb/restorable_sql_resources.rb'
  autoload :RestorableMongodbDatabases,                         '2020-06-01-preview/generated/azure_mgmt_cosmosdb/restorable_mongodb_databases.rb'
  autoload :RestorableMongodbCollections,                       '2020-06-01-preview/generated/azure_mgmt_cosmosdb/restorable_mongodb_collections.rb'
  autoload :RestorableMongodbResources,                         '2020-06-01-preview/generated/azure_mgmt_cosmosdb/restorable_mongodb_resources.rb'
  autoload :NotebookWorkspaces,                                 '2020-06-01-preview/generated/azure_mgmt_cosmosdb/notebook_workspaces.rb'
  autoload :CosmosDBManagementClient,                           '2020-06-01-preview/generated/azure_mgmt_cosmosdb/cosmos_dbmanagement_client.rb'

  module Models
    autoload :GremlinGraphGetPropertiesResource,                  '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/gremlin_graph_get_properties_resource.rb'
    autoload :Resource,                                           '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/resource.rb'
    autoload :ConsistencyPolicy,                                  '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/consistency_policy.rb'
    autoload :RestorableLocationResource,                         '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/restorable_location_resource.rb'
    autoload :Location,                                           '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/location.rb'
    autoload :GremlinGraphListResult,                             '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/gremlin_graph_list_result.rb'
    autoload :VirtualNetworkRule,                                 '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/virtual_network_rule.rb'
    autoload :ErrorResponse,                                      '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/error_response.rb'
    autoload :PrivateLinkServiceConnectionStateProperty,          '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/private_link_service_connection_state_property.rb'
    autoload :DefaultErrorResponse,                               '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/default_error_response.rb'
    autoload :ApiProperties,                                      '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/api_properties.rb'
    autoload :FailoverPolicies,                                   '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/failover_policies.rb'
    autoload :RestoreParameters,                                  '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/restore_parameters.rb'
    autoload :RegionForOnlineOffline,                             '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/region_for_online_offline.rb'
    autoload :CorsPolicy,                                         '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/cors_policy.rb'
    autoload :ManagedServiceIdentityUserAssignedIdentitiesValue,  '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/managed_service_identity_user_assigned_identities_value.rb'
    autoload :Operation,                                          '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/operation.rb'
    autoload :GremlinDatabaseListResult,                          '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/gremlin_database_list_result.rb'
    autoload :SqlDatabaseGetPropertiesResource,                   '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/sql_database_get_properties_resource.rb'
    autoload :IpAddressOrRange,                                   '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/ip_address_or_range.rb'
    autoload :PartitionMetricListResult,                          '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/partition_metric_list_result.rb'
    autoload :Capability,                                         '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/capability.rb'
    autoload :Indexes,                                            '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/indexes.rb'
    autoload :FailoverPolicy,                                     '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/failover_policy.rb'
    autoload :ExcludedPath,                                       '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/excluded_path.rb'
    autoload :PrivateEndpointProperty,                            '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/private_endpoint_property.rb'
    autoload :SpatialSpec,                                        '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/spatial_spec.rb'
    autoload :IndexingPolicy,                                     '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/indexing_policy.rb'
    autoload :OptionsResource,                                    '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/options_resource.rb'
    autoload :UniqueKey,                                          '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/unique_key.rb'
    autoload :DatabaseRestoreResource,                            '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/database_restore_resource.rb'
    autoload :ConflictResolutionPolicy,                           '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/conflict_resolution_policy.rb'
    autoload :BackupPolicy,                                       '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/backup_policy.rb'
    autoload :Permission,                                         '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/permission.rb'
    autoload :SystemData,                                         '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/system_data.rb'
    autoload :SqlContainerListResult,                             '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/sql_container_list_result.rb'
    autoload :OperationDisplay,                                   '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/operation_display.rb'
    autoload :PercentileMetric,                                   '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/percentile_metric.rb'
    autoload :ManagedServiceIdentity,                             '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/managed_service_identity.rb'
    autoload :SqlUserDefinedFunctionGetPropertiesResource,        '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/sql_user_defined_function_get_properties_resource.rb'
    autoload :ARMResourceProperties,                              '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/armresource_properties.rb'
    autoload :SqlUserDefinedFunctionListResult,                   '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/sql_user_defined_function_list_result.rb'
    autoload :ARMProxyResource,                                   '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/armproxy_resource.rb'
    autoload :MetricListResult,                                   '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/metric_list_result.rb'
    autoload :ExtendedResourceProperties,                         '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/extended_resource_properties.rb'
    autoload :MongoDBDatabaseGetPropertiesResource,               '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/mongo_dbdatabase_get_properties_resource.rb'
    autoload :ThroughputPolicyResource,                           '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/throughput_policy_resource.rb'
    autoload :MetricValue,                                        '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/metric_value.rb'
    autoload :AutoUpgradePolicyResource,                          '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/auto_upgrade_policy_resource.rb'
    autoload :MongoIndexKeys,                                     '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/mongo_index_keys.rb'
    autoload :AutoscaleSettingsResource,                          '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/autoscale_settings_resource.rb'
    autoload :MongoIndex,                                         '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/mongo_index.rb'
    autoload :ThroughputSettingsGetPropertiesResource,            '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/throughput_settings_get_properties_resource.rb'
    autoload :MetricDefinitionsListResult,                        '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/metric_definitions_list_result.rb'
    autoload :RestorableDatabaseAccountsListResult,               '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/restorable_database_accounts_list_result.rb'
    autoload :MongoDBCollectionListResult,                        '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/mongo_dbcollection_list_result.rb'
    autoload :DatabaseAccountCreateUpdateProperties,              '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/database_account_create_update_properties.rb'
    autoload :MetricAvailability,                                 '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/metric_availability.rb'
    autoload :TableListResult,                                    '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/table_list_result.rb'
    autoload :NotebookWorkspaceConnectionInfoResult,              '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/notebook_workspace_connection_info_result.rb'
    autoload :SqlRoleDefinitionListResult,                        '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/sql_role_definition_list_result.rb'
    autoload :NotebookWorkspaceListResult,                        '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/notebook_workspace_list_result.rb'
    autoload :CassandraKeyspaceListResult,                        '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/cassandra_keyspace_list_result.rb'
    autoload :DatabaseAccountUpdateParameters,                    '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/database_account_update_parameters.rb'
    autoload :CassandraPartitionKey,                              '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/cassandra_partition_key.rb'
    autoload :DatabaseAccountListReadOnlyKeysResult,              '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/database_account_list_read_only_keys_result.rb'
    autoload :CassandraSchema,                                    '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/cassandra_schema.rb'
    autoload :RestorableMongodbResourcesListResult,               '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/restorable_mongodb_resources_list_result.rb'
    autoload :Usage,                                              '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/usage.rb'
    autoload :DatabaseAccountConnectionString,                    '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/database_account_connection_string.rb'
    autoload :CassandraTableListResult,                           '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/cassandra_table_list_result.rb'
    autoload :DatabaseAccountListConnectionStringsResult,         '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/database_account_list_connection_strings_result.rb'
    autoload :OperationListResult,                                '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/operation_list_result.rb'
    autoload :DatabaseAccountRegenerateKeyParameters,             '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/database_account_regenerate_key_parameters.rb'
    autoload :PeriodicModeProperties,                             '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/periodic_mode_properties.rb'
    autoload :ThroughputSettingsResource,                         '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/throughput_settings_resource.rb'
    autoload :IncludedPath,                                       '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/included_path.rb'
    autoload :RestorableMongodbCollectionsListResult,             '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/restorable_mongodb_collections_list_result.rb'
    autoload :ContainerPartitionKey,                              '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/container_partition_key.rb'
    autoload :SqlDatabaseResource,                                '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/sql_database_resource.rb'
    autoload :SqlContainerGetPropertiesResource,                  '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/sql_container_get_properties_resource.rb'
    autoload :AutoscaleSettings,                                  '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/autoscale_settings.rb'
    autoload :SqlStoredProcedureGetPropertiesResource,            '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/sql_stored_procedure_get_properties_resource.rb'
    autoload :CreateUpdateOptions,                                '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/create_update_options.rb'
    autoload :SqlRoleDefinitionCreateUpdateParameters,            '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/sql_role_definition_create_update_parameters.rb'
    autoload :RestorableMongodbCollectionPropertiesResource,      '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/restorable_mongodb_collection_properties_resource.rb'
    autoload :SqlTriggerListResult,                               '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/sql_trigger_list_result.rb'
    autoload :SqlContainerResource,                               '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/sql_container_resource.rb'
    autoload :MongoDBDatabaseListResult,                          '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/mongo_dbdatabase_list_result.rb'
    autoload :RestorableMongodbDatabasesListResult,               '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/restorable_mongodb_databases_list_result.rb'
    autoload :MongoDBCollectionGetPropertiesResource,             '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/mongo_dbcollection_get_properties_resource.rb'
    autoload :SqlStoredProcedureResource,                         '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/sql_stored_procedure_resource.rb'
    autoload :TableGetPropertiesResource,                         '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/table_get_properties_resource.rb'
    autoload :RestorableMongodbDatabasePropertiesResource,        '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/restorable_mongodb_database_properties_resource.rb'
    autoload :CassandraKeyspaceGetPropertiesResource,             '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/cassandra_keyspace_get_properties_resource.rb'
    autoload :SqlUserDefinedFunctionResource,                     '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/sql_user_defined_function_resource.rb'
    autoload :Column,                                             '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/column.rb'
    autoload :RestorableSqlResourcesListResult,                   '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/restorable_sql_resources_list_result.rb'
    autoload :CassandraTableGetPropertiesResource,                '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/cassandra_table_get_properties_resource.rb'
    autoload :SqlTriggerResource,                                 '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/sql_trigger_resource.rb'
    autoload :GremlinDatabaseGetPropertiesResource,               '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/gremlin_database_get_properties_resource.rb'
    autoload :RestorableSqlContainersListResult,                  '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/restorable_sql_containers_list_result.rb'
    autoload :SqlDatabaseListResult,                              '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/sql_database_list_result.rb'
    autoload :MongoDBDatabaseResource,                            '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/mongo_dbdatabase_resource.rb'
    autoload :UniqueKeyPolicy,                                    '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/unique_key_policy.rb'
    autoload :RestorableSqlContainerPropertiesResource,           '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/restorable_sql_container_properties_resource.rb'
    autoload :SqlStoredProcedureListResult,                       '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/sql_stored_procedure_list_result.rb'
    autoload :MongoDBCollectionResource,                          '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/mongo_dbcollection_resource.rb'
    autoload :Metric,                                             '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/metric.rb'
    autoload :RestorableSqlContainerPropertiesResourceContainer,  '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/restorable_sql_container_properties_resource_container.rb'
    autoload :MetricDefinition,                                   '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/metric_definition.rb'
    autoload :TableResource,                                      '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/table_resource.rb'
    autoload :UsagesResult,                                       '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/usages_result.rb'
    autoload :RestorableSqlDatabasesListResult,                   '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/restorable_sql_databases_list_result.rb'
    autoload :MetricName,                                         '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/metric_name.rb'
    autoload :CassandraKeyspaceResource,                          '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/cassandra_keyspace_resource.rb'
    autoload :CompositePath,                                      '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/composite_path.rb'
    autoload :RestorableSqlDatabasePropertiesResource,            '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/restorable_sql_database_properties_resource.rb'
    autoload :SqlTriggerGetPropertiesResource,                    '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/sql_trigger_get_properties_resource.rb'
    autoload :CassandraTableResource,                             '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/cassandra_table_resource.rb'
    autoload :PartitionUsagesResult,                              '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/partition_usages_result.rb'
    autoload :RestorableSqlDatabasePropertiesResourceDatabase,    '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/restorable_sql_database_properties_resource_database.rb'
    autoload :DatabaseAccountsListResult,                         '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/database_accounts_list_result.rb'
    autoload :GremlinDatabaseResource,                            '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/gremlin_database_resource.rb'
    autoload :MongoIndexOptions,                                  '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/mongo_index_options.rb'
    autoload :SqlRoleAssignmentListResult,                        '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/sql_role_assignment_list_result.rb'
    autoload :PercentileMetricListResult,                         '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/percentile_metric_list_result.rb'
    autoload :GremlinGraphResource,                               '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/gremlin_graph_resource.rb'
    autoload :ClusterKey,                                         '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/cluster_key.rb'
    autoload :SqlRoleAssignmentCreateUpdateParameters,            '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/sql_role_assignment_create_update_parameters.rb'
    autoload :PrivateEndpointConnection,                          '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/private_endpoint_connection.rb'
    autoload :DatabaseAccountGetResults,                          '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/database_account_get_results.rb'
    autoload :SqlDatabaseGetPropertiesOptions,                    '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/sql_database_get_properties_options.rb'
    autoload :SqlDatabaseGetResults,                              '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/sql_database_get_results.rb'
    autoload :SqlContainerGetPropertiesOptions,                   '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/sql_container_get_properties_options.rb'
    autoload :SqlContainerGetResults,                             '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/sql_container_get_results.rb'
    autoload :SqlStoredProcedureGetResults,                       '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/sql_stored_procedure_get_results.rb'
    autoload :SqlUserDefinedFunctionGetResults,                   '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/sql_user_defined_function_get_results.rb'
    autoload :SqlTriggerGetResults,                               '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/sql_trigger_get_results.rb'
    autoload :MongoDBDatabaseGetPropertiesOptions,                '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/mongo_dbdatabase_get_properties_options.rb'
    autoload :MongoDBDatabaseGetResults,                          '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/mongo_dbdatabase_get_results.rb'
    autoload :MongoDBCollectionGetPropertiesOptions,              '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/mongo_dbcollection_get_properties_options.rb'
    autoload :MongoDBCollectionGetResults,                        '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/mongo_dbcollection_get_results.rb'
    autoload :TableGetPropertiesOptions,                          '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/table_get_properties_options.rb'
    autoload :TableGetResults,                                    '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/table_get_results.rb'
    autoload :CassandraKeyspaceGetPropertiesOptions,              '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/cassandra_keyspace_get_properties_options.rb'
    autoload :CassandraKeyspaceGetResults,                        '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/cassandra_keyspace_get_results.rb'
    autoload :CassandraTableGetPropertiesOptions,                 '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/cassandra_table_get_properties_options.rb'
    autoload :CassandraTableGetResults,                           '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/cassandra_table_get_results.rb'
    autoload :GremlinDatabaseGetPropertiesOptions,                '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/gremlin_database_get_properties_options.rb'
    autoload :GremlinDatabaseGetResults,                          '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/gremlin_database_get_results.rb'
    autoload :GremlinGraphGetPropertiesOptions,                   '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/gremlin_graph_get_properties_options.rb'
    autoload :GremlinGraphGetResults,                             '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/gremlin_graph_get_results.rb'
    autoload :ThroughputSettingsGetResults,                       '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/throughput_settings_get_results.rb'
    autoload :DefaultRequestDatabaseAccountCreateUpdateProperties, '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/default_request_database_account_create_update_properties.rb'
    autoload :RestoreReqeustDatabaseAccountCreateUpdateProperties, '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/restore_reqeust_database_account_create_update_properties.rb'
    autoload :DatabaseAccountCreateUpdateParameters,              '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/database_account_create_update_parameters.rb'
    autoload :DatabaseAccountListKeysResult,                      '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/database_account_list_keys_result.rb'
    autoload :ThroughputSettingsUpdateParameters,                 '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/throughput_settings_update_parameters.rb'
    autoload :SqlDatabaseCreateUpdateParameters,                  '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/sql_database_create_update_parameters.rb'
    autoload :SqlContainerCreateUpdateParameters,                 '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/sql_container_create_update_parameters.rb'
    autoload :SqlStoredProcedureCreateUpdateParameters,           '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/sql_stored_procedure_create_update_parameters.rb'
    autoload :SqlUserDefinedFunctionCreateUpdateParameters,       '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/sql_user_defined_function_create_update_parameters.rb'
    autoload :SqlTriggerCreateUpdateParameters,                   '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/sql_trigger_create_update_parameters.rb'
    autoload :MongoDBDatabaseCreateUpdateParameters,              '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/mongo_dbdatabase_create_update_parameters.rb'
    autoload :MongoDBCollectionCreateUpdateParameters,            '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/mongo_dbcollection_create_update_parameters.rb'
    autoload :TableCreateUpdateParameters,                        '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/table_create_update_parameters.rb'
    autoload :CassandraKeyspaceCreateUpdateParameters,            '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/cassandra_keyspace_create_update_parameters.rb'
    autoload :CassandraTableCreateUpdateParameters,               '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/cassandra_table_create_update_parameters.rb'
    autoload :GremlinDatabaseCreateUpdateParameters,              '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/gremlin_database_create_update_parameters.rb'
    autoload :GremlinGraphCreateUpdateParameters,                 '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/gremlin_graph_create_update_parameters.rb'
    autoload :PartitionUsage,                                     '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/partition_usage.rb'
    autoload :PercentileMetricValue,                              '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/percentile_metric_value.rb'
    autoload :PartitionMetric,                                    '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/partition_metric.rb'
    autoload :PeriodicModeBackupPolicy,                           '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/periodic_mode_backup_policy.rb'
    autoload :ContinuousModeBackupPolicy,                         '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/continuous_mode_backup_policy.rb'
    autoload :RestorableDatabaseAccountGetResult,                 '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/restorable_database_account_get_result.rb'
    autoload :TrackedResource,                                    '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/tracked_resource.rb'
    autoload :AzureEntityResource,                                '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/azure_entity_resource.rb'
    autoload :ProxyResource,                                      '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/proxy_resource.rb'
    autoload :SqlRoleDefinitionGetResults,                        '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/sql_role_definition_get_results.rb'
    autoload :SqlRoleAssignmentGetResults,                        '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/sql_role_assignment_get_results.rb'
    autoload :RestorableSqlDatabaseGetResult,                     '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/restorable_sql_database_get_result.rb'
    autoload :RestorableSqlContainerGetResult,                    '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/restorable_sql_container_get_result.rb'
    autoload :RestorableMongodbDatabaseGetResult,                 '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/restorable_mongodb_database_get_result.rb'
    autoload :RestorableMongodbCollectionGetResult,               '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/restorable_mongodb_collection_get_result.rb'
    autoload :NotebookWorkspaceCreateUpdateParameters,            '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/notebook_workspace_create_update_parameters.rb'
    autoload :NotebookWorkspace,                                  '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/notebook_workspace.rb'
    autoload :DatabaseAccountKind,                                '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/database_account_kind.rb'
    autoload :DatabaseAccountOfferType,                           '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/database_account_offer_type.rb'
    autoload :DefaultConsistencyLevel,                            '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/default_consistency_level.rb'
    autoload :ConnectorOffer,                                     '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/connector_offer.rb'
    autoload :PublicNetworkAccess,                                '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/public_network_access.rb'
    autoload :ServerVersion,                                      '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/server_version.rb'
    autoload :CreateMode,                                         '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/create_mode.rb'
    autoload :RestoreMode,                                        '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/restore_mode.rb'
    autoload :CreatedByType,                                      '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/created_by_type.rb'
    autoload :IndexingMode,                                       '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/indexing_mode.rb'
    autoload :DataType,                                           '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/data_type.rb'
    autoload :IndexKind,                                          '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/index_kind.rb'
    autoload :CompositePathSortOrder,                             '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/composite_path_sort_order.rb'
    autoload :SpatialType,                                        '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/spatial_type.rb'
    autoload :PartitionKind,                                      '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/partition_kind.rb'
    autoload :ConflictResolutionMode,                             '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/conflict_resolution_mode.rb'
    autoload :TriggerType,                                        '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/trigger_type.rb'
    autoload :TriggerOperation,                                   '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/trigger_operation.rb'
    autoload :ResourceIdentityType,                               '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/resource_identity_type.rb'
    autoload :KeyKind,                                            '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/key_kind.rb'
    autoload :UnitType,                                           '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/unit_type.rb'
    autoload :PrimaryAggregationType,                             '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/primary_aggregation_type.rb'
    autoload :BackupStorageRedundancy,                            '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/backup_storage_redundancy.rb'
    autoload :ApiType,                                            '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/api_type.rb'
    autoload :RoleDefinitionType,                                 '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/role_definition_type.rb'
    autoload :OperationType,                                      '2020-06-01-preview/generated/azure_mgmt_cosmosdb/models/operation_type.rb'
  end
end
