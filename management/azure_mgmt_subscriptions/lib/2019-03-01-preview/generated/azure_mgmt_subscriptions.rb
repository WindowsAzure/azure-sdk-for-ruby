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
require '2019-03-01-preview/generated/azure_mgmt_subscriptions/module_definition'
require 'ms_rest_azure'

module Azure::Subscriptions::Mgmt::V2019_03_01_preview
  autoload :Subscriptions,                                      '2019-03-01-preview/generated/azure_mgmt_subscriptions/subscriptions.rb'
  autoload :SubscriptionClient,                                 '2019-03-01-preview/generated/azure_mgmt_subscriptions/subscription_client.rb'

  module Models
    autoload :SubscriptionName,                                   '2019-03-01-preview/generated/azure_mgmt_subscriptions/models/subscription_name.rb'
    autoload :OperationDisplay,                                   '2019-03-01-preview/generated/azure_mgmt_subscriptions/models/operation_display.rb'
    autoload :CanceledSubscriptionId,                             '2019-03-01-preview/generated/azure_mgmt_subscriptions/models/canceled_subscription_id.rb'
    autoload :Operation,                                          '2019-03-01-preview/generated/azure_mgmt_subscriptions/models/operation.rb'
    autoload :ErrorResponse,                                      '2019-03-01-preview/generated/azure_mgmt_subscriptions/models/error_response.rb'
    autoload :OperationListResult,                                '2019-03-01-preview/generated/azure_mgmt_subscriptions/models/operation_list_result.rb'
    autoload :RenamedSubscriptionId,                              '2019-03-01-preview/generated/azure_mgmt_subscriptions/models/renamed_subscription_id.rb'
  end
end
