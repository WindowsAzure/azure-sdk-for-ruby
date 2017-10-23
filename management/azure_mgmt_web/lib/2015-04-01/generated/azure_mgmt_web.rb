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
require '2015-04-01/generated/azure_mgmt_web/module_definition'
require 'ms_rest_azure'

module Azure::Web::Mgmt::V2015_04_01
  autoload :Domains,                                            '2015-04-01/generated/azure_mgmt_web/domains.rb'
  autoload :TopLevelDomains,                                    '2015-04-01/generated/azure_mgmt_web/top_level_domains.rb'
  autoload :WebSiteManagementClient,                            '2015-04-01/generated/azure_mgmt_web/web_site_management_client.rb'

  module Models
    autoload :DomainOwnershipIdentifierCollection,                '2015-04-01/generated/azure_mgmt_web/models/domain_ownership_identifier_collection.rb'
    autoload :Contact,                                            '2015-04-01/generated/azure_mgmt_web/models/contact.rb'
    autoload :DomainRecommendationSearchParameters,               '2015-04-01/generated/azure_mgmt_web/models/domain_recommendation_search_parameters.rb'
    autoload :DomainPurchaseConsent,                              '2015-04-01/generated/azure_mgmt_web/models/domain_purchase_consent.rb'
    autoload :NameIdentifier,                                     '2015-04-01/generated/azure_mgmt_web/models/name_identifier.rb'
    autoload :DomainAvailablilityCheckResult,                     '2015-04-01/generated/azure_mgmt_web/models/domain_availablility_check_result.rb'
    autoload :NameIdentifierCollection,                           '2015-04-01/generated/azure_mgmt_web/models/name_identifier_collection.rb'
    autoload :DomainControlCenterSsoRequest,                      '2015-04-01/generated/azure_mgmt_web/models/domain_control_center_sso_request.rb'
    autoload :ProxyOnlyResource,                                  '2015-04-01/generated/azure_mgmt_web/models/proxy_only_resource.rb'
    autoload :Address,                                            '2015-04-01/generated/azure_mgmt_web/models/address.rb'
    autoload :Resource,                                           '2015-04-01/generated/azure_mgmt_web/models/resource.rb'
    autoload :HostName,                                           '2015-04-01/generated/azure_mgmt_web/models/host_name.rb'
    autoload :TopLevelDomainCollection,                           '2015-04-01/generated/azure_mgmt_web/models/top_level_domain_collection.rb'
    autoload :TopLevelDomainAgreementOption,                      '2015-04-01/generated/azure_mgmt_web/models/top_level_domain_agreement_option.rb'
    autoload :TldLegalAgreement,                                  '2015-04-01/generated/azure_mgmt_web/models/tld_legal_agreement.rb'
    autoload :DomainCollection,                                   '2015-04-01/generated/azure_mgmt_web/models/domain_collection.rb'
    autoload :TldLegalAgreementCollection,                        '2015-04-01/generated/azure_mgmt_web/models/tld_legal_agreement_collection.rb'
    autoload :Domain,                                             '2015-04-01/generated/azure_mgmt_web/models/domain.rb'
    autoload :DomainOwnershipIdentifier,                          '2015-04-01/generated/azure_mgmt_web/models/domain_ownership_identifier.rb'
    autoload :DomainPatchResource,                                '2015-04-01/generated/azure_mgmt_web/models/domain_patch_resource.rb'
    autoload :TopLevelDomain,                                     '2015-04-01/generated/azure_mgmt_web/models/top_level_domain.rb'
    autoload :DomainStatus,                                       '2015-04-01/generated/azure_mgmt_web/models/domain_status.rb'
    autoload :ProvisioningState,                                  '2015-04-01/generated/azure_mgmt_web/models/provisioning_state.rb'
    autoload :AzureResourceType,                                  '2015-04-01/generated/azure_mgmt_web/models/azure_resource_type.rb'
    autoload :CustomHostNameDnsRecordType,                        '2015-04-01/generated/azure_mgmt_web/models/custom_host_name_dns_record_type.rb'
    autoload :HostNameType,                                       '2015-04-01/generated/azure_mgmt_web/models/host_name_type.rb'
    autoload :DnsType,                                            '2015-04-01/generated/azure_mgmt_web/models/dns_type.rb'
    autoload :DomainType,                                         '2015-04-01/generated/azure_mgmt_web/models/domain_type.rb'
  end
end
