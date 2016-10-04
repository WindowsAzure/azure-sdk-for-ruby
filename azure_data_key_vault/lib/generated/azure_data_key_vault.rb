# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
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
require 'generated/azure_data_key_vault/module_definition'
require 'ms_rest_azure'

module Azure::Data::KeyVault
  autoload :KeyVaultDataClient,                            'generated/azure_data_key_vault/key_vault_data_client.rb'

  module Models
    autoload :Attributes,                                         'generated/azure_data_key_vault/models/attributes.rb'
    autoload :JsonWebKey,                                         'generated/azure_data_key_vault/models/json_web_key.rb'
    autoload :KeyBundle,                                          'generated/azure_data_key_vault/models/key_bundle.rb'
    autoload :KeyItem,                                            'generated/azure_data_key_vault/models/key_item.rb'
    autoload :SecretBundle,                                       'generated/azure_data_key_vault/models/secret_bundle.rb'
    autoload :SecretItem,                                         'generated/azure_data_key_vault/models/secret_item.rb'
    autoload :CertificateItem,                                    'generated/azure_data_key_vault/models/certificate_item.rb'
    autoload :CertificateIssuerItem,                              'generated/azure_data_key_vault/models/certificate_issuer_item.rb'
    autoload :CertificateBundle,                                  'generated/azure_data_key_vault/models/certificate_bundle.rb'
    autoload :CertificatePolicy,                                  'generated/azure_data_key_vault/models/certificate_policy.rb'
    autoload :KeyProperties,                                      'generated/azure_data_key_vault/models/key_properties.rb'
    autoload :SecretProperties,                                   'generated/azure_data_key_vault/models/secret_properties.rb'
    autoload :X509CertificateProperties,                          'generated/azure_data_key_vault/models/x509certificate_properties.rb'
    autoload :SubjectAlternativeNames,                            'generated/azure_data_key_vault/models/subject_alternative_names.rb'
    autoload :LifetimeAction,                                     'generated/azure_data_key_vault/models/lifetime_action.rb'
    autoload :Trigger,                                            'generated/azure_data_key_vault/models/trigger.rb'
    autoload :Action,                                             'generated/azure_data_key_vault/models/action.rb'
    autoload :IssuerParameters,                                   'generated/azure_data_key_vault/models/issuer_parameters.rb'
    autoload :CertificateOperation,                               'generated/azure_data_key_vault/models/certificate_operation.rb'
    autoload :Error,                                              'generated/azure_data_key_vault/models/error.rb'
    autoload :IssuerBundle,                                       'generated/azure_data_key_vault/models/issuer_bundle.rb'
    autoload :IssuerCredentials,                                  'generated/azure_data_key_vault/models/issuer_credentials.rb'
    autoload :OrganizationDetails,                                'generated/azure_data_key_vault/models/organization_details.rb'
    autoload :AdministratorDetails,                               'generated/azure_data_key_vault/models/administrator_details.rb'
    autoload :IssuerAttributes,                                   'generated/azure_data_key_vault/models/issuer_attributes.rb'
    autoload :Contacts,                                           'generated/azure_data_key_vault/models/contacts.rb'
    autoload :Contact,                                            'generated/azure_data_key_vault/models/contact.rb'
    autoload :KeyCreateParameters,                                'generated/azure_data_key_vault/models/key_create_parameters.rb'
    autoload :KeyImportParameters,                                'generated/azure_data_key_vault/models/key_import_parameters.rb'
    autoload :KeyOperationsParameters,                            'generated/azure_data_key_vault/models/key_operations_parameters.rb'
    autoload :KeySignParameters,                                  'generated/azure_data_key_vault/models/key_sign_parameters.rb'
    autoload :KeyVerifyParameters,                                'generated/azure_data_key_vault/models/key_verify_parameters.rb'
    autoload :KeyUpdateParameters,                                'generated/azure_data_key_vault/models/key_update_parameters.rb'
    autoload :KeyRestoreParameters,                               'generated/azure_data_key_vault/models/key_restore_parameters.rb'
    autoload :SecretSetParameters,                                'generated/azure_data_key_vault/models/secret_set_parameters.rb'
    autoload :SecretUpdateParameters,                             'generated/azure_data_key_vault/models/secret_update_parameters.rb'
    autoload :CertificateCreateParameters,                        'generated/azure_data_key_vault/models/certificate_create_parameters.rb'
    autoload :CertificateImportParameters,                        'generated/azure_data_key_vault/models/certificate_import_parameters.rb'
    autoload :CertificateUpdateParameters,                        'generated/azure_data_key_vault/models/certificate_update_parameters.rb'
    autoload :CertificateMergeParameters,                         'generated/azure_data_key_vault/models/certificate_merge_parameters.rb'
    autoload :CertificateIssuerSetParameters,                     'generated/azure_data_key_vault/models/certificate_issuer_set_parameters.rb'
    autoload :CertificateIssuerUpdateParameters,                  'generated/azure_data_key_vault/models/certificate_issuer_update_parameters.rb'
    autoload :CertificateOperationUpdateParameter,                'generated/azure_data_key_vault/models/certificate_operation_update_parameter.rb'
    autoload :KeyOperationResult,                                 'generated/azure_data_key_vault/models/key_operation_result.rb'
    autoload :KeyVerifyResult,                                    'generated/azure_data_key_vault/models/key_verify_result.rb'
    autoload :KeyListResult,                                      'generated/azure_data_key_vault/models/key_list_result.rb'
    autoload :SecretListResult,                                   'generated/azure_data_key_vault/models/secret_list_result.rb'
    autoload :CertificateListResult,                              'generated/azure_data_key_vault/models/certificate_list_result.rb'
    autoload :CertificateIssuerListResult,                        'generated/azure_data_key_vault/models/certificate_issuer_list_result.rb'
    autoload :BackupKeyResult,                                    'generated/azure_data_key_vault/models/backup_key_result.rb'
    autoload :PendingCertificateSigningRequestResult,             'generated/azure_data_key_vault/models/pending_certificate_signing_request_result.rb'
    autoload :KeyVaultError,                                      'generated/azure_data_key_vault/models/key_vault_error.rb'
    autoload :KeyAttributes,                                      'generated/azure_data_key_vault/models/key_attributes.rb'
    autoload :SecretAttributes,                                   'generated/azure_data_key_vault/models/secret_attributes.rb'
    autoload :CertificateAttributes,                              'generated/azure_data_key_vault/models/certificate_attributes.rb'
    autoload :JsonWebKeyType,                                     'generated/azure_data_key_vault/models/json_web_key_type.rb'
    autoload :KeyUsageType,                                       'generated/azure_data_key_vault/models/key_usage_type.rb'
    autoload :ActionType,                                         'generated/azure_data_key_vault/models/action_type.rb'
    autoload :JsonWebKeyOperation,                                'generated/azure_data_key_vault/models/json_web_key_operation.rb'
    autoload :JsonWebKeyEncryptionAlgorithm,                      'generated/azure_data_key_vault/models/json_web_key_encryption_algorithm.rb'
    autoload :JsonWebKeySignatureAlgorithm,                       'generated/azure_data_key_vault/models/json_web_key_signature_algorithm.rb'
  end
end
