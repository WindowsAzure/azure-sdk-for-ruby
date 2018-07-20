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
require '2015-04-01/generated/azure_mgmt_monitor/module_definition'
require 'ms_rest_azure'

module Azure::Monitor::Mgmt::V2015_04_01
  autoload :ActivityLogs,                                       '2015-04-01/generated/azure_mgmt_monitor/activity_logs.rb'
  autoload :AutoscaleSettings,                                  '2015-04-01/generated/azure_mgmt_monitor/autoscale_settings.rb'
  autoload :EventCategories,                                    '2015-04-01/generated/azure_mgmt_monitor/event_categories.rb'
  autoload :Operations,                                         '2015-04-01/generated/azure_mgmt_monitor/operations.rb'
  autoload :TenantActivityLogs,                                 '2015-04-01/generated/azure_mgmt_monitor/tenant_activity_logs.rb'
  autoload :MonitorManagementClient,                            '2015-04-01/generated/azure_mgmt_monitor/monitor_management_client.rb'

  module Models
    autoload :RecurrentSchedule,                                  '2015-04-01/generated/azure_mgmt_monitor/models/recurrent_schedule.rb'
    autoload :Recurrence,                                         '2015-04-01/generated/azure_mgmt_monitor/models/recurrence.rb'
    autoload :SenderAuthorization,                                '2015-04-01/generated/azure_mgmt_monitor/models/sender_authorization.rb'
    autoload :AutoscaleProfile,                                   '2015-04-01/generated/azure_mgmt_monitor/models/autoscale_profile.rb'
    autoload :EventData,                                          '2015-04-01/generated/azure_mgmt_monitor/models/event_data.rb'
    autoload :EmailNotification,                                  '2015-04-01/generated/azure_mgmt_monitor/models/email_notification.rb'
    autoload :ErrorResponse,                                      '2015-04-01/generated/azure_mgmt_monitor/models/error_response.rb'
    autoload :WebhookNotification,                                '2015-04-01/generated/azure_mgmt_monitor/models/webhook_notification.rb'
    autoload :ScaleCapacity,                                      '2015-04-01/generated/azure_mgmt_monitor/models/scale_capacity.rb'
    autoload :AutoscaleNotification,                              '2015-04-01/generated/azure_mgmt_monitor/models/autoscale_notification.rb'
    autoload :ScaleAction,                                        '2015-04-01/generated/azure_mgmt_monitor/models/scale_action.rb'
    autoload :ScaleRule,                                          '2015-04-01/generated/azure_mgmt_monitor/models/scale_rule.rb'
    autoload :LocalizableString,                                  '2015-04-01/generated/azure_mgmt_monitor/models/localizable_string.rb'
    autoload :AutoscaleSettingResourcePatch,                      '2015-04-01/generated/azure_mgmt_monitor/models/autoscale_setting_resource_patch.rb'
    autoload :EventDataCollection,                                '2015-04-01/generated/azure_mgmt_monitor/models/event_data_collection.rb'
    autoload :AutoscaleSettingResourceCollection,                 '2015-04-01/generated/azure_mgmt_monitor/models/autoscale_setting_resource_collection.rb'
    autoload :MetricTrigger,                                      '2015-04-01/generated/azure_mgmt_monitor/models/metric_trigger.rb'
    autoload :EventCategoryCollection,                            '2015-04-01/generated/azure_mgmt_monitor/models/event_category_collection.rb'
    autoload :HttpRequestInfo,                                    '2015-04-01/generated/azure_mgmt_monitor/models/http_request_info.rb'
    autoload :OperationDisplay,                                   '2015-04-01/generated/azure_mgmt_monitor/models/operation_display.rb'
    autoload :TimeWindow,                                         '2015-04-01/generated/azure_mgmt_monitor/models/time_window.rb'
    autoload :Operation,                                          '2015-04-01/generated/azure_mgmt_monitor/models/operation.rb'
    autoload :Resource,                                           '2015-04-01/generated/azure_mgmt_monitor/models/resource.rb'
    autoload :OperationListResult,                                '2015-04-01/generated/azure_mgmt_monitor/models/operation_list_result.rb'
    autoload :AutoscaleSettingResource,                           '2015-04-01/generated/azure_mgmt_monitor/models/autoscale_setting_resource.rb'
    autoload :EventLevel,                                         '2015-04-01/generated/azure_mgmt_monitor/models/event_level.rb'
    autoload :MetricStatisticType,                                '2015-04-01/generated/azure_mgmt_monitor/models/metric_statistic_type.rb'
    autoload :TimeAggregationType,                                '2015-04-01/generated/azure_mgmt_monitor/models/time_aggregation_type.rb'
    autoload :ComparisonOperationType,                            '2015-04-01/generated/azure_mgmt_monitor/models/comparison_operation_type.rb'
    autoload :ScaleDirection,                                     '2015-04-01/generated/azure_mgmt_monitor/models/scale_direction.rb'
    autoload :ScaleType,                                          '2015-04-01/generated/azure_mgmt_monitor/models/scale_type.rb'
  end
end
