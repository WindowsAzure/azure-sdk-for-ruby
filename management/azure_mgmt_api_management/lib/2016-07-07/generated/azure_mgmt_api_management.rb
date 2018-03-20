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
require '2016-07-07/generated/azure_mgmt_api_management/module_definition'
require 'ms_rest_azure'

module Azure::ApiManagement::Mgmt::V2016_07_07
  autoload :Apis,                                               '2016-07-07/generated/azure_mgmt_api_management/apis.rb'
  autoload :ApiOperations,                                      '2016-07-07/generated/azure_mgmt_api_management/api_operations.rb'
  autoload :ApiProducts,                                        '2016-07-07/generated/azure_mgmt_api_management/api_products.rb'
  autoload :Subscriptions,                                      '2016-07-07/generated/azure_mgmt_api_management/subscriptions.rb'
  autoload :Products,                                           '2016-07-07/generated/azure_mgmt_api_management/products.rb'
  autoload :ProductApis,                                        '2016-07-07/generated/azure_mgmt_api_management/product_apis.rb'
  autoload :ProductGroups,                                      '2016-07-07/generated/azure_mgmt_api_management/product_groups.rb'
  autoload :Groups,                                             '2016-07-07/generated/azure_mgmt_api_management/groups.rb'
  autoload :GroupUsers,                                         '2016-07-07/generated/azure_mgmt_api_management/group_users.rb'
  autoload :Certificates,                                       '2016-07-07/generated/azure_mgmt_api_management/certificates.rb'
  autoload :PolicySnippets,                                     '2016-07-07/generated/azure_mgmt_api_management/policy_snippets.rb'
  autoload :ProductSubscriptions,                               '2016-07-07/generated/azure_mgmt_api_management/product_subscriptions.rb'
  autoload :Users,                                              '2016-07-07/generated/azure_mgmt_api_management/users.rb'
  autoload :UserGroups,                                         '2016-07-07/generated/azure_mgmt_api_management/user_groups.rb'
  autoload :UserSubscriptions,                                  '2016-07-07/generated/azure_mgmt_api_management/user_subscriptions.rb'
  autoload :AuthorizationServers,                               '2016-07-07/generated/azure_mgmt_api_management/authorization_servers.rb'
  autoload :Regions,                                            '2016-07-07/generated/azure_mgmt_api_management/regions.rb'
  autoload :UserIdentities,                                     '2016-07-07/generated/azure_mgmt_api_management/user_identities.rb'
  autoload :Reports,                                            '2016-07-07/generated/azure_mgmt_api_management/reports.rb'
  autoload :TenantAccess,                                       '2016-07-07/generated/azure_mgmt_api_management/tenant_access.rb'
  autoload :Loggers,                                            '2016-07-07/generated/azure_mgmt_api_management/loggers.rb'
  autoload :Property,                                           '2016-07-07/generated/azure_mgmt_api_management/property.rb'
  autoload :OpenIdConnectProviders,                             '2016-07-07/generated/azure_mgmt_api_management/open_id_connect_providers.rb'
  autoload :TenantAccessGit,                                    '2016-07-07/generated/azure_mgmt_api_management/tenant_access_git.rb'
  autoload :TenantConfiguration,                                '2016-07-07/generated/azure_mgmt_api_management/tenant_configuration.rb'
  autoload :TenantConfigurationSyncState,                       '2016-07-07/generated/azure_mgmt_api_management/tenant_configuration_sync_state.rb'
  autoload :Backends,                                           '2016-07-07/generated/azure_mgmt_api_management/backends.rb'
  autoload :IdentityProviders,                                  '2016-07-07/generated/azure_mgmt_api_management/identity_providers.rb'
  autoload :QuotaByCounterKeys,                                 '2016-07-07/generated/azure_mgmt_api_management/quota_by_counter_keys.rb'
  autoload :QuotaByPeriodKeys,                                  '2016-07-07/generated/azure_mgmt_api_management/quota_by_period_keys.rb'
  autoload :ApiManagementServices,                              '2016-07-07/generated/azure_mgmt_api_management/api_management_services.rb'
  autoload :ApiManagementClient,                                '2016-07-07/generated/azure_mgmt_api_management/api_management_client.rb'

  module Models
    autoload :LoggerResponse,                                     '2016-07-07/generated/azure_mgmt_api_management/models/logger_response.rb'
    autoload :LoggerCollection,                                   '2016-07-07/generated/azure_mgmt_api_management/models/logger_collection.rb'
    autoload :AuthenticationSettingsContract,                     '2016-07-07/generated/azure_mgmt_api_management/models/authentication_settings_contract.rb'
    autoload :LoggerCreateParameters,                             '2016-07-07/generated/azure_mgmt_api_management/models/logger_create_parameters.rb'
    autoload :ApiContract,                                        '2016-07-07/generated/azure_mgmt_api_management/models/api_contract.rb'
    autoload :LoggerUpdateParameters,                             '2016-07-07/generated/azure_mgmt_api_management/models/logger_update_parameters.rb'
    autoload :PatchParameters,                                    '2016-07-07/generated/azure_mgmt_api_management/models/patch_parameters.rb'
    autoload :ApiCollection,                                      '2016-07-07/generated/azure_mgmt_api_management/models/api_collection.rb'
    autoload :ApiExportResult,                                    '2016-07-07/generated/azure_mgmt_api_management/models/api_export_result.rb'
    autoload :RepresentationContract,                             '2016-07-07/generated/azure_mgmt_api_management/models/representation_contract.rb'
    autoload :ResultContract,                                     '2016-07-07/generated/azure_mgmt_api_management/models/result_contract.rb'
    autoload :BackendCollection,                                  '2016-07-07/generated/azure_mgmt_api_management/models/backend_collection.rb'
    autoload :OperationCollection,                                '2016-07-07/generated/azure_mgmt_api_management/models/operation_collection.rb'
    autoload :BackendContract,                                    '2016-07-07/generated/azure_mgmt_api_management/models/backend_contract.rb'
    autoload :ProductCollection,                                  '2016-07-07/generated/azure_mgmt_api_management/models/product_collection.rb'
    autoload :BackendUpdateParameters,                            '2016-07-07/generated/azure_mgmt_api_management/models/backend_update_parameters.rb'
    autoload :SubscriptionCollection,                             '2016-07-07/generated/azure_mgmt_api_management/models/subscription_collection.rb'
    autoload :IdentityProviderContract,                           '2016-07-07/generated/azure_mgmt_api_management/models/identity_provider_contract.rb'
    autoload :SubscriptionUpdateParameters,                       '2016-07-07/generated/azure_mgmt_api_management/models/subscription_update_parameters.rb'
    autoload :IdentityProviderList,                               '2016-07-07/generated/azure_mgmt_api_management/models/identity_provider_list.rb'
    autoload :GroupContract,                                      '2016-07-07/generated/azure_mgmt_api_management/models/group_contract.rb'
    autoload :IdentityProviderUpdateParameters,                   '2016-07-07/generated/azure_mgmt_api_management/models/identity_provider_update_parameters.rb'
    autoload :GroupCreateParameters,                              '2016-07-07/generated/azure_mgmt_api_management/models/group_create_parameters.rb'
    autoload :PropertyContract,                                   '2016-07-07/generated/azure_mgmt_api_management/models/property_contract.rb'
    autoload :UserIdentityContract,                               '2016-07-07/generated/azure_mgmt_api_management/models/user_identity_contract.rb'
    autoload :PropertyCollection,                                 '2016-07-07/generated/azure_mgmt_api_management/models/property_collection.rb'
    autoload :UserCollection,                                     '2016-07-07/generated/azure_mgmt_api_management/models/user_collection.rb'
    autoload :PropertyCreateParameters,                           '2016-07-07/generated/azure_mgmt_api_management/models/property_create_parameters.rb'
    autoload :CertificateCollection,                              '2016-07-07/generated/azure_mgmt_api_management/models/certificate_collection.rb'
    autoload :PropertyUpdateParameters,                           '2016-07-07/generated/azure_mgmt_api_management/models/property_update_parameters.rb'
    autoload :PolicySnippetContract,                              '2016-07-07/generated/azure_mgmt_api_management/models/policy_snippet_contract.rb'
    autoload :OpenidConnectProviderContract,                      '2016-07-07/generated/azure_mgmt_api_management/models/openid_connect_provider_contract.rb'
    autoload :UserUpdateParameters,                               '2016-07-07/generated/azure_mgmt_api_management/models/user_update_parameters.rb'
    autoload :OpenIdConnectProviderCollection,                    '2016-07-07/generated/azure_mgmt_api_management/models/open_id_connect_provider_collection.rb'
    autoload :TokenBodyParameterContract,                         '2016-07-07/generated/azure_mgmt_api_management/models/token_body_parameter_contract.rb'
    autoload :OpenidConnectProviderCreateContract,                '2016-07-07/generated/azure_mgmt_api_management/models/openid_connect_provider_create_contract.rb'
    autoload :AuthorizationServerCollection,                      '2016-07-07/generated/azure_mgmt_api_management/models/authorization_server_collection.rb'
    autoload :OpenidConnectProviderUpdateContract,                '2016-07-07/generated/azure_mgmt_api_management/models/openid_connect_provider_update_contract.rb'
    autoload :RegionContract,                                     '2016-07-07/generated/azure_mgmt_api_management/models/region_contract.rb'
    autoload :DeployConfigurationParameters,                      '2016-07-07/generated/azure_mgmt_api_management/models/deploy_configuration_parameters.rb'
    autoload :ReportRecordContract,                               '2016-07-07/generated/azure_mgmt_api_management/models/report_record_contract.rb'
    autoload :TenantLongRunningOperationResult,                   '2016-07-07/generated/azure_mgmt_api_management/models/tenant_long_running_operation_result.rb'
    autoload :AccessInformationContract,                          '2016-07-07/generated/azure_mgmt_api_management/models/access_information_contract.rb'
    autoload :ErrorFieldContract,                                 '2016-07-07/generated/azure_mgmt_api_management/models/error_field_contract.rb'
    autoload :OAuth2AuthenticationSettingsContract,               '2016-07-07/generated/azure_mgmt_api_management/models/oauth2authentication_settings_contract.rb'
    autoload :ErrorBodyContract,                                  '2016-07-07/generated/azure_mgmt_api_management/models/error_body_contract.rb'
    autoload :ParameterContract,                                  '2016-07-07/generated/azure_mgmt_api_management/models/parameter_contract.rb'
    autoload :OperationResultContract,                            '2016-07-07/generated/azure_mgmt_api_management/models/operation_result_contract.rb'
    autoload :OperationContract,                                  '2016-07-07/generated/azure_mgmt_api_management/models/operation_contract.rb'
    autoload :SaveConfigurationParameter,                         '2016-07-07/generated/azure_mgmt_api_management/models/save_configuration_parameter.rb'
    autoload :SubscriptionContract,                               '2016-07-07/generated/azure_mgmt_api_management/models/subscription_contract.rb'
    autoload :TenantConfigurationSyncStateContract,               '2016-07-07/generated/azure_mgmt_api_management/models/tenant_configuration_sync_state_contract.rb'
    autoload :ProductUpdateParameters,                            '2016-07-07/generated/azure_mgmt_api_management/models/product_update_parameters.rb'
    autoload :ErrorResponse,                                      '2016-07-07/generated/azure_mgmt_api_management/models/error_response.rb'
    autoload :GroupUpdateParameters,                              '2016-07-07/generated/azure_mgmt_api_management/models/group_update_parameters.rb'
    autoload :QuotaCounterCollection,                             '2016-07-07/generated/azure_mgmt_api_management/models/quota_counter_collection.rb'
    autoload :CertificateContract,                                '2016-07-07/generated/azure_mgmt_api_management/models/certificate_contract.rb'
    autoload :QuotaCounterValueContract,                          '2016-07-07/generated/azure_mgmt_api_management/models/quota_counter_value_contract.rb'
    autoload :UserCreateParameters,                               '2016-07-07/generated/azure_mgmt_api_management/models/user_create_parameters.rb'
    autoload :CertificateInformation,                             '2016-07-07/generated/azure_mgmt_api_management/models/certificate_information.rb'
    autoload :OAuth2AuthorizationServerContract,                  '2016-07-07/generated/azure_mgmt_api_management/models/oauth2authorization_server_contract.rb'
    autoload :HostnameConfiguration,                              '2016-07-07/generated/azure_mgmt_api_management/models/hostname_configuration.rb'
    autoload :RegionListResult,                                   '2016-07-07/generated/azure_mgmt_api_management/models/region_list_result.rb'
    autoload :VirtualNetworkConfiguration,                        '2016-07-07/generated/azure_mgmt_api_management/models/virtual_network_configuration.rb'
    autoload :AccessInformationUpdateParameters,                  '2016-07-07/generated/azure_mgmt_api_management/models/access_information_update_parameters.rb'
    autoload :AdditionalRegion,                                   '2016-07-07/generated/azure_mgmt_api_management/models/additional_region.rb'
    autoload :RequestContract,                                    '2016-07-07/generated/azure_mgmt_api_management/models/request_contract.rb'
    autoload :ApiManagementServiceManageDeploymentsParameters,    '2016-07-07/generated/azure_mgmt_api_management/models/api_management_service_manage_deployments_parameters.rb'
    autoload :SubscriptionCreateParameters,                       '2016-07-07/generated/azure_mgmt_api_management/models/subscription_create_parameters.rb'
    autoload :ApiManagementServiceBackupRestoreParameters,        '2016-07-07/generated/azure_mgmt_api_management/models/api_management_service_backup_restore_parameters.rb'
    autoload :UserContract,                                       '2016-07-07/generated/azure_mgmt_api_management/models/user_contract.rb'
    autoload :ApiManagementServiceSkuProperties,                  '2016-07-07/generated/azure_mgmt_api_management/models/api_management_service_sku_properties.rb'
    autoload :GenerateSsoUrlResult,                               '2016-07-07/generated/azure_mgmt_api_management/models/generate_sso_url_result.rb'
    autoload :ApiManagementServiceUpdateHostnameParameters,       '2016-07-07/generated/azure_mgmt_api_management/models/api_management_service_update_hostname_parameters.rb'
    autoload :ReportCollection,                                   '2016-07-07/generated/azure_mgmt_api_management/models/report_collection.rb'
    autoload :ApiManagementServiceBaseParameters,                 '2016-07-07/generated/azure_mgmt_api_management/models/api_management_service_base_parameters.rb'
    autoload :ProductContract,                                    '2016-07-07/generated/azure_mgmt_api_management/models/product_contract.rb'
    autoload :ApiManagementServiceListResult,                     '2016-07-07/generated/azure_mgmt_api_management/models/api_management_service_list_result.rb'
    autoload :CertificateCreateOrUpdateParameters,                '2016-07-07/generated/azure_mgmt_api_management/models/certificate_create_or_update_parameters.rb'
    autoload :ApiManagementServiceGetSsoTokenResult,              '2016-07-07/generated/azure_mgmt_api_management/models/api_management_service_get_sso_token_result.rb'
    autoload :SubscriptionKeyParameterNamesContract,              '2016-07-07/generated/azure_mgmt_api_management/models/subscription_key_parameter_names_contract.rb'
    autoload :ApiManagementServiceCheckNameAvailabilityParameters, '2016-07-07/generated/azure_mgmt_api_management/models/api_management_service_check_name_availability_parameters.rb'
    autoload :OAuth2AuthorizationServerUpdateContract,            '2016-07-07/generated/azure_mgmt_api_management/models/oauth2authorization_server_update_contract.rb'
    autoload :ApiManagementServiceNameAvailabilityResult,         '2016-07-07/generated/azure_mgmt_api_management/models/api_management_service_name_availability_result.rb'
    autoload :GroupCollection,                                    '2016-07-07/generated/azure_mgmt_api_management/models/group_collection.rb'
    autoload :ApiManagementServiceUploadCertificateParameters,    '2016-07-07/generated/azure_mgmt_api_management/models/api_management_service_upload_certificate_parameters.rb'
    autoload :BackendResponse,                                    '2016-07-07/generated/azure_mgmt_api_management/models/backend_response.rb'
    autoload :QuotaCounterContract,                               '2016-07-07/generated/azure_mgmt_api_management/models/quota_counter_contract.rb'
    autoload :ApiManagementServiceResource,                       '2016-07-07/generated/azure_mgmt_api_management/models/api_management_service_resource.rb'
    autoload :ApiProtocolContract,                                '2016-07-07/generated/azure_mgmt_api_management/models/api_protocol_contract.rb'
    autoload :ApiTypeContract,                                    '2016-07-07/generated/azure_mgmt_api_management/models/api_type_contract.rb'
    autoload :HttpStatusCode,                                     '2016-07-07/generated/azure_mgmt_api_management/models/http_status_code.rb'
    autoload :ProductStateContract,                               '2016-07-07/generated/azure_mgmt_api_management/models/product_state_contract.rb'
    autoload :SubscriptionStateContract,                          '2016-07-07/generated/azure_mgmt_api_management/models/subscription_state_contract.rb'
    autoload :GroupTypeContract,                                  '2016-07-07/generated/azure_mgmt_api_management/models/group_type_contract.rb'
    autoload :UserStateContract,                                  '2016-07-07/generated/azure_mgmt_api_management/models/user_state_contract.rb'
    autoload :PolicyScopeContract,                                '2016-07-07/generated/azure_mgmt_api_management/models/policy_scope_contract.rb'
    autoload :MethodContract,                                     '2016-07-07/generated/azure_mgmt_api_management/models/method_contract.rb'
    autoload :ClientAuthenticationMethodContract,                 '2016-07-07/generated/azure_mgmt_api_management/models/client_authentication_method_contract.rb'
    autoload :GrantTypesContract,                                 '2016-07-07/generated/azure_mgmt_api_management/models/grant_types_contract.rb'
    autoload :BearerTokenSendingMethodsContract,                  '2016-07-07/generated/azure_mgmt_api_management/models/bearer_token_sending_methods_contract.rb'
    autoload :IdentityProviderNameType,                           '2016-07-07/generated/azure_mgmt_api_management/models/identity_provider_name_type.rb'
    autoload :OperationStatus,                                    '2016-07-07/generated/azure_mgmt_api_management/models/operation_status.rb'
    autoload :AsyncOperationState,                                '2016-07-07/generated/azure_mgmt_api_management/models/async_operation_state.rb'
    autoload :HostnameType,                                       '2016-07-07/generated/azure_mgmt_api_management/models/hostname_type.rb'
    autoload :SkuType,                                            '2016-07-07/generated/azure_mgmt_api_management/models/sku_type.rb'
    autoload :VirtualNetworkType,                                 '2016-07-07/generated/azure_mgmt_api_management/models/virtual_network_type.rb'
    autoload :NameAvailabilityReason,                             '2016-07-07/generated/azure_mgmt_api_management/models/name_availability_reason.rb'
    autoload :ReportsAggregation,                                 '2016-07-07/generated/azure_mgmt_api_management/models/reports_aggregation.rb'
  end
end
