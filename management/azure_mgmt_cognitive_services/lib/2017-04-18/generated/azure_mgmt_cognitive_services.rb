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
require '2017-04-18/generated/azure_mgmt_cognitive_services/module_definition'
require 'ms_rest_azure'

module Azure::CognitiveServices::Mgmt::V2017_04_18
  autoload :Accounts,                                           '2017-04-18/generated/azure_mgmt_cognitive_services/accounts.rb'
  autoload :ResourceSkus,                                       '2017-04-18/generated/azure_mgmt_cognitive_services/resource_skus.rb'
  autoload :Operations,                                         '2017-04-18/generated/azure_mgmt_cognitive_services/operations.rb'
  autoload :CheckSkuAvailability,                               '2017-04-18/generated/azure_mgmt_cognitive_services/check_sku_availability.rb'
  autoload :CognitiveServicesManagementClient,                  '2017-04-18/generated/azure_mgmt_cognitive_services/cognitive_services_management_client.rb'

  module Models
    autoload :ErrorBody,                                          '2017-04-18/generated/azure_mgmt_cognitive_services/models/error_body.rb'
    autoload :Sku,                                                '2017-04-18/generated/azure_mgmt_cognitive_services/models/sku.rb'
    autoload :Error,                                              '2017-04-18/generated/azure_mgmt_cognitive_services/models/error.rb'
    autoload :CognitiveServicesAccountUpdateParameters,           '2017-04-18/generated/azure_mgmt_cognitive_services/models/cognitive_services_account_update_parameters.rb'
    autoload :OperationDisplayInfo,                               '2017-04-18/generated/azure_mgmt_cognitive_services/models/operation_display_info.rb'
    autoload :CognitiveServicesAccountListResult,                 '2017-04-18/generated/azure_mgmt_cognitive_services/models/cognitive_services_account_list_result.rb'
    autoload :OperationEntity,                                    '2017-04-18/generated/azure_mgmt_cognitive_services/models/operation_entity.rb'
    autoload :RegenerateKeyParameters,                            '2017-04-18/generated/azure_mgmt_cognitive_services/models/regenerate_key_parameters.rb'
    autoload :OperationEntityListResult,                          '2017-04-18/generated/azure_mgmt_cognitive_services/models/operation_entity_list_result.rb'
    autoload :CognitiveServicesAccountEnumerateSkusResult,        '2017-04-18/generated/azure_mgmt_cognitive_services/models/cognitive_services_account_enumerate_skus_result.rb'
    autoload :CheckSkuAvailabilityParameter,                      '2017-04-18/generated/azure_mgmt_cognitive_services/models/check_sku_availability_parameter.rb'
    autoload :Usage,                                              '2017-04-18/generated/azure_mgmt_cognitive_services/models/usage.rb'
    autoload :CheckSkuAvailabilityResult,                         '2017-04-18/generated/azure_mgmt_cognitive_services/models/check_sku_availability_result.rb'
    autoload :CognitiveServicesAccountCreateParameters,           '2017-04-18/generated/azure_mgmt_cognitive_services/models/cognitive_services_account_create_parameters.rb'
    autoload :CheckSkuAvailabilityResultList,                     '2017-04-18/generated/azure_mgmt_cognitive_services/models/check_sku_availability_result_list.rb'
    autoload :CognitiveServicesAccountKeys,                       '2017-04-18/generated/azure_mgmt_cognitive_services/models/cognitive_services_account_keys.rb'
    autoload :ResourceSkuRestrictionInfo,                         '2017-04-18/generated/azure_mgmt_cognitive_services/models/resource_sku_restriction_info.rb'
    autoload :MetricName,                                         '2017-04-18/generated/azure_mgmt_cognitive_services/models/metric_name.rb'
    autoload :ResourceSkuRestrictions,                            '2017-04-18/generated/azure_mgmt_cognitive_services/models/resource_sku_restrictions.rb'
    autoload :CognitiveServicesAccount,                           '2017-04-18/generated/azure_mgmt_cognitive_services/models/cognitive_services_account.rb'
    autoload :ResourceSku,                                        '2017-04-18/generated/azure_mgmt_cognitive_services/models/resource_sku.rb'
    autoload :UsagesResult,                                       '2017-04-18/generated/azure_mgmt_cognitive_services/models/usages_result.rb'
    autoload :ResourceSkusResult,                                 '2017-04-18/generated/azure_mgmt_cognitive_services/models/resource_skus_result.rb'
    autoload :CognitiveServicesResourceAndSku,                    '2017-04-18/generated/azure_mgmt_cognitive_services/models/cognitive_services_resource_and_sku.rb'
    autoload :SkuTier,                                            '2017-04-18/generated/azure_mgmt_cognitive_services/models/sku_tier.rb'
    autoload :ProvisioningState,                                  '2017-04-18/generated/azure_mgmt_cognitive_services/models/provisioning_state.rb'
    autoload :KeyName,                                            '2017-04-18/generated/azure_mgmt_cognitive_services/models/key_name.rb'
    autoload :UnitType,                                           '2017-04-18/generated/azure_mgmt_cognitive_services/models/unit_type.rb'
    autoload :QuotaUsageStatus,                                   '2017-04-18/generated/azure_mgmt_cognitive_services/models/quota_usage_status.rb'
    autoload :ResourceSkuRestrictionsType,                        '2017-04-18/generated/azure_mgmt_cognitive_services/models/resource_sku_restrictions_type.rb'
    autoload :ResourceSkuRestrictionsReasonCode,                  '2017-04-18/generated/azure_mgmt_cognitive_services/models/resource_sku_restrictions_reason_code.rb'
  end
end
