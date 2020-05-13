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
require '2016-06-01/generated/azure_mgmt_recovery_services/module_definition'
require 'ms_rest_azure'

module Azure::RecoveryServices::Mgmt::V2016_06_01
  autoload :VaultCertificates,                                  '2016-06-01/generated/azure_mgmt_recovery_services/vault_certificates.rb'
  autoload :RegisteredIdentities,                               '2016-06-01/generated/azure_mgmt_recovery_services/registered_identities.rb'
  autoload :ReplicationUsages,                                  '2016-06-01/generated/azure_mgmt_recovery_services/replication_usages.rb'
  autoload :PrivateLinkResourcesOperations,                     '2016-06-01/generated/azure_mgmt_recovery_services/private_link_resources_operations.rb'
  autoload :RecoveryServices,                                   '2016-06-01/generated/azure_mgmt_recovery_services/recovery_services.rb'
  autoload :Vaults,                                             '2016-06-01/generated/azure_mgmt_recovery_services/vaults.rb'
  autoload :Operations,                                         '2016-06-01/generated/azure_mgmt_recovery_services/operations.rb'
  autoload :VaultExtendedInfoOperations,                        '2016-06-01/generated/azure_mgmt_recovery_services/vault_extended_info_operations.rb'
  autoload :Usages,                                             '2016-06-01/generated/azure_mgmt_recovery_services/usages.rb'
  autoload :RecoveryServicesClient,                             '2016-06-01/generated/azure_mgmt_recovery_services/recovery_services_client.rb'

  module Models
    autoload :Sku,                                                '2016-06-01/generated/azure_mgmt_recovery_services/models/sku.rb'
    autoload :RawCertificateData,                                 '2016-06-01/generated/azure_mgmt_recovery_services/models/raw_certificate_data.rb'
    autoload :ClientDiscoveryResponse,                            '2016-06-01/generated/azure_mgmt_recovery_services/models/client_discovery_response.rb'
    autoload :Resource,                                           '2016-06-01/generated/azure_mgmt_recovery_services/models/resource.rb'
    autoload :PrivateLinkResource,                                '2016-06-01/generated/azure_mgmt_recovery_services/models/private_link_resource.rb'
    autoload :ResourceCertificateDetails,                         '2016-06-01/generated/azure_mgmt_recovery_services/models/resource_certificate_details.rb'
    autoload :CertificateRequest,                                 '2016-06-01/generated/azure_mgmt_recovery_services/models/certificate_request.rb'
    autoload :JobsSummary,                                        '2016-06-01/generated/azure_mgmt_recovery_services/models/jobs_summary.rb'
    autoload :ReplicationUsage,                                   '2016-06-01/generated/azure_mgmt_recovery_services/models/replication_usage.rb'
    autoload :VaultUsageList,                                     '2016-06-01/generated/azure_mgmt_recovery_services/models/vault_usage_list.rb'
    autoload :CheckNameAvailabilityParameters,                    '2016-06-01/generated/azure_mgmt_recovery_services/models/check_name_availability_parameters.rb'
    autoload :UpgradeDetails,                                     '2016-06-01/generated/azure_mgmt_recovery_services/models/upgrade_details.rb'
    autoload :ClientDiscoveryDisplay,                             '2016-06-01/generated/azure_mgmt_recovery_services/models/client_discovery_display.rb'
    autoload :IdentityData,                                       '2016-06-01/generated/azure_mgmt_recovery_services/models/identity_data.rb'
    autoload :ClientDiscoveryForServiceSpecification,             '2016-06-01/generated/azure_mgmt_recovery_services/models/client_discovery_for_service_specification.rb'
    autoload :PrivateEndpoint,                                    '2016-06-01/generated/azure_mgmt_recovery_services/models/private_endpoint.rb'
    autoload :ClientDiscoveryValueForSingleApi,                   '2016-06-01/generated/azure_mgmt_recovery_services/models/client_discovery_value_for_single_api.rb'
    autoload :PrivateLinkServiceConnectionState,                  '2016-06-01/generated/azure_mgmt_recovery_services/models/private_link_service_connection_state.rb'
    autoload :VaultCertificateResponse,                           '2016-06-01/generated/azure_mgmt_recovery_services/models/vault_certificate_response.rb'
    autoload :PrivateEndpointConnection,                          '2016-06-01/generated/azure_mgmt_recovery_services/models/private_endpoint_connection.rb'
    autoload :ReplicationUsageList,                               '2016-06-01/generated/azure_mgmt_recovery_services/models/replication_usage_list.rb'
    autoload :PrivateEndpointConnectionVaultProperties,           '2016-06-01/generated/azure_mgmt_recovery_services/models/private_endpoint_connection_vault_properties.rb'
    autoload :ClientDiscoveryForLogSpecification,                 '2016-06-01/generated/azure_mgmt_recovery_services/models/client_discovery_for_log_specification.rb'
    autoload :VaultProperties,                                    '2016-06-01/generated/azure_mgmt_recovery_services/models/vault_properties.rb'
    autoload :VaultList,                                          '2016-06-01/generated/azure_mgmt_recovery_services/models/vault_list.rb'
    autoload :MonitoringSummary,                                  '2016-06-01/generated/azure_mgmt_recovery_services/models/monitoring_summary.rb'
    autoload :VaultUsage,                                         '2016-06-01/generated/azure_mgmt_recovery_services/models/vault_usage.rb'
    autoload :ClientDiscoveryForProperties,                       '2016-06-01/generated/azure_mgmt_recovery_services/models/client_discovery_for_properties.rb'
    autoload :NameInfo,                                           '2016-06-01/generated/azure_mgmt_recovery_services/models/name_info.rb'
    autoload :CheckNameAvailabilityResult,                        '2016-06-01/generated/azure_mgmt_recovery_services/models/check_name_availability_result.rb'
    autoload :PrivateLinkResources,                               '2016-06-01/generated/azure_mgmt_recovery_services/models/private_link_resources.rb'
    autoload :ResourceCertificateAndAadDetails,                   '2016-06-01/generated/azure_mgmt_recovery_services/models/resource_certificate_and_aad_details.rb'
    autoload :ResourceCertificateAndAcsDetails,                   '2016-06-01/generated/azure_mgmt_recovery_services/models/resource_certificate_and_acs_details.rb'
    autoload :TrackedResource,                                    '2016-06-01/generated/azure_mgmt_recovery_services/models/tracked_resource.rb'
    autoload :PatchTrackedResource,                               '2016-06-01/generated/azure_mgmt_recovery_services/models/patch_tracked_resource.rb'
    autoload :Vault,                                              '2016-06-01/generated/azure_mgmt_recovery_services/models/vault.rb'
    autoload :PatchVault,                                         '2016-06-01/generated/azure_mgmt_recovery_services/models/patch_vault.rb'
    autoload :VaultExtendedInfoResource,                          '2016-06-01/generated/azure_mgmt_recovery_services/models/vault_extended_info_resource.rb'
    autoload :AuthType,                                           '2016-06-01/generated/azure_mgmt_recovery_services/models/auth_type.rb'
    autoload :SkuName,                                            '2016-06-01/generated/azure_mgmt_recovery_services/models/sku_name.rb'
    autoload :VaultUpgradeState,                                  '2016-06-01/generated/azure_mgmt_recovery_services/models/vault_upgrade_state.rb'
    autoload :TriggerType,                                        '2016-06-01/generated/azure_mgmt_recovery_services/models/trigger_type.rb'
    autoload :ResourceIdentityType,                               '2016-06-01/generated/azure_mgmt_recovery_services/models/resource_identity_type.rb'
    autoload :ProvisioningState,                                  '2016-06-01/generated/azure_mgmt_recovery_services/models/provisioning_state.rb'
    autoload :PrivateEndpointConnectionStatus,                    '2016-06-01/generated/azure_mgmt_recovery_services/models/private_endpoint_connection_status.rb'
    autoload :VaultPrivateEndpointState,                          '2016-06-01/generated/azure_mgmt_recovery_services/models/vault_private_endpoint_state.rb'
    autoload :UsagesUnit,                                         '2016-06-01/generated/azure_mgmt_recovery_services/models/usages_unit.rb'
  end
end
