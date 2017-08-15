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
require 'generated/azure_mgmt_service_bus/module_definition'
require 'ms_rest_azure'

module Azure::ARM::ServiceBus
  autoload :Operations,                                         'generated/azure_mgmt_service_bus/operations.rb'
  autoload :Namespaces,                                         'generated/azure_mgmt_service_bus/namespaces.rb'
  autoload :Queues,                                             'generated/azure_mgmt_service_bus/queues.rb'
  autoload :Topics,                                             'generated/azure_mgmt_service_bus/topics.rb'
  autoload :Subscriptions,                                      'generated/azure_mgmt_service_bus/subscriptions.rb'
  autoload :Rules,                                              'generated/azure_mgmt_service_bus/rules.rb'
  autoload :Regions,                                            'generated/azure_mgmt_service_bus/regions.rb'
  autoload :PremiumMessagingRegionsOperations,                  'generated/azure_mgmt_service_bus/premium_messaging_regions_operations.rb'
  autoload :EventHubs,                                          'generated/azure_mgmt_service_bus/event_hubs.rb'
  autoload :ServiceBusManagementClient,                         'generated/azure_mgmt_service_bus/service_bus_management_client.rb'

  module Models
    autoload :CheckNameAvailability,                              'generated/azure_mgmt_service_bus/models/check_name_availability.rb'
    autoload :PremiumMessagingRegionsListResult,                  'generated/azure_mgmt_service_bus/models/premium_messaging_regions_list_result.rb'
    autoload :SBQueueListResult,                                  'generated/azure_mgmt_service_bus/models/sbqueue_list_result.rb'
    autoload :PremiumMessagingRegionsProperties,                  'generated/azure_mgmt_service_bus/models/premium_messaging_regions_properties.rb'
    autoload :EventHubListResult,                                 'generated/azure_mgmt_service_bus/models/event_hub_list_result.rb'
    autoload :SBTopicListResult,                                  'generated/azure_mgmt_service_bus/models/sbtopic_list_result.rb'
    autoload :CaptureDescription,                                 'generated/azure_mgmt_service_bus/models/capture_description.rb'
    autoload :RuleListResult,                                     'generated/azure_mgmt_service_bus/models/rule_list_result.rb'
    autoload :SBAuthorizationRuleListResult,                      'generated/azure_mgmt_service_bus/models/sbauthorization_rule_list_result.rb'
    autoload :SBSubscriptionListResult,                           'generated/azure_mgmt_service_bus/models/sbsubscription_list_result.rb'
    autoload :AccessKeys,                                         'generated/azure_mgmt_service_bus/models/access_keys.rb'
    autoload :CorrelationFilter,                                  'generated/azure_mgmt_service_bus/models/correlation_filter.rb'
    autoload :MessageCountDetails,                                'generated/azure_mgmt_service_bus/models/message_count_details.rb'
    autoload :CheckNameAvailabilityResult,                        'generated/azure_mgmt_service_bus/models/check_name_availability_result.rb'
    autoload :SBSku,                                              'generated/azure_mgmt_service_bus/models/sbsku.rb'
    autoload :OperationDisplay,                                   'generated/azure_mgmt_service_bus/models/operation_display.rb'
    autoload :Destination,                                        'generated/azure_mgmt_service_bus/models/destination.rb'
    autoload :Operation,                                          'generated/azure_mgmt_service_bus/models/operation.rb'
    autoload :RegenerateAccessKeyParameters,                      'generated/azure_mgmt_service_bus/models/regenerate_access_key_parameters.rb'
    autoload :OperationListResult,                                'generated/azure_mgmt_service_bus/models/operation_list_result.rb'
    autoload :SBNamespaceListResult,                              'generated/azure_mgmt_service_bus/models/sbnamespace_list_result.rb'
    autoload :ErrorResponse,                                      'generated/azure_mgmt_service_bus/models/error_response.rb'
    autoload :Action,                                             'generated/azure_mgmt_service_bus/models/action.rb'
    autoload :AuthorizationRuleProperties,                        'generated/azure_mgmt_service_bus/models/authorization_rule_properties.rb'
    autoload :SqlFilter,                                          'generated/azure_mgmt_service_bus/models/sql_filter.rb'
    autoload :TrackedResource,                                    'generated/azure_mgmt_service_bus/models/tracked_resource.rb'
    autoload :ResourceNamespacePatch,                             'generated/azure_mgmt_service_bus/models/resource_namespace_patch.rb'
    autoload :SBNamespace,                                        'generated/azure_mgmt_service_bus/models/sbnamespace.rb'
    autoload :SBNamespaceUpdateParameters,                        'generated/azure_mgmt_service_bus/models/sbnamespace_update_parameters.rb'
    autoload :SBAuthorizationRule,                                'generated/azure_mgmt_service_bus/models/sbauthorization_rule.rb'
    autoload :SBQueue,                                            'generated/azure_mgmt_service_bus/models/sbqueue.rb'
    autoload :SBTopic,                                            'generated/azure_mgmt_service_bus/models/sbtopic.rb'
    autoload :SBSubscription,                                     'generated/azure_mgmt_service_bus/models/sbsubscription.rb'
    autoload :Rule,                                               'generated/azure_mgmt_service_bus/models/rule.rb'
    autoload :SqlRuleAction,                                      'generated/azure_mgmt_service_bus/models/sql_rule_action.rb'
    autoload :PremiumMessagingRegions,                            'generated/azure_mgmt_service_bus/models/premium_messaging_regions.rb'
    autoload :Eventhub,                                           'generated/azure_mgmt_service_bus/models/eventhub.rb'
    autoload :SkuName,                                            'generated/azure_mgmt_service_bus/models/sku_name.rb'
    autoload :SkuTier,                                            'generated/azure_mgmt_service_bus/models/sku_tier.rb'
    autoload :AccessRights,                                       'generated/azure_mgmt_service_bus/models/access_rights.rb'
    autoload :KeyType,                                            'generated/azure_mgmt_service_bus/models/key_type.rb'
    autoload :EntityStatus,                                       'generated/azure_mgmt_service_bus/models/entity_status.rb'
    autoload :UnavailableReason,                                  'generated/azure_mgmt_service_bus/models/unavailable_reason.rb'
    autoload :FilterType,                                         'generated/azure_mgmt_service_bus/models/filter_type.rb'
    autoload :EncodingCaptureDescription,                         'generated/azure_mgmt_service_bus/models/encoding_capture_description.rb'
  end
end
