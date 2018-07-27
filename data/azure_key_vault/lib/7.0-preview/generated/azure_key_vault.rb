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
require '7.0-preview/generated/azure_key_vault/module_definition'
require 'ms_rest_azure'

module Azure::KeyVault::V7_0_preview
  autoload :KeyVaultClient,                                     '7.0-preview/generated/azure_key_vault/key_vault_client.rb'

  module Models
    autoload :KeyRestoreParameters,                               '7.0-preview/generated/azure_key_vault/models/key_restore_parameters.rb'
    autoload :SecretSetParameters,                                '7.0-preview/generated/azure_key_vault/models/secret_set_parameters.rb'
    autoload :JsonWebKey,                                         '7.0-preview/generated/azure_key_vault/models/json_web_key.rb'
    autoload :SecretUpdateParameters,                             '7.0-preview/generated/azure_key_vault/models/secret_update_parameters.rb'
    autoload :KeyBundle,                                          '7.0-preview/generated/azure_key_vault/models/key_bundle.rb'
    autoload :CertificateCreateParameters,                        '7.0-preview/generated/azure_key_vault/models/certificate_create_parameters.rb'
    autoload :KeySignParameters,                                  '7.0-preview/generated/azure_key_vault/models/key_sign_parameters.rb'
    autoload :KeyVerifyParameters,                                '7.0-preview/generated/azure_key_vault/models/key_verify_parameters.rb'
    autoload :BackupCertificateResult,                            '7.0-preview/generated/azure_key_vault/models/backup_certificate_result.rb'
    autoload :KeyUpdateParameters,                                '7.0-preview/generated/azure_key_vault/models/key_update_parameters.rb'
    autoload :SecretItem,                                         '7.0-preview/generated/azure_key_vault/models/secret_item.rb'
    autoload :Attributes,                                         '7.0-preview/generated/azure_key_vault/models/attributes.rb'
    autoload :KeyVaultError,                                      '7.0-preview/generated/azure_key_vault/models/key_vault_error.rb'
    autoload :SecretRestoreParameters,                            '7.0-preview/generated/azure_key_vault/models/secret_restore_parameters.rb'
    autoload :SasDefinitionAttributes,                            '7.0-preview/generated/azure_key_vault/models/sas_definition_attributes.rb'
    autoload :SasDefinitionUpdateParameters,                      '7.0-preview/generated/azure_key_vault/models/sas_definition_update_parameters.rb'
    autoload :KeyItem,                                            '7.0-preview/generated/azure_key_vault/models/key_item.rb'
    autoload :CertificateIssuerItem,                              '7.0-preview/generated/azure_key_vault/models/certificate_issuer_item.rb'
    autoload :SasDefinitionListResult,                            '7.0-preview/generated/azure_key_vault/models/sas_definition_list_result.rb'
    autoload :SecretProperties,                                   '7.0-preview/generated/azure_key_vault/models/secret_properties.rb'
    autoload :CertificateImportParameters,                        '7.0-preview/generated/azure_key_vault/models/certificate_import_parameters.rb'
    autoload :X509CertificateProperties,                          '7.0-preview/generated/azure_key_vault/models/x509certificate_properties.rb'
    autoload :CertificateUpdateParameters,                        '7.0-preview/generated/azure_key_vault/models/certificate_update_parameters.rb'
    autoload :Action,                                             '7.0-preview/generated/azure_key_vault/models/action.rb'
    autoload :CertificateMergeParameters,                         '7.0-preview/generated/azure_key_vault/models/certificate_merge_parameters.rb'
    autoload :IssuerParameters,                                   '7.0-preview/generated/azure_key_vault/models/issuer_parameters.rb'
    autoload :CertificateIssuerSetParameters,                     '7.0-preview/generated/azure_key_vault/models/certificate_issuer_set_parameters.rb'
    autoload :CertificateBundle,                                  '7.0-preview/generated/azure_key_vault/models/certificate_bundle.rb'
    autoload :CertificateIssuerUpdateParameters,                  '7.0-preview/generated/azure_key_vault/models/certificate_issuer_update_parameters.rb'
    autoload :DeletedSasDefinitionListResult,                     '7.0-preview/generated/azure_key_vault/models/deleted_sas_definition_list_result.rb'
    autoload :CertificateOperationUpdateParameter,                '7.0-preview/generated/azure_key_vault/models/certificate_operation_update_parameter.rb'
    autoload :CertificateOperation,                               '7.0-preview/generated/azure_key_vault/models/certificate_operation.rb'
    autoload :KeyOperationResult,                                 '7.0-preview/generated/azure_key_vault/models/key_operation_result.rb'
    autoload :AdministratorDetails,                               '7.0-preview/generated/azure_key_vault/models/administrator_details.rb'
    autoload :KeyVerifyResult,                                    '7.0-preview/generated/azure_key_vault/models/key_verify_result.rb'
    autoload :IssuerAttributes,                                   '7.0-preview/generated/azure_key_vault/models/issuer_attributes.rb'
    autoload :KeyListResult,                                      '7.0-preview/generated/azure_key_vault/models/key_list_result.rb'
    autoload :Contact,                                            '7.0-preview/generated/azure_key_vault/models/contact.rb'
    autoload :DeletedKeyListResult,                               '7.0-preview/generated/azure_key_vault/models/deleted_key_list_result.rb'
    autoload :KeyCreateParameters,                                '7.0-preview/generated/azure_key_vault/models/key_create_parameters.rb'
    autoload :SecretListResult,                                   '7.0-preview/generated/azure_key_vault/models/secret_list_result.rb'
    autoload :KeyOperationsParameters,                            '7.0-preview/generated/azure_key_vault/models/key_operations_parameters.rb'
    autoload :DeletedSecretListResult,                            '7.0-preview/generated/azure_key_vault/models/deleted_secret_list_result.rb'
    autoload :SecretBundle,                                       '7.0-preview/generated/azure_key_vault/models/secret_bundle.rb'
    autoload :CertificateListResult,                              '7.0-preview/generated/azure_key_vault/models/certificate_list_result.rb'
    autoload :StorageRestoreParameters,                           '7.0-preview/generated/azure_key_vault/models/storage_restore_parameters.rb'
    autoload :DeletedCertificateListResult,                       '7.0-preview/generated/azure_key_vault/models/deleted_certificate_list_result.rb'
    autoload :KeyProperties,                                      '7.0-preview/generated/azure_key_vault/models/key_properties.rb'
    autoload :CertificateIssuerListResult,                        '7.0-preview/generated/azure_key_vault/models/certificate_issuer_list_result.rb'
    autoload :Trigger,                                            '7.0-preview/generated/azure_key_vault/models/trigger.rb'
    autoload :BackupKeyResult,                                    '7.0-preview/generated/azure_key_vault/models/backup_key_result.rb'
    autoload :CertificatePolicy,                                  '7.0-preview/generated/azure_key_vault/models/certificate_policy.rb'
    autoload :BackupSecretResult,                                 '7.0-preview/generated/azure_key_vault/models/backup_secret_result.rb'
    autoload :Error,                                              '7.0-preview/generated/azure_key_vault/models/error.rb'
    autoload :BackupStorageResult,                                '7.0-preview/generated/azure_key_vault/models/backup_storage_result.rb'
    autoload :OrganizationDetails,                                '7.0-preview/generated/azure_key_vault/models/organization_details.rb'
    autoload :PendingCertificateSigningRequestResult,             '7.0-preview/generated/azure_key_vault/models/pending_certificate_signing_request_result.rb'
    autoload :Contacts,                                           '7.0-preview/generated/azure_key_vault/models/contacts.rb'
    autoload :StorageAccountAttributes,                           '7.0-preview/generated/azure_key_vault/models/storage_account_attributes.rb'
    autoload :StorageBundle,                                      '7.0-preview/generated/azure_key_vault/models/storage_bundle.rb'
    autoload :CertificateItem,                                    '7.0-preview/generated/azure_key_vault/models/certificate_item.rb'
    autoload :SasDefinitionItem,                                  '7.0-preview/generated/azure_key_vault/models/sas_definition_item.rb'
    autoload :LifetimeAction,                                     '7.0-preview/generated/azure_key_vault/models/lifetime_action.rb'
    autoload :StorageAccountCreateParameters,                     '7.0-preview/generated/azure_key_vault/models/storage_account_create_parameters.rb'
    autoload :IssuerCredentials,                                  '7.0-preview/generated/azure_key_vault/models/issuer_credentials.rb'
    autoload :StorageAccountUpdateParameters,                     '7.0-preview/generated/azure_key_vault/models/storage_account_update_parameters.rb'
    autoload :KeyImportParameters,                                '7.0-preview/generated/azure_key_vault/models/key_import_parameters.rb'
    autoload :StorageAccountRegenerteKeyParameters,               '7.0-preview/generated/azure_key_vault/models/storage_account_regenerte_key_parameters.rb'
    autoload :SubjectAlternativeNames,                            '7.0-preview/generated/azure_key_vault/models/subject_alternative_names.rb'
    autoload :StorageAccountItem,                                 '7.0-preview/generated/azure_key_vault/models/storage_account_item.rb'
    autoload :IssuerBundle,                                       '7.0-preview/generated/azure_key_vault/models/issuer_bundle.rb'
    autoload :SasDefinitionBundle,                                '7.0-preview/generated/azure_key_vault/models/sas_definition_bundle.rb'
    autoload :SasDefinitionCreateParameters,                      '7.0-preview/generated/azure_key_vault/models/sas_definition_create_parameters.rb'
    autoload :StorageListResult,                                  '7.0-preview/generated/azure_key_vault/models/storage_list_result.rb'
    autoload :CertificateRestoreParameters,                       '7.0-preview/generated/azure_key_vault/models/certificate_restore_parameters.rb'
    autoload :DeletedStorageListResult,                           '7.0-preview/generated/azure_key_vault/models/deleted_storage_list_result.rb'
    autoload :KeyAttributes,                                      '7.0-preview/generated/azure_key_vault/models/key_attributes.rb'
    autoload :DeletedKeyBundle,                                   '7.0-preview/generated/azure_key_vault/models/deleted_key_bundle.rb'
    autoload :DeletedKeyItem,                                     '7.0-preview/generated/azure_key_vault/models/deleted_key_item.rb'
    autoload :SecretAttributes,                                   '7.0-preview/generated/azure_key_vault/models/secret_attributes.rb'
    autoload :DeletedSecretBundle,                                '7.0-preview/generated/azure_key_vault/models/deleted_secret_bundle.rb'
    autoload :DeletedSecretItem,                                  '7.0-preview/generated/azure_key_vault/models/deleted_secret_item.rb'
    autoload :CertificateAttributes,                              '7.0-preview/generated/azure_key_vault/models/certificate_attributes.rb'
    autoload :DeletedCertificateBundle,                           '7.0-preview/generated/azure_key_vault/models/deleted_certificate_bundle.rb'
    autoload :DeletedCertificateItem,                             '7.0-preview/generated/azure_key_vault/models/deleted_certificate_item.rb'
    autoload :DeletedStorageBundle,                               '7.0-preview/generated/azure_key_vault/models/deleted_storage_bundle.rb'
    autoload :DeletedStorageAccountItem,                          '7.0-preview/generated/azure_key_vault/models/deleted_storage_account_item.rb'
    autoload :DeletedSasDefinitionBundle,                         '7.0-preview/generated/azure_key_vault/models/deleted_sas_definition_bundle.rb'
    autoload :DeletedSasDefinitionItem,                           '7.0-preview/generated/azure_key_vault/models/deleted_sas_definition_item.rb'
    autoload :JsonWebKeyType,                                     '7.0-preview/generated/azure_key_vault/models/json_web_key_type.rb'
    autoload :JsonWebKeyCurveName,                                '7.0-preview/generated/azure_key_vault/models/json_web_key_curve_name.rb'
    autoload :DeletionRecoveryLevel,                              '7.0-preview/generated/azure_key_vault/models/deletion_recovery_level.rb'
    autoload :KeyUsageType,                                       '7.0-preview/generated/azure_key_vault/models/key_usage_type.rb'
    autoload :ActionType,                                         '7.0-preview/generated/azure_key_vault/models/action_type.rb'
    autoload :JsonWebKeyOperation,                                '7.0-preview/generated/azure_key_vault/models/json_web_key_operation.rb'
    autoload :JsonWebKeyEncryptionAlgorithm,                      '7.0-preview/generated/azure_key_vault/models/json_web_key_encryption_algorithm.rb'
    autoload :JsonWebKeySignatureAlgorithm,                       '7.0-preview/generated/azure_key_vault/models/json_web_key_signature_algorithm.rb'
    autoload :SasTokenType,                                       '7.0-preview/generated/azure_key_vault/models/sas_token_type.rb'
  end
end
