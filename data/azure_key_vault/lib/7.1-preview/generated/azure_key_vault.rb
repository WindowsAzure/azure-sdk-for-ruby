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
require '7.1-preview/generated/azure_key_vault/module_definition'
require 'ms_rest_azure'

module Azure::KeyVault::V7_1_preview
  autoload :KeyVaultClient,                                     '7.1-preview/generated/azure_key_vault/key_vault_client.rb'

  module Models
    autoload :JsonWebKey,                                         '7.1-preview/generated/azure_key_vault/models/json_web_key.rb'
    autoload :SasDefinitionItem,                                  '7.1-preview/generated/azure_key_vault/models/sas_definition_item.rb'
    autoload :CertificateItem,                                    '7.1-preview/generated/azure_key_vault/models/certificate_item.rb'
    autoload :KeyBundle,                                          '7.1-preview/generated/azure_key_vault/models/key_bundle.rb'
    autoload :KeyProperties,                                      '7.1-preview/generated/azure_key_vault/models/key_properties.rb'
    autoload :KeyItem,                                            '7.1-preview/generated/azure_key_vault/models/key_item.rb'
    autoload :SubjectAlternativeNames,                            '7.1-preview/generated/azure_key_vault/models/subject_alternative_names.rb'
    autoload :SasDefinitionBundle,                                '7.1-preview/generated/azure_key_vault/models/sas_definition_bundle.rb'
    autoload :Trigger,                                            '7.1-preview/generated/azure_key_vault/models/trigger.rb'
    autoload :LifetimeAction,                                     '7.1-preview/generated/azure_key_vault/models/lifetime_action.rb'
    autoload :KeyCreateParameters,                                '7.1-preview/generated/azure_key_vault/models/key_create_parameters.rb'
    autoload :CertificatePolicy,                                  '7.1-preview/generated/azure_key_vault/models/certificate_policy.rb'
    autoload :KeyImportParameters,                                '7.1-preview/generated/azure_key_vault/models/key_import_parameters.rb'
    autoload :CertificateBundle,                                  '7.1-preview/generated/azure_key_vault/models/certificate_bundle.rb'
    autoload :DeletedStorageListResult,                           '7.1-preview/generated/azure_key_vault/models/deleted_storage_list_result.rb'
    autoload :Error,                                              '7.1-preview/generated/azure_key_vault/models/error.rb'
    autoload :KeyOperationsParameters,                            '7.1-preview/generated/azure_key_vault/models/key_operations_parameters.rb'
    autoload :IssuerCredentials,                                  '7.1-preview/generated/azure_key_vault/models/issuer_credentials.rb'
    autoload :KeySignParameters,                                  '7.1-preview/generated/azure_key_vault/models/key_sign_parameters.rb'
    autoload :OrganizationDetails,                                '7.1-preview/generated/azure_key_vault/models/organization_details.rb'
    autoload :KeyVerifyParameters,                                '7.1-preview/generated/azure_key_vault/models/key_verify_parameters.rb'
    autoload :IssuerBundle,                                       '7.1-preview/generated/azure_key_vault/models/issuer_bundle.rb'
    autoload :KeyUpdateParameters,                                '7.1-preview/generated/azure_key_vault/models/key_update_parameters.rb'
    autoload :Contacts,                                           '7.1-preview/generated/azure_key_vault/models/contacts.rb'
    autoload :KeyRestoreParameters,                               '7.1-preview/generated/azure_key_vault/models/key_restore_parameters.rb'
    autoload :CertificateImportParameters,                        '7.1-preview/generated/azure_key_vault/models/certificate_import_parameters.rb'
    autoload :KeyOperationResult,                                 '7.1-preview/generated/azure_key_vault/models/key_operation_result.rb'
    autoload :CertificateMergeParameters,                         '7.1-preview/generated/azure_key_vault/models/certificate_merge_parameters.rb'
    autoload :KeyVerifyResult,                                    '7.1-preview/generated/azure_key_vault/models/key_verify_result.rb'
    autoload :CertificateIssuerUpdateParameters,                  '7.1-preview/generated/azure_key_vault/models/certificate_issuer_update_parameters.rb'
    autoload :KeyListResult,                                      '7.1-preview/generated/azure_key_vault/models/key_list_result.rb'
    autoload :CertificateListResult,                              '7.1-preview/generated/azure_key_vault/models/certificate_list_result.rb'
    autoload :DeletedKeyListResult,                               '7.1-preview/generated/azure_key_vault/models/deleted_key_list_result.rb'
    autoload :CertificateIssuerListResult,                        '7.1-preview/generated/azure_key_vault/models/certificate_issuer_list_result.rb'
    autoload :BackupKeyResult,                                    '7.1-preview/generated/azure_key_vault/models/backup_key_result.rb'
    autoload :CertificateRestoreParameters,                       '7.1-preview/generated/azure_key_vault/models/certificate_restore_parameters.rb'
    autoload :BackupStorageResult,                                '7.1-preview/generated/azure_key_vault/models/backup_storage_result.rb'
    autoload :Attributes,                                         '7.1-preview/generated/azure_key_vault/models/attributes.rb'
    autoload :SecretBundle,                                       '7.1-preview/generated/azure_key_vault/models/secret_bundle.rb'
    autoload :StorageListResult,                                  '7.1-preview/generated/azure_key_vault/models/storage_list_result.rb'
    autoload :CertificateIssuerItem,                              '7.1-preview/generated/azure_key_vault/models/certificate_issuer_item.rb'
    autoload :SecretItem,                                         '7.1-preview/generated/azure_key_vault/models/secret_item.rb'
    autoload :X509CertificateProperties,                          '7.1-preview/generated/azure_key_vault/models/x509certificate_properties.rb'
    autoload :SasDefinitionUpdateParameters,                      '7.1-preview/generated/azure_key_vault/models/sas_definition_update_parameters.rb'
    autoload :IssuerParameters,                                   '7.1-preview/generated/azure_key_vault/models/issuer_parameters.rb'
    autoload :SasDefinitionCreateParameters,                      '7.1-preview/generated/azure_key_vault/models/sas_definition_create_parameters.rb'
    autoload :CertificateOperation,                               '7.1-preview/generated/azure_key_vault/models/certificate_operation.rb'
    autoload :SecretRestoreParameters,                            '7.1-preview/generated/azure_key_vault/models/secret_restore_parameters.rb'
    autoload :IssuerAttributes,                                   '7.1-preview/generated/azure_key_vault/models/issuer_attributes.rb'
    autoload :SecretSetParameters,                                '7.1-preview/generated/azure_key_vault/models/secret_set_parameters.rb'
    autoload :CertificateCreateParameters,                        '7.1-preview/generated/azure_key_vault/models/certificate_create_parameters.rb'
    autoload :SecretUpdateParameters,                             '7.1-preview/generated/azure_key_vault/models/secret_update_parameters.rb'
    autoload :CertificateIssuerSetParameters,                     '7.1-preview/generated/azure_key_vault/models/certificate_issuer_set_parameters.rb'
    autoload :SecretListResult,                                   '7.1-preview/generated/azure_key_vault/models/secret_list_result.rb'
    autoload :DeletedCertificateListResult,                       '7.1-preview/generated/azure_key_vault/models/deleted_certificate_list_result.rb'
    autoload :DeletedSecretListResult,                            '7.1-preview/generated/azure_key_vault/models/deleted_secret_list_result.rb'
    autoload :BackupCertificateResult,                            '7.1-preview/generated/azure_key_vault/models/backup_certificate_result.rb'
    autoload :BackupSecretResult,                                 '7.1-preview/generated/azure_key_vault/models/backup_secret_result.rb'
    autoload :SecretProperties,                                   '7.1-preview/generated/azure_key_vault/models/secret_properties.rb'
    autoload :StorageRestoreParameters,                           '7.1-preview/generated/azure_key_vault/models/storage_restore_parameters.rb'
    autoload :SasDefinitionAttributes,                            '7.1-preview/generated/azure_key_vault/models/sas_definition_attributes.rb'
    autoload :StorageAccountAttributes,                           '7.1-preview/generated/azure_key_vault/models/storage_account_attributes.rb'
    autoload :Contact,                                            '7.1-preview/generated/azure_key_vault/models/contact.rb'
    autoload :StorageBundle,                                      '7.1-preview/generated/azure_key_vault/models/storage_bundle.rb'
    autoload :CertificateOperationUpdateParameter,                '7.1-preview/generated/azure_key_vault/models/certificate_operation_update_parameter.rb'
    autoload :DeletedSasDefinitionListResult,                     '7.1-preview/generated/azure_key_vault/models/deleted_sas_definition_list_result.rb'
    autoload :KeyVaultError,                                      '7.1-preview/generated/azure_key_vault/models/key_vault_error.rb'
    autoload :StorageAccountCreateParameters,                     '7.1-preview/generated/azure_key_vault/models/storage_account_create_parameters.rb'
    autoload :AdministratorDetails,                               '7.1-preview/generated/azure_key_vault/models/administrator_details.rb'
    autoload :StorageAccountUpdateParameters,                     '7.1-preview/generated/azure_key_vault/models/storage_account_update_parameters.rb'
    autoload :PendingCertificateSigningRequestResult,             '7.1-preview/generated/azure_key_vault/models/pending_certificate_signing_request_result.rb'
    autoload :StorageAccountRegenerteKeyParameters,               '7.1-preview/generated/azure_key_vault/models/storage_account_regenerte_key_parameters.rb'
    autoload :CertificateUpdateParameters,                        '7.1-preview/generated/azure_key_vault/models/certificate_update_parameters.rb'
    autoload :StorageAccountItem,                                 '7.1-preview/generated/azure_key_vault/models/storage_account_item.rb'
    autoload :Action,                                             '7.1-preview/generated/azure_key_vault/models/action.rb'
    autoload :SasDefinitionListResult,                            '7.1-preview/generated/azure_key_vault/models/sas_definition_list_result.rb'
    autoload :CertificateAttributes,                              '7.1-preview/generated/azure_key_vault/models/certificate_attributes.rb'
    autoload :DeletedCertificateBundle,                           '7.1-preview/generated/azure_key_vault/models/deleted_certificate_bundle.rb'
    autoload :DeletedCertificateItem,                             '7.1-preview/generated/azure_key_vault/models/deleted_certificate_item.rb'
    autoload :KeyAttributes,                                      '7.1-preview/generated/azure_key_vault/models/key_attributes.rb'
    autoload :DeletedKeyBundle,                                   '7.1-preview/generated/azure_key_vault/models/deleted_key_bundle.rb'
    autoload :DeletedKeyItem,                                     '7.1-preview/generated/azure_key_vault/models/deleted_key_item.rb'
    autoload :SecretAttributes,                                   '7.1-preview/generated/azure_key_vault/models/secret_attributes.rb'
    autoload :DeletedSecretBundle,                                '7.1-preview/generated/azure_key_vault/models/deleted_secret_bundle.rb'
    autoload :DeletedSecretItem,                                  '7.1-preview/generated/azure_key_vault/models/deleted_secret_item.rb'
    autoload :DeletedStorageBundle,                               '7.1-preview/generated/azure_key_vault/models/deleted_storage_bundle.rb'
    autoload :DeletedStorageAccountItem,                          '7.1-preview/generated/azure_key_vault/models/deleted_storage_account_item.rb'
    autoload :DeletedSasDefinitionBundle,                         '7.1-preview/generated/azure_key_vault/models/deleted_sas_definition_bundle.rb'
    autoload :DeletedSasDefinitionItem,                           '7.1-preview/generated/azure_key_vault/models/deleted_sas_definition_item.rb'
    autoload :DeletionRecoveryLevel,                              '7.1-preview/generated/azure_key_vault/models/deletion_recovery_level.rb'
    autoload :JsonWebKeyType,                                     '7.1-preview/generated/azure_key_vault/models/json_web_key_type.rb'
    autoload :JsonWebKeyCurveName,                                '7.1-preview/generated/azure_key_vault/models/json_web_key_curve_name.rb'
    autoload :KeyUsageType,                                       '7.1-preview/generated/azure_key_vault/models/key_usage_type.rb'
    autoload :ActionType,                                         '7.1-preview/generated/azure_key_vault/models/action_type.rb'
    autoload :JsonWebKeyOperation,                                '7.1-preview/generated/azure_key_vault/models/json_web_key_operation.rb'
    autoload :JsonWebKeyEncryptionAlgorithm,                      '7.1-preview/generated/azure_key_vault/models/json_web_key_encryption_algorithm.rb'
    autoload :JsonWebKeySignatureAlgorithm,                       '7.1-preview/generated/azure_key_vault/models/json_web_key_signature_algorithm.rb'
    autoload :SasTokenType,                                       '7.1-preview/generated/azure_key_vault/models/sas_token_type.rb'
  end
end
