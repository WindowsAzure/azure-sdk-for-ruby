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
require '2020-09-01/generated/azure_mgmt_subscriptions/module_definition'
require 'ms_rest_azure'

module Azure::Subscriptions::Mgmt::V2020_09_01
  autoload :Subscription,                                       '2020-09-01/generated/azure_mgmt_subscriptions/subscription.rb'
  autoload :Operations,                                         '2020-09-01/generated/azure_mgmt_subscriptions/operations.rb'
  autoload :AliasModel,                                         '2020-09-01/generated/azure_mgmt_subscriptions/alias_model.rb'
  autoload :SubscriptionClient,                                 '2020-09-01/generated/azure_mgmt_subscriptions/subscription_client.rb'

  module Models
    autoload :Operation,                                          '2020-09-01/generated/azure_mgmt_subscriptions/models/operation.rb'
    autoload :ErrorResponse,                                      '2020-09-01/generated/azure_mgmt_subscriptions/models/error_response.rb'
    autoload :OperationListResult,                                '2020-09-01/generated/azure_mgmt_subscriptions/models/operation_list_result.rb'
    autoload :CanceledSubscriptionId,                             '2020-09-01/generated/azure_mgmt_subscriptions/models/canceled_subscription_id.rb'
    autoload :PutAliasRequestProperties,                          '2020-09-01/generated/azure_mgmt_subscriptions/models/put_alias_request_properties.rb'
    autoload :EnabledSubscriptionId,                              '2020-09-01/generated/azure_mgmt_subscriptions/models/enabled_subscription_id.rb'
    autoload :PutAliasRequest,                                    '2020-09-01/generated/azure_mgmt_subscriptions/models/put_alias_request.rb'
    autoload :OperationDisplay,                                   '2020-09-01/generated/azure_mgmt_subscriptions/models/operation_display.rb'
    autoload :PutAliasResponseProperties,                         '2020-09-01/generated/azure_mgmt_subscriptions/models/put_alias_response_properties.rb'
    autoload :RenamedSubscriptionId,                              '2020-09-01/generated/azure_mgmt_subscriptions/models/renamed_subscription_id.rb'
    autoload :PutAliasResponse,                                   '2020-09-01/generated/azure_mgmt_subscriptions/models/put_alias_response.rb'
    autoload :ErrorResponseBody,                                  '2020-09-01/generated/azure_mgmt_subscriptions/models/error_response_body.rb'
    autoload :PutAliasListResult,                                 '2020-09-01/generated/azure_mgmt_subscriptions/models/put_alias_list_result.rb'
    autoload :SubscriptionName,                                   '2020-09-01/generated/azure_mgmt_subscriptions/models/subscription_name.rb'
    autoload :Workload,                                           '2020-09-01/generated/azure_mgmt_subscriptions/models/workload.rb'
    autoload :ProvisioningState,                                  '2020-09-01/generated/azure_mgmt_subscriptions/models/provisioning_state.rb'
  end
end
