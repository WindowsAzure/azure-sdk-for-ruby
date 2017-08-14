# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
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
require 'generated/azure_mgmt_recovery_services_backup/module_definition'
require 'ms_rest_azure'

module Azure::ARM::RecoveryServicesBackup
  autoload :BackupJobs,                                         'generated/azure_mgmt_recovery_services_backup/backup_jobs.rb'
  autoload :JobDetails,                                         'generated/azure_mgmt_recovery_services_backup/job_details.rb'
  autoload :BackupResourceVaultConfigs,                         'generated/azure_mgmt_recovery_services_backup/backup_resource_vault_configs.rb'
  autoload :BackupEngines,                                      'generated/azure_mgmt_recovery_services_backup/backup_engines.rb'
  autoload :ProtectionContainerRefreshOperationResults,         'generated/azure_mgmt_recovery_services_backup/protection_container_refresh_operation_results.rb'
  autoload :ProtectionContainers,                               'generated/azure_mgmt_recovery_services_backup/protection_containers.rb'
  autoload :ProtectionContainerOperationResults,                'generated/azure_mgmt_recovery_services_backup/protection_container_operation_results.rb'
  autoload :ProtectedItems,                                     'generated/azure_mgmt_recovery_services_backup/protected_items.rb'
  autoload :Backups,                                            'generated/azure_mgmt_recovery_services_backup/backups.rb'
  autoload :ProtectedItemOperationResults,                      'generated/azure_mgmt_recovery_services_backup/protected_item_operation_results.rb'
  autoload :ProtectedItemOperationStatuses,                     'generated/azure_mgmt_recovery_services_backup/protected_item_operation_statuses.rb'
  autoload :RecoveryPoints,                                     'generated/azure_mgmt_recovery_services_backup/recovery_points.rb'
  autoload :ItemLevelRecoveryConnections,                       'generated/azure_mgmt_recovery_services_backup/item_level_recovery_connections.rb'
  autoload :Restores,                                           'generated/azure_mgmt_recovery_services_backup/restores.rb'
  autoload :JobCancellations,                                   'generated/azure_mgmt_recovery_services_backup/job_cancellations.rb'
  autoload :JobOperationResults,                                'generated/azure_mgmt_recovery_services_backup/job_operation_results.rb'
  autoload :ExportJobsOperationResults,                         'generated/azure_mgmt_recovery_services_backup/export_jobs_operation_results.rb'
  autoload :Jobs,                                               'generated/azure_mgmt_recovery_services_backup/jobs.rb'
  autoload :BackupOperationResults,                             'generated/azure_mgmt_recovery_services_backup/backup_operation_results.rb'
  autoload :BackupOperationStatuses,                            'generated/azure_mgmt_recovery_services_backup/backup_operation_statuses.rb'
  autoload :BackupPolicies,                                     'generated/azure_mgmt_recovery_services_backup/backup_policies.rb'
  autoload :ProtectionPolicies,                                 'generated/azure_mgmt_recovery_services_backup/protection_policies.rb'
  autoload :ProtectionPolicyOperationResults,                   'generated/azure_mgmt_recovery_services_backup/protection_policy_operation_results.rb'
  autoload :ProtectionPolicyOperationStatuses,                  'generated/azure_mgmt_recovery_services_backup/protection_policy_operation_statuses.rb'
  autoload :BackupProtectableItems,                             'generated/azure_mgmt_recovery_services_backup/backup_protectable_items.rb'
  autoload :BackupProtectedItems,                               'generated/azure_mgmt_recovery_services_backup/backup_protected_items.rb'
  autoload :BackupProtectionContainers,                         'generated/azure_mgmt_recovery_services_backup/backup_protection_containers.rb'
  autoload :SecurityPINs,                                       'generated/azure_mgmt_recovery_services_backup/security_pins.rb'
  autoload :BackupResourceStorageConfigs,                       'generated/azure_mgmt_recovery_services_backup/backup_resource_storage_configs.rb'
  autoload :BackupUsageSummaries,                               'generated/azure_mgmt_recovery_services_backup/backup_usage_summaries.rb'
  autoload :Operations,                                         'generated/azure_mgmt_recovery_services_backup/operations.rb'
  autoload :RecoveryServicesBackupClient,                       'generated/azure_mgmt_recovery_services_backup/recovery_services_backup_client.rb'

  module Models
    autoload :OperationWorkerResponse,                            'generated/azure_mgmt_recovery_services_backup/models/operation_worker_response.rb'
    autoload :AzureIaaSVMErrorInfo,                               'generated/azure_mgmt_recovery_services_backup/models/azure_iaa_svmerror_info.rb'
    autoload :BackupResourceVaultConfig,                          'generated/azure_mgmt_recovery_services_backup/models/backup_resource_vault_config.rb'
    autoload :AzureIaaSVMJobExtendedInfo,                         'generated/azure_mgmt_recovery_services_backup/models/azure_iaa_svmjob_extended_info.rb'
    autoload :OperationStatus,                                    'generated/azure_mgmt_recovery_services_backup/models/operation_status.rb'
    autoload :DpmErrorInfo,                                       'generated/azure_mgmt_recovery_services_backup/models/dpm_error_info.rb'
    autoload :BEKDetails,                                         'generated/azure_mgmt_recovery_services_backup/models/bekdetails.rb'
    autoload :DpmJobExtendedInfo,                                 'generated/azure_mgmt_recovery_services_backup/models/dpm_job_extended_info.rb'
    autoload :BMSBackupEngineQueryObject,                         'generated/azure_mgmt_recovery_services_backup/models/bmsbackup_engine_query_object.rb'
    autoload :Job,                                                'generated/azure_mgmt_recovery_services_backup/models/job.rb'
    autoload :BMSBackupEnginesQueryObject,                        'generated/azure_mgmt_recovery_services_backup/models/bmsbackup_engines_query_object.rb'
    autoload :BackupManagementUsageList,                          'generated/azure_mgmt_recovery_services_backup/models/backup_management_usage_list.rb'
    autoload :OperationResultInfoBase,                            'generated/azure_mgmt_recovery_services_backup/models/operation_result_info_base.rb'
    autoload :BackupRequest,                                      'generated/azure_mgmt_recovery_services_backup/models/backup_request.rb'
    autoload :MabJobTaskDetails,                                  'generated/azure_mgmt_recovery_services_backup/models/mab_job_task_details.rb'
    autoload :WorkloadProtectableItem,                            'generated/azure_mgmt_recovery_services_backup/models/workload_protectable_item.rb'
    autoload :ProtectedItem,                                      'generated/azure_mgmt_recovery_services_backup/models/protected_item.rb'
    autoload :BackupResourceConfig,                               'generated/azure_mgmt_recovery_services_backup/models/backup_resource_config.rb'
    autoload :ResourceList,                                       'generated/azure_mgmt_recovery_services_backup/models/resource_list.rb'
    autoload :AzureIaaSVMJobTaskDetails,                          'generated/azure_mgmt_recovery_services_backup/models/azure_iaa_svmjob_task_details.rb'
    autoload :ProtectedItemQueryObject,                           'generated/azure_mgmt_recovery_services_backup/models/protected_item_query_object.rb'
    autoload :ProtectionContainer,                                'generated/azure_mgmt_recovery_services_backup/models/protection_container.rb'
    autoload :MabFileFolderProtectedItemExtendedInfo,             'generated/azure_mgmt_recovery_services_backup/models/mab_file_folder_protected_item_extended_info.rb'
    autoload :KeyAndSecretDetails,                                'generated/azure_mgmt_recovery_services_backup/models/key_and_secret_details.rb'
    autoload :MabContainerExtendedInfo,                           'generated/azure_mgmt_recovery_services_backup/models/mab_container_extended_info.rb'
    autoload :DpmJobTaskDetails,                                  'generated/azure_mgmt_recovery_services_backup/models/dpm_job_task_details.rb'
    autoload :RecoveryPoint,                                      'generated/azure_mgmt_recovery_services_backup/models/recovery_point.rb'
    autoload :KEKDetails,                                         'generated/azure_mgmt_recovery_services_backup/models/kekdetails.rb'
    autoload :AzureIaaSVMHealthDetails,                           'generated/azure_mgmt_recovery_services_backup/models/azure_iaa_svmhealth_details.rb'
    autoload :JobQueryObject,                                     'generated/azure_mgmt_recovery_services_backup/models/job_query_object.rb'
    autoload :MonthlyRetentionSchedule,                           'generated/azure_mgmt_recovery_services_backup/models/monthly_retention_schedule.rb'
    autoload :RecoveryPointTierInformation,                       'generated/azure_mgmt_recovery_services_backup/models/recovery_point_tier_information.rb'
    autoload :RetentionPolicy,                                    'generated/azure_mgmt_recovery_services_backup/models/retention_policy.rb'
    autoload :BMSBackupSummariesQueryObject,                      'generated/azure_mgmt_recovery_services_backup/models/bmsbackup_summaries_query_object.rb'
    autoload :WeeklyRetentionSchedule,                            'generated/azure_mgmt_recovery_services_backup/models/weekly_retention_schedule.rb'
    autoload :BMSContainerQueryObject,                            'generated/azure_mgmt_recovery_services_backup/models/bmscontainer_query_object.rb'
    autoload :InstantItemRecoveryTarget,                          'generated/azure_mgmt_recovery_services_backup/models/instant_item_recovery_target.rb'
    autoload :BMSPOQueryObject,                                   'generated/azure_mgmt_recovery_services_backup/models/bmspoquery_object.rb'
    autoload :BackupEngineExtendedInfo,                           'generated/azure_mgmt_recovery_services_backup/models/backup_engine_extended_info.rb'
    autoload :BMSRPQueryObject,                                   'generated/azure_mgmt_recovery_services_backup/models/bmsrpquery_object.rb'
    autoload :ILRRequest,                                         'generated/azure_mgmt_recovery_services_backup/models/ilrrequest.rb'
    autoload :ClientScriptForConnect,                             'generated/azure_mgmt_recovery_services_backup/models/client_script_for_connect.rb'
    autoload :NameInfo,                                           'generated/azure_mgmt_recovery_services_backup/models/name_info.rb'
    autoload :Day,                                                'generated/azure_mgmt_recovery_services_backup/models/day.rb'
    autoload :MabErrorInfo,                                       'generated/azure_mgmt_recovery_services_backup/models/mab_error_info.rb'
    autoload :DailyRetentionFormat,                               'generated/azure_mgmt_recovery_services_backup/models/daily_retention_format.rb'
    autoload :Resource,                                           'generated/azure_mgmt_recovery_services_backup/models/resource.rb'
    autoload :RetentionDuration,                                  'generated/azure_mgmt_recovery_services_backup/models/retention_duration.rb'
    autoload :ProtectionPolicy,                                   'generated/azure_mgmt_recovery_services_backup/models/protection_policy.rb'
    autoload :DailyRetentionSchedule,                             'generated/azure_mgmt_recovery_services_backup/models/daily_retention_schedule.rb'
    autoload :YearlyRetentionSchedule,                            'generated/azure_mgmt_recovery_services_backup/models/yearly_retention_schedule.rb'
    autoload :OperationStatusExtendedInfo,                        'generated/azure_mgmt_recovery_services_backup/models/operation_status_extended_info.rb'
    autoload :SchedulePolicy,                                     'generated/azure_mgmt_recovery_services_backup/models/schedule_policy.rb'
    autoload :OperationStatusError,                               'generated/azure_mgmt_recovery_services_backup/models/operation_status_error.rb'
    autoload :AzureSqlProtectedItemExtendedInfo,                  'generated/azure_mgmt_recovery_services_backup/models/azure_sql_protected_item_extended_info.rb'
    autoload :DPMProtectedItemExtendedInfo,                       'generated/azure_mgmt_recovery_services_backup/models/dpmprotected_item_extended_info.rb'
    autoload :BackupEngineBase,                                   'generated/azure_mgmt_recovery_services_backup/models/backup_engine_base.rb'
    autoload :BackupManagementUsage,                              'generated/azure_mgmt_recovery_services_backup/models/backup_management_usage.rb'
    autoload :EncryptionDetails,                                  'generated/azure_mgmt_recovery_services_backup/models/encryption_details.rb'
    autoload :DPMContainerExtendedInfo,                           'generated/azure_mgmt_recovery_services_backup/models/dpmcontainer_extended_info.rb'
    autoload :ClientDiscoveryResponse,                            'generated/azure_mgmt_recovery_services_backup/models/client_discovery_response.rb'
    autoload :AzureIaaSVMProtectedItemExtendedInfo,               'generated/azure_mgmt_recovery_services_backup/models/azure_iaa_svmprotected_item_extended_info.rb'
    autoload :ClientDiscoveryValueForSingleApi,                   'generated/azure_mgmt_recovery_services_backup/models/client_discovery_value_for_single_api.rb'
    autoload :RestoreRequest,                                     'generated/azure_mgmt_recovery_services_backup/models/restore_request.rb'
    autoload :GetProtectedItemQueryObject,                        'generated/azure_mgmt_recovery_services_backup/models/get_protected_item_query_object.rb'
    autoload :MabJobExtendedInfo,                                 'generated/azure_mgmt_recovery_services_backup/models/mab_job_extended_info.rb'
    autoload :ClientDiscoveryForProperties,                       'generated/azure_mgmt_recovery_services_backup/models/client_discovery_for_properties.rb'
    autoload :WeeklyRetentionFormat,                              'generated/azure_mgmt_recovery_services_backup/models/weekly_retention_format.rb'
    autoload :ClientDiscoveryForServiceSpecification,             'generated/azure_mgmt_recovery_services_backup/models/client_discovery_for_service_specification.rb'
    autoload :ProtectionPolicyQueryObject,                        'generated/azure_mgmt_recovery_services_backup/models/protection_policy_query_object.rb'
    autoload :ClientDiscoveryForLogSpecification,                 'generated/azure_mgmt_recovery_services_backup/models/client_discovery_for_log_specification.rb'
    autoload :TokenInformation,                                   'generated/azure_mgmt_recovery_services_backup/models/token_information.rb'
    autoload :ClientDiscoveryDisplay,                             'generated/azure_mgmt_recovery_services_backup/models/client_discovery_display.rb'
    autoload :AzureIaaSVMJob,                                     'generated/azure_mgmt_recovery_services_backup/models/azure_iaa_svmjob.rb'
    autoload :DpmJob,                                             'generated/azure_mgmt_recovery_services_backup/models/dpm_job.rb'
    autoload :JobResource,                                        'generated/azure_mgmt_recovery_services_backup/models/job_resource.rb'
    autoload :JobResourceList,                                    'generated/azure_mgmt_recovery_services_backup/models/job_resource_list.rb'
    autoload :MabJob,                                             'generated/azure_mgmt_recovery_services_backup/models/mab_job.rb'
    autoload :AzureBackupServerContainer,                         'generated/azure_mgmt_recovery_services_backup/models/azure_backup_server_container.rb'
    autoload :AzureBackupServerEngine,                            'generated/azure_mgmt_recovery_services_backup/models/azure_backup_server_engine.rb'
    autoload :AzureIaaSClassicComputeVMContainer,                 'generated/azure_mgmt_recovery_services_backup/models/azure_iaa_sclassic_compute_vmcontainer.rb'
    autoload :AzureIaaSClassicComputeVMProtectableItem,           'generated/azure_mgmt_recovery_services_backup/models/azure_iaa_sclassic_compute_vmprotectable_item.rb'
    autoload :AzureIaaSComputeVMContainer,                        'generated/azure_mgmt_recovery_services_backup/models/azure_iaa_scompute_vmcontainer.rb'
    autoload :AzureIaaSComputeVMProtectableItem,                  'generated/azure_mgmt_recovery_services_backup/models/azure_iaa_scompute_vmprotectable_item.rb'
    autoload :AzureIaaSVMProtectedItem,                           'generated/azure_mgmt_recovery_services_backup/models/azure_iaa_svmprotected_item.rb'
    autoload :AzureIaaSClassicComputeVMProtectedItem,             'generated/azure_mgmt_recovery_services_backup/models/azure_iaa_sclassic_compute_vmprotected_item.rb'
    autoload :AzureIaaSComputeVMProtectedItem,                    'generated/azure_mgmt_recovery_services_backup/models/azure_iaa_scompute_vmprotected_item.rb'
    autoload :AzureIaaSVMProtectionPolicy,                        'generated/azure_mgmt_recovery_services_backup/models/azure_iaa_svmprotection_policy.rb'
    autoload :AzureSqlContainer,                                  'generated/azure_mgmt_recovery_services_backup/models/azure_sql_container.rb'
    autoload :AzureSqlProtectedItem,                              'generated/azure_mgmt_recovery_services_backup/models/azure_sql_protected_item.rb'
    autoload :AzureSqlProtectionPolicy,                           'generated/azure_mgmt_recovery_services_backup/models/azure_sql_protection_policy.rb'
    autoload :BackupEngineBaseResource,                           'generated/azure_mgmt_recovery_services_backup/models/backup_engine_base_resource.rb'
    autoload :BackupEngineBaseResourceList,                       'generated/azure_mgmt_recovery_services_backup/models/backup_engine_base_resource_list.rb'
    autoload :BackupRequestResource,                              'generated/azure_mgmt_recovery_services_backup/models/backup_request_resource.rb'
    autoload :BackupResourceConfigResource,                       'generated/azure_mgmt_recovery_services_backup/models/backup_resource_config_resource.rb'
    autoload :BackupResourceVaultConfigResource,                  'generated/azure_mgmt_recovery_services_backup/models/backup_resource_vault_config_resource.rb'
    autoload :DpmBackupEngine,                                    'generated/azure_mgmt_recovery_services_backup/models/dpm_backup_engine.rb'
    autoload :DpmContainer,                                       'generated/azure_mgmt_recovery_services_backup/models/dpm_container.rb'
    autoload :DPMProtectedItem,                                   'generated/azure_mgmt_recovery_services_backup/models/dpmprotected_item.rb'
    autoload :ExportJobsOperationResultInfo,                      'generated/azure_mgmt_recovery_services_backup/models/export_jobs_operation_result_info.rb'
    autoload :GenericRecoveryPoint,                               'generated/azure_mgmt_recovery_services_backup/models/generic_recovery_point.rb'
    autoload :IaasVMBackupRequest,                                'generated/azure_mgmt_recovery_services_backup/models/iaas_vmbackup_request.rb'
    autoload :IaaSVMContainer,                                    'generated/azure_mgmt_recovery_services_backup/models/iaa_svmcontainer.rb'
    autoload :IaasVMILRRegistrationRequest,                       'generated/azure_mgmt_recovery_services_backup/models/iaas_vmilrregistration_request.rb'
    autoload :IaaSVMProtectableItem,                              'generated/azure_mgmt_recovery_services_backup/models/iaa_svmprotectable_item.rb'
    autoload :IaasVMRecoveryPoint,                                'generated/azure_mgmt_recovery_services_backup/models/iaas_vmrecovery_point.rb'
    autoload :IaasVMRestoreRequest,                               'generated/azure_mgmt_recovery_services_backup/models/iaas_vmrestore_request.rb'
    autoload :ILRRequestResource,                                 'generated/azure_mgmt_recovery_services_backup/models/ilrrequest_resource.rb'
    autoload :LongTermRetentionPolicy,                            'generated/azure_mgmt_recovery_services_backup/models/long_term_retention_policy.rb'
    autoload :LongTermSchedulePolicy,                             'generated/azure_mgmt_recovery_services_backup/models/long_term_schedule_policy.rb'
    autoload :MabContainer,                                       'generated/azure_mgmt_recovery_services_backup/models/mab_container.rb'
    autoload :MabFileFolderProtectedItem,                         'generated/azure_mgmt_recovery_services_backup/models/mab_file_folder_protected_item.rb'
    autoload :MabProtectionPolicy,                                'generated/azure_mgmt_recovery_services_backup/models/mab_protection_policy.rb'
    autoload :OperationResultInfo,                                'generated/azure_mgmt_recovery_services_backup/models/operation_result_info.rb'
    autoload :OperationResultInfoBaseResource,                    'generated/azure_mgmt_recovery_services_backup/models/operation_result_info_base_resource.rb'
    autoload :OperationStatusJobExtendedInfo,                     'generated/azure_mgmt_recovery_services_backup/models/operation_status_job_extended_info.rb'
    autoload :OperationStatusJobsExtendedInfo,                    'generated/azure_mgmt_recovery_services_backup/models/operation_status_jobs_extended_info.rb'
    autoload :OperationStatusProvisionILRExtendedInfo,            'generated/azure_mgmt_recovery_services_backup/models/operation_status_provision_ilrextended_info.rb'
    autoload :ProtectedItemResource,                              'generated/azure_mgmt_recovery_services_backup/models/protected_item_resource.rb'
    autoload :ProtectedItemResourceList,                          'generated/azure_mgmt_recovery_services_backup/models/protected_item_resource_list.rb'
    autoload :ProtectionContainerResource,                        'generated/azure_mgmt_recovery_services_backup/models/protection_container_resource.rb'
    autoload :ProtectionContainerResourceList,                    'generated/azure_mgmt_recovery_services_backup/models/protection_container_resource_list.rb'
    autoload :ProtectionPolicyResource,                           'generated/azure_mgmt_recovery_services_backup/models/protection_policy_resource.rb'
    autoload :ProtectionPolicyResourceList,                       'generated/azure_mgmt_recovery_services_backup/models/protection_policy_resource_list.rb'
    autoload :RecoveryPointResource,                              'generated/azure_mgmt_recovery_services_backup/models/recovery_point_resource.rb'
    autoload :RecoveryPointResourceList,                          'generated/azure_mgmt_recovery_services_backup/models/recovery_point_resource_list.rb'
    autoload :RestoreRequestResource,                             'generated/azure_mgmt_recovery_services_backup/models/restore_request_resource.rb'
    autoload :SimpleRetentionPolicy,                              'generated/azure_mgmt_recovery_services_backup/models/simple_retention_policy.rb'
    autoload :SimpleSchedulePolicy,                               'generated/azure_mgmt_recovery_services_backup/models/simple_schedule_policy.rb'
    autoload :WorkloadProtectableItemResource,                    'generated/azure_mgmt_recovery_services_backup/models/workload_protectable_item_resource.rb'
    autoload :WorkloadProtectableItemResourceList,                'generated/azure_mgmt_recovery_services_backup/models/workload_protectable_item_resource_list.rb'
    autoload :JobSupportedAction,                                 'generated/azure_mgmt_recovery_services_backup/models/job_supported_action.rb'
    autoload :BackupManagementType,                               'generated/azure_mgmt_recovery_services_backup/models/backup_management_type.rb'
    autoload :JobStatus,                                          'generated/azure_mgmt_recovery_services_backup/models/job_status.rb'
    autoload :JobOperationType,                                   'generated/azure_mgmt_recovery_services_backup/models/job_operation_type.rb'
    autoload :MabServerType,                                      'generated/azure_mgmt_recovery_services_backup/models/mab_server_type.rb'
    autoload :WorkloadType,                                       'generated/azure_mgmt_recovery_services_backup/models/workload_type.rb'
    autoload :ProtectionState,                                    'generated/azure_mgmt_recovery_services_backup/models/protection_state.rb'
    autoload :HealthStatus,                                       'generated/azure_mgmt_recovery_services_backup/models/health_status.rb'
    autoload :ProtectedItemState,                                 'generated/azure_mgmt_recovery_services_backup/models/protected_item_state.rb'
    autoload :UsagesUnit,                                         'generated/azure_mgmt_recovery_services_backup/models/usages_unit.rb'
    autoload :StorageType,                                        'generated/azure_mgmt_recovery_services_backup/models/storage_type.rb'
    autoload :StorageTypeState,                                   'generated/azure_mgmt_recovery_services_backup/models/storage_type_state.rb'
    autoload :EnhancedSecurityState,                              'generated/azure_mgmt_recovery_services_backup/models/enhanced_security_state.rb'
    autoload :Type,                                               'generated/azure_mgmt_recovery_services_backup/models/type.rb'
    autoload :ContainerType,                                      'generated/azure_mgmt_recovery_services_backup/models/container_type.rb'
    autoload :RetentionDurationType,                              'generated/azure_mgmt_recovery_services_backup/models/retention_duration_type.rb'
    autoload :RecoveryPointTierType,                              'generated/azure_mgmt_recovery_services_backup/models/recovery_point_tier_type.rb'
    autoload :RecoveryPointTierStatus,                            'generated/azure_mgmt_recovery_services_backup/models/recovery_point_tier_status.rb'
    autoload :RecoveryType,                                       'generated/azure_mgmt_recovery_services_backup/models/recovery_type.rb'
    autoload :DayOfWeek,                                          'generated/azure_mgmt_recovery_services_backup/models/day_of_week.rb'
    autoload :RetentionScheduleFormat,                            'generated/azure_mgmt_recovery_services_backup/models/retention_schedule_format.rb'
    autoload :WeekOfMonth,                                        'generated/azure_mgmt_recovery_services_backup/models/week_of_month.rb'
    autoload :MonthOfYear,                                        'generated/azure_mgmt_recovery_services_backup/models/month_of_year.rb'
    autoload :BackupItemType,                                     'generated/azure_mgmt_recovery_services_backup/models/backup_item_type.rb'
    autoload :OperationStatusValues,                              'generated/azure_mgmt_recovery_services_backup/models/operation_status_values.rb'
    autoload :HttpStatusCode,                                     'generated/azure_mgmt_recovery_services_backup/models/http_status_code.rb'
    autoload :DataSourceType,                                     'generated/azure_mgmt_recovery_services_backup/models/data_source_type.rb'
    autoload :HealthState,                                        'generated/azure_mgmt_recovery_services_backup/models/health_state.rb'
    autoload :ScheduleRunType,                                    'generated/azure_mgmt_recovery_services_backup/models/schedule_run_type.rb'
    autoload :ProtectionStatus,                                   'generated/azure_mgmt_recovery_services_backup/models/protection_status.rb'
  end
end
