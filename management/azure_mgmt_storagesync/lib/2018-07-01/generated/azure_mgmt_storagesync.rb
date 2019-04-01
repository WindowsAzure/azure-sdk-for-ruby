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
require '2018-07-01/generated/azure_mgmt_storagesync/module_definition'
require 'ms_rest_azure'

module Azure::StorageSync::Mgmt::V2018_07_01
  autoload :Operations,                                         '2018-07-01/generated/azure_mgmt_storagesync/operations.rb'
  autoload :StorageSyncServices,                                '2018-07-01/generated/azure_mgmt_storagesync/storage_sync_services.rb'
  autoload :SyncGroups,                                         '2018-07-01/generated/azure_mgmt_storagesync/sync_groups.rb'
  autoload :CloudEndpoints,                                     '2018-07-01/generated/azure_mgmt_storagesync/cloud_endpoints.rb'
  autoload :ServerEndpoints,                                    '2018-07-01/generated/azure_mgmt_storagesync/server_endpoints.rb'
  autoload :RegisteredServers,                                  '2018-07-01/generated/azure_mgmt_storagesync/registered_servers.rb'
  autoload :Workflows,                                          '2018-07-01/generated/azure_mgmt_storagesync/workflows.rb'
  autoload :StorageSyncManagementClient,                        '2018-07-01/generated/azure_mgmt_storagesync/storage_sync_management_client.rb'

  module Models
    autoload :OperationEntity,                                    '2018-07-01/generated/azure_mgmt_storagesync/models/operation_entity.rb'
    autoload :OperationEntityListResult,                          '2018-07-01/generated/azure_mgmt_storagesync/models/operation_entity_list_result.rb'
    autoload :StorageSyncApiError,                                '2018-07-01/generated/azure_mgmt_storagesync/models/storage_sync_api_error.rb'
    autoload :OperationDisplayResource,                           '2018-07-01/generated/azure_mgmt_storagesync/models/operation_display_resource.rb'
    autoload :SubscriptionState,                                  '2018-07-01/generated/azure_mgmt_storagesync/models/subscription_state.rb'
    autoload :CheckNameAvailabilityParameters,                    '2018-07-01/generated/azure_mgmt_storagesync/models/check_name_availability_parameters.rb'
    autoload :CloudEndpointArray,                                 '2018-07-01/generated/azure_mgmt_storagesync/models/cloud_endpoint_array.rb'
    autoload :OperationDisplayInfo,                               '2018-07-01/generated/azure_mgmt_storagesync/models/operation_display_info.rb'
    autoload :StorageSyncServiceCreateParameters,                 '2018-07-01/generated/azure_mgmt_storagesync/models/storage_sync_service_create_parameters.rb'
    autoload :StorageSyncErrorDetails,                            '2018-07-01/generated/azure_mgmt_storagesync/models/storage_sync_error_details.rb'
    autoload :Resource,                                           '2018-07-01/generated/azure_mgmt_storagesync/models/resource.rb'
    autoload :StorageSyncError,                                   '2018-07-01/generated/azure_mgmt_storagesync/models/storage_sync_error.rb'
    autoload :TriggerRolloverRequest,                             '2018-07-01/generated/azure_mgmt_storagesync/models/trigger_rollover_request.rb'
    autoload :WorkflowArray,                                      '2018-07-01/generated/azure_mgmt_storagesync/models/workflow_array.rb'
    autoload :ServerEndpointUpdateParameters,                     '2018-07-01/generated/azure_mgmt_storagesync/models/server_endpoint_update_parameters.rb'
    autoload :PostBackupResponse,                                 '2018-07-01/generated/azure_mgmt_storagesync/models/post_backup_response.rb'
    autoload :ServerEndpointArray,                                '2018-07-01/generated/azure_mgmt_storagesync/models/server_endpoint_array.rb'
    autoload :SyncGroupArray,                                     '2018-07-01/generated/azure_mgmt_storagesync/models/sync_group_array.rb'
    autoload :RecallActionParameters,                             '2018-07-01/generated/azure_mgmt_storagesync/models/recall_action_parameters.rb'
    autoload :CheckNameAvailabilityResult,                        '2018-07-01/generated/azure_mgmt_storagesync/models/check_name_availability_result.rb'
    autoload :StorageSyncServiceUpdateParameters,                 '2018-07-01/generated/azure_mgmt_storagesync/models/storage_sync_service_update_parameters.rb'
    autoload :RestoreFileSpec,                                    '2018-07-01/generated/azure_mgmt_storagesync/models/restore_file_spec.rb'
    autoload :ResourcesMoveInfo,                                  '2018-07-01/generated/azure_mgmt_storagesync/models/resources_move_info.rb'
    autoload :PostRestoreRequest,                                 '2018-07-01/generated/azure_mgmt_storagesync/models/post_restore_request.rb'
    autoload :RegisteredServerArray,                              '2018-07-01/generated/azure_mgmt_storagesync/models/registered_server_array.rb'
    autoload :PreRestoreRequest,                                  '2018-07-01/generated/azure_mgmt_storagesync/models/pre_restore_request.rb'
    autoload :StorageSyncServiceArray,                            '2018-07-01/generated/azure_mgmt_storagesync/models/storage_sync_service_array.rb'
    autoload :BackupRequest,                                      '2018-07-01/generated/azure_mgmt_storagesync/models/backup_request.rb'
    autoload :StorageSyncService,                                 '2018-07-01/generated/azure_mgmt_storagesync/models/storage_sync_service.rb'
    autoload :ProxyResource,                                      '2018-07-01/generated/azure_mgmt_storagesync/models/proxy_resource.rb'
    autoload :SyncGroup,                                          '2018-07-01/generated/azure_mgmt_storagesync/models/sync_group.rb'
    autoload :CloudEndpoint,                                      '2018-07-01/generated/azure_mgmt_storagesync/models/cloud_endpoint.rb'
    autoload :SyncGroupCreateParameters,                          '2018-07-01/generated/azure_mgmt_storagesync/models/sync_group_create_parameters.rb'
    autoload :CloudEndpointCreateParameters,                      '2018-07-01/generated/azure_mgmt_storagesync/models/cloud_endpoint_create_parameters.rb'
    autoload :ServerEndpointCreateParameters,                     '2018-07-01/generated/azure_mgmt_storagesync/models/server_endpoint_create_parameters.rb'
    autoload :RegisteredServerCreateParameters,                   '2018-07-01/generated/azure_mgmt_storagesync/models/registered_server_create_parameters.rb'
    autoload :ServerEndpoint,                                     '2018-07-01/generated/azure_mgmt_storagesync/models/server_endpoint.rb'
    autoload :RegisteredServer,                                   '2018-07-01/generated/azure_mgmt_storagesync/models/registered_server.rb'
    autoload :Workflow,                                           '2018-07-01/generated/azure_mgmt_storagesync/models/workflow.rb'
    autoload :TrackedResource,                                    '2018-07-01/generated/azure_mgmt_storagesync/models/tracked_resource.rb'
    autoload :AzureEntityResource,                                '2018-07-01/generated/azure_mgmt_storagesync/models/azure_entity_resource.rb'
    autoload :Reason,                                             '2018-07-01/generated/azure_mgmt_storagesync/models/reason.rb'
    autoload :NameAvailabilityReason,                             '2018-07-01/generated/azure_mgmt_storagesync/models/name_availability_reason.rb'
  end
end
