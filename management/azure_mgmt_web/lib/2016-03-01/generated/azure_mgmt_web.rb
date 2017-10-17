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
require '2016-03-01/generated/azure_mgmt_web/module_definition'
require 'ms_rest_azure'

module Azure::Web::Mgmt::V2016_03_01
  autoload :Certificates,                                       '2016-03-01/generated/azure_mgmt_web/certificates.rb'
  autoload :DeletedWebApps,                                     '2016-03-01/generated/azure_mgmt_web/deleted_web_apps.rb'
  autoload :Provider,                                           '2016-03-01/generated/azure_mgmt_web/provider.rb'
  autoload :Recommendations,                                    '2016-03-01/generated/azure_mgmt_web/recommendations.rb'
  autoload :WebSiteManagementClient,                            '2016-03-01/generated/azure_mgmt_web/web_site_management_client.rb'

  module Models
    autoload :RecommendationRule,                                 '2016-03-01/generated/azure_mgmt_web/models/recommendation_rule.rb'
    autoload :HostingEnvironmentProfile,                          '2016-03-01/generated/azure_mgmt_web/models/hosting_environment_profile.rb'
    autoload :Capability,                                         '2016-03-01/generated/azure_mgmt_web/models/capability.rb'
    autoload :CertificateCollection,                              '2016-03-01/generated/azure_mgmt_web/models/certificate_collection.rb'
    autoload :CsmMoveResourceEnvelope,                            '2016-03-01/generated/azure_mgmt_web/models/csm_move_resource_envelope.rb'
    autoload :DeletedSite,                                        '2016-03-01/generated/azure_mgmt_web/models/deleted_site.rb'
    autoload :CsmOperationDisplay,                                '2016-03-01/generated/azure_mgmt_web/models/csm_operation_display.rb'
    autoload :GeoRegionCollection,                                '2016-03-01/generated/azure_mgmt_web/models/geo_region_collection.rb'
    autoload :MetricAvailability,                                 '2016-03-01/generated/azure_mgmt_web/models/metric_availability.rb'
    autoload :SkuCapacity,                                        '2016-03-01/generated/azure_mgmt_web/models/sku_capacity.rb'
    autoload :ServiceSpecification,                               '2016-03-01/generated/azure_mgmt_web/models/service_specification.rb'
    autoload :GlobalCsmSkuDescription,                            '2016-03-01/generated/azure_mgmt_web/models/global_csm_sku_description.rb'
    autoload :CsmOperationDescription,                            '2016-03-01/generated/azure_mgmt_web/models/csm_operation_description.rb'
    autoload :ValidateResponse,                                   '2016-03-01/generated/azure_mgmt_web/models/validate_response.rb'
    autoload :Recommendation,                                     '2016-03-01/generated/azure_mgmt_web/models/recommendation.rb'
    autoload :PremierAddOnOfferCollection,                        '2016-03-01/generated/azure_mgmt_web/models/premier_add_on_offer_collection.rb'
    autoload :Resource,                                           '2016-03-01/generated/azure_mgmt_web/models/resource.rb'
    autoload :ProxyOnlyResource,                                  '2016-03-01/generated/azure_mgmt_web/models/proxy_only_resource.rb'
    autoload :Dimension,                                          '2016-03-01/generated/azure_mgmt_web/models/dimension.rb'
    autoload :ResourceNameAvailability,                           '2016-03-01/generated/azure_mgmt_web/models/resource_name_availability.rb'
    autoload :CsmOperationDescriptionProperties,                  '2016-03-01/generated/azure_mgmt_web/models/csm_operation_description_properties.rb'
    autoload :ResourceNameAvailabilityRequest,                    '2016-03-01/generated/azure_mgmt_web/models/resource_name_availability_request.rb'
    autoload :ValidateRequest,                                    '2016-03-01/generated/azure_mgmt_web/models/validate_request.rb'
    autoload :DeletedWebAppCollection,                            '2016-03-01/generated/azure_mgmt_web/models/deleted_web_app_collection.rb'
    autoload :SkuInfos,                                           '2016-03-01/generated/azure_mgmt_web/models/sku_infos.rb'
    autoload :CsmOperationCollection,                             '2016-03-01/generated/azure_mgmt_web/models/csm_operation_collection.rb'
    autoload :ValidateResponseError,                              '2016-03-01/generated/azure_mgmt_web/models/validate_response_error.rb'
    autoload :MetricSpecification,                                '2016-03-01/generated/azure_mgmt_web/models/metric_specification.rb'
    autoload :SourceControlCollection,                            '2016-03-01/generated/azure_mgmt_web/models/source_control_collection.rb'
    autoload :Certificate,                                        '2016-03-01/generated/azure_mgmt_web/models/certificate.rb'
    autoload :GeoRegion,                                          '2016-03-01/generated/azure_mgmt_web/models/geo_region.rb'
    autoload :PremierAddOnOffer,                                  '2016-03-01/generated/azure_mgmt_web/models/premier_add_on_offer.rb'
    autoload :SourceControl,                                      '2016-03-01/generated/azure_mgmt_web/models/source_control.rb'
    autoload :User,                                               '2016-03-01/generated/azure_mgmt_web/models/user.rb'
    autoload :VnetParameters,                                     '2016-03-01/generated/azure_mgmt_web/models/vnet_parameters.rb'
    autoload :VnetValidationTestFailure,                          '2016-03-01/generated/azure_mgmt_web/models/vnet_validation_test_failure.rb'
    autoload :VnetValidationFailureDetails,                       '2016-03-01/generated/azure_mgmt_web/models/vnet_validation_failure_details.rb'
    autoload :KeyVaultSecretStatus,                               '2016-03-01/generated/azure_mgmt_web/models/key_vault_secret_status.rb'
    autoload :ResourceScopeType,                                  '2016-03-01/generated/azure_mgmt_web/models/resource_scope_type.rb'
    autoload :NotificationLevel,                                  '2016-03-01/generated/azure_mgmt_web/models/notification_level.rb'
    autoload :Channels,                                           '2016-03-01/generated/azure_mgmt_web/models/channels.rb'
    autoload :AppServicePlanRestrictions,                         '2016-03-01/generated/azure_mgmt_web/models/app_service_plan_restrictions.rb'
    autoload :InAvailabilityReasonType,                           '2016-03-01/generated/azure_mgmt_web/models/in_availability_reason_type.rb'
    autoload :CheckNameResourceTypes,                             '2016-03-01/generated/azure_mgmt_web/models/check_name_resource_types.rb'
    autoload :ValidateResourceTypes,                              '2016-03-01/generated/azure_mgmt_web/models/validate_resource_types.rb'
    autoload :SkuName,                                            '2016-03-01/generated/azure_mgmt_web/models/sku_name.rb'
  end
end
