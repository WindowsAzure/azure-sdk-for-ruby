# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
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
require 'generated/azure_mgmt_logic/module_definition'
require 'ms_rest_azure'

module Azure::ARM::Logic
  autoload :Workflows,                                          'generated/azure_mgmt_logic/workflows.rb'
  autoload :WorkflowVersions,                                   'generated/azure_mgmt_logic/workflow_versions.rb'
  autoload :WorkflowTriggers,                                   'generated/azure_mgmt_logic/workflow_triggers.rb'
  autoload :WorkflowTriggerHistories,                           'generated/azure_mgmt_logic/workflow_trigger_histories.rb'
  autoload :WorkflowRuns,                                       'generated/azure_mgmt_logic/workflow_runs.rb'
  autoload :WorkflowRunActions,                                 'generated/azure_mgmt_logic/workflow_run_actions.rb'
  autoload :IntegrationAccounts,                                'generated/azure_mgmt_logic/integration_accounts.rb'
  autoload :Schemas,                                            'generated/azure_mgmt_logic/schemas.rb'
  autoload :Maps,                                               'generated/azure_mgmt_logic/maps.rb'
  autoload :Partners,                                           'generated/azure_mgmt_logic/partners.rb'
  autoload :Agreements,                                         'generated/azure_mgmt_logic/agreements.rb'
  autoload :Certificates,                                       'generated/azure_mgmt_logic/certificates.rb'
  autoload :Sessions,                                           'generated/azure_mgmt_logic/sessions.rb'
  autoload :LogicManagementClient,                              'generated/azure_mgmt_logic/logic_management_client.rb'

  module Models
    autoload :AS2MdnSettings,                                     'generated/azure_mgmt_logic/models/as2mdn_settings.rb'
    autoload :AS2SecuritySettings,                                'generated/azure_mgmt_logic/models/as2security_settings.rb'
    autoload :AS2ValidationSettings,                              'generated/azure_mgmt_logic/models/as2validation_settings.rb'
    autoload :Sku,                                                'generated/azure_mgmt_logic/models/sku.rb'
    autoload :AS2EnvelopeSettings,                                'generated/azure_mgmt_logic/models/as2envelope_settings.rb'
    autoload :IntegrationAccountPartnerListResult,                'generated/azure_mgmt_logic/models/integration_account_partner_list_result.rb'
    autoload :IntegrationAccountPartnerFilter,                    'generated/azure_mgmt_logic/models/integration_account_partner_filter.rb'
    autoload :WorkflowListResult,                                 'generated/azure_mgmt_logic/models/workflow_list_result.rb'
    autoload :AS2MessageConnectionSettings,                       'generated/azure_mgmt_logic/models/as2message_connection_settings.rb'
    autoload :WorkflowVersionListResult,                          'generated/azure_mgmt_logic/models/workflow_version_list_result.rb'
    autoload :AS2AcknowledgementConnectionSettings,               'generated/azure_mgmt_logic/models/as2acknowledgement_connection_settings.rb'
    autoload :RecurrenceSchedule,                                 'generated/azure_mgmt_logic/models/recurrence_schedule.rb'
    autoload :ErrorResponse,                                      'generated/azure_mgmt_logic/models/error_response.rb'
    autoload :ResourceReference,                                  'generated/azure_mgmt_logic/models/resource_reference.rb'
    autoload :WorkflowTriggerListResult,                          'generated/azure_mgmt_logic/models/workflow_trigger_list_result.rb'
    autoload :WorkflowParameter,                                  'generated/azure_mgmt_logic/models/workflow_parameter.rb'
    autoload :Correlation,                                        'generated/azure_mgmt_logic/models/correlation.rb'
    autoload :KeyVaultKeyReferenceKeyVault,                       'generated/azure_mgmt_logic/models/key_vault_key_reference_key_vault.rb'
    autoload :ContentLink,                                        'generated/azure_mgmt_logic/models/content_link.rb'
    autoload :AS2ErrorSettings,                                   'generated/azure_mgmt_logic/models/as2error_settings.rb'
    autoload :WorkflowTriggerHistoryListResult,                   'generated/azure_mgmt_logic/models/workflow_trigger_history_list_result.rb'
    autoload :AS2ProtocolSettings,                                'generated/azure_mgmt_logic/models/as2protocol_settings.rb'
    autoload :WorkflowRunTrigger,                                 'generated/azure_mgmt_logic/models/workflow_run_trigger.rb'
    autoload :AS2OneWayAgreement,                                 'generated/azure_mgmt_logic/models/as2one_way_agreement.rb'
    autoload :Operation,                                          'generated/azure_mgmt_logic/models/operation.rb'
    autoload :AS2AgreementContent,                                'generated/azure_mgmt_logic/models/as2agreement_content.rb'
    autoload :WorkflowRunListResult,                              'generated/azure_mgmt_logic/models/workflow_run_list_result.rb'
    autoload :X12ValidationSettings,                              'generated/azure_mgmt_logic/models/x12validation_settings.rb'
    autoload :WorkflowRunActionFilter,                            'generated/azure_mgmt_logic/models/workflow_run_action_filter.rb'
    autoload :X12FramingSettings,                                 'generated/azure_mgmt_logic/models/x12framing_settings.rb'
    autoload :GenerateUpgradedDefinitionParameters,               'generated/azure_mgmt_logic/models/generate_upgraded_definition_parameters.rb'
    autoload :X12EnvelopeSettings,                                'generated/azure_mgmt_logic/models/x12envelope_settings.rb'
    autoload :IntegrationAccountSessionListResult,                'generated/azure_mgmt_logic/models/integration_account_session_list_result.rb'
    autoload :X12AcknowledgementSettings,                         'generated/azure_mgmt_logic/models/x12acknowledgement_settings.rb'
    autoload :GetCallbackUrlParameters,                           'generated/azure_mgmt_logic/models/get_callback_url_parameters.rb'
    autoload :X12MessageFilter,                                   'generated/azure_mgmt_logic/models/x12message_filter.rb'
    autoload :IntegrationAccountSessionFilter,                    'generated/azure_mgmt_logic/models/integration_account_session_filter.rb'
    autoload :X12SecuritySettings,                                'generated/azure_mgmt_logic/models/x12security_settings.rb'
    autoload :IntegrationAccountSchemaFilter,                     'generated/azure_mgmt_logic/models/integration_account_schema_filter.rb'
    autoload :X12ProcessingSettings,                              'generated/azure_mgmt_logic/models/x12processing_settings.rb'
    autoload :IntegrationAccountCertificateListResult,            'generated/azure_mgmt_logic/models/integration_account_certificate_list_result.rb'
    autoload :X12EnvelopeOverride,                                'generated/azure_mgmt_logic/models/x12envelope_override.rb'
    autoload :IntegrationAccountMapFilter,                        'generated/azure_mgmt_logic/models/integration_account_map_filter.rb'
    autoload :X12ValidationOverride,                              'generated/azure_mgmt_logic/models/x12validation_override.rb'
    autoload :B2BPartnerContent,                                  'generated/azure_mgmt_logic/models/b2bpartner_content.rb'
    autoload :X12MessageIdentifier,                               'generated/azure_mgmt_logic/models/x12message_identifier.rb'
    autoload :KeyVaultKeyReference,                               'generated/azure_mgmt_logic/models/key_vault_key_reference.rb'
    autoload :X12SchemaReference,                                 'generated/azure_mgmt_logic/models/x12schema_reference.rb'
    autoload :X12DelimiterOverrides,                              'generated/azure_mgmt_logic/models/x12delimiter_overrides.rb'
    autoload :WorkflowTriggerRecurrence,                          'generated/azure_mgmt_logic/models/workflow_trigger_recurrence.rb'
    autoload :X12ProtocolSettings,                                'generated/azure_mgmt_logic/models/x12protocol_settings.rb'
    autoload :WorkflowTriggerCallbackUrl,                         'generated/azure_mgmt_logic/models/workflow_trigger_callback_url.rb'
    autoload :X12OneWayAgreement,                                 'generated/azure_mgmt_logic/models/x12one_way_agreement.rb'
    autoload :ErrorProperties,                                    'generated/azure_mgmt_logic/models/error_properties.rb'
    autoload :X12AgreementContent,                                'generated/azure_mgmt_logic/models/x12agreement_content.rb'
    autoload :OperationListResult,                                'generated/azure_mgmt_logic/models/operation_list_result.rb'
    autoload :EdifactValidationSettings,                          'generated/azure_mgmt_logic/models/edifact_validation_settings.rb'
    autoload :OperationDisplay,                                   'generated/azure_mgmt_logic/models/operation_display.rb'
    autoload :EdifactFramingSettings,                             'generated/azure_mgmt_logic/models/edifact_framing_settings.rb'
    autoload :IntegrationAccountSku,                              'generated/azure_mgmt_logic/models/integration_account_sku.rb'
    autoload :EdifactEnvelopeSettings,                            'generated/azure_mgmt_logic/models/edifact_envelope_settings.rb'
    autoload :CallbackUrl,                                        'generated/azure_mgmt_logic/models/callback_url.rb'
    autoload :EdifactAcknowledgementSettings,                     'generated/azure_mgmt_logic/models/edifact_acknowledgement_settings.rb'
    autoload :IntegrationAccountMapPropertiesParametersSchema,    'generated/azure_mgmt_logic/models/integration_account_map_properties_parameters_schema.rb'
    autoload :EdifactMessageFilter,                               'generated/azure_mgmt_logic/models/edifact_message_filter.rb'
    autoload :BusinessIdentity,                                   'generated/azure_mgmt_logic/models/business_identity.rb'
    autoload :EdifactProcessingSettings,                          'generated/azure_mgmt_logic/models/edifact_processing_settings.rb'
    autoload :WorkflowFilter,                                     'generated/azure_mgmt_logic/models/workflow_filter.rb'
    autoload :EdifactEnvelopeOverride,                            'generated/azure_mgmt_logic/models/edifact_envelope_override.rb'
    autoload :WorkflowTriggerFilter,                              'generated/azure_mgmt_logic/models/workflow_trigger_filter.rb'
    autoload :EdifactMessageIdentifier,                           'generated/azure_mgmt_logic/models/edifact_message_identifier.rb'
    autoload :WorkflowTriggerHistoryFilter,                       'generated/azure_mgmt_logic/models/workflow_trigger_history_filter.rb'
    autoload :EdifactSchemaReference,                             'generated/azure_mgmt_logic/models/edifact_schema_reference.rb'
    autoload :WorkflowRunActionListResult,                        'generated/azure_mgmt_logic/models/workflow_run_action_list_result.rb'
    autoload :EdifactValidationOverride,                          'generated/azure_mgmt_logic/models/edifact_validation_override.rb'
    autoload :IntegrationAccountSchemaListResult,                 'generated/azure_mgmt_logic/models/integration_account_schema_list_result.rb'
    autoload :EdifactDelimiterOverride,                           'generated/azure_mgmt_logic/models/edifact_delimiter_override.rb'
    autoload :PartnerContent,                                     'generated/azure_mgmt_logic/models/partner_content.rb'
    autoload :EdifactProtocolSettings,                            'generated/azure_mgmt_logic/models/edifact_protocol_settings.rb'
    autoload :ContentHash,                                        'generated/azure_mgmt_logic/models/content_hash.rb'
    autoload :EdifactOneWayAgreement,                             'generated/azure_mgmt_logic/models/edifact_one_way_agreement.rb'
    autoload :IntegrationAccountListResult,                       'generated/azure_mgmt_logic/models/integration_account_list_result.rb'
    autoload :EdifactAgreementContent,                            'generated/azure_mgmt_logic/models/edifact_agreement_content.rb'
    autoload :RecurrenceScheduleOccurrence,                       'generated/azure_mgmt_logic/models/recurrence_schedule_occurrence.rb'
    autoload :AgreementContent,                                   'generated/azure_mgmt_logic/models/agreement_content.rb'
    autoload :IntegrationAccountMapListResult,                    'generated/azure_mgmt_logic/models/integration_account_map_list_result.rb'
    autoload :IntegrationAccountAgreementFilter,                  'generated/azure_mgmt_logic/models/integration_account_agreement_filter.rb'
    autoload :WorkflowRunFilter,                                  'generated/azure_mgmt_logic/models/workflow_run_filter.rb'
    autoload :IntegrationAccountAgreementListResult,              'generated/azure_mgmt_logic/models/integration_account_agreement_list_result.rb'
    autoload :Workflow,                                           'generated/azure_mgmt_logic/models/workflow.rb'
    autoload :WorkflowVersion,                                    'generated/azure_mgmt_logic/models/workflow_version.rb'
    autoload :WorkflowTrigger,                                    'generated/azure_mgmt_logic/models/workflow_trigger.rb'
    autoload :WorkflowTriggerHistory,                             'generated/azure_mgmt_logic/models/workflow_trigger_history.rb'
    autoload :WorkflowOutputParameter,                            'generated/azure_mgmt_logic/models/workflow_output_parameter.rb'
    autoload :WorkflowRun,                                        'generated/azure_mgmt_logic/models/workflow_run.rb'
    autoload :WorkflowRunAction,                                  'generated/azure_mgmt_logic/models/workflow_run_action.rb'
    autoload :IntegrationAccount,                                 'generated/azure_mgmt_logic/models/integration_account.rb'
    autoload :IntegrationAccountSchema,                           'generated/azure_mgmt_logic/models/integration_account_schema.rb'
    autoload :IntegrationAccountMap,                              'generated/azure_mgmt_logic/models/integration_account_map.rb'
    autoload :IntegrationAccountPartner,                          'generated/azure_mgmt_logic/models/integration_account_partner.rb'
    autoload :IntegrationAccountAgreement,                        'generated/azure_mgmt_logic/models/integration_account_agreement.rb'
    autoload :IntegrationAccountCertificate,                      'generated/azure_mgmt_logic/models/integration_account_certificate.rb'
    autoload :IntegrationAccountSession,                          'generated/azure_mgmt_logic/models/integration_account_session.rb'
    autoload :WorkflowProvisioningState,                          'generated/azure_mgmt_logic/models/workflow_provisioning_state.rb'
    autoload :WorkflowState,                                      'generated/azure_mgmt_logic/models/workflow_state.rb'
    autoload :SkuName,                                            'generated/azure_mgmt_logic/models/sku_name.rb'
    autoload :ParameterType,                                      'generated/azure_mgmt_logic/models/parameter_type.rb'
    autoload :WorkflowTriggerProvisioningState,                   'generated/azure_mgmt_logic/models/workflow_trigger_provisioning_state.rb'
    autoload :WorkflowStatus,                                     'generated/azure_mgmt_logic/models/workflow_status.rb'
    autoload :RecurrenceFrequency,                                'generated/azure_mgmt_logic/models/recurrence_frequency.rb'
    autoload :DaysOfWeek,                                         'generated/azure_mgmt_logic/models/days_of_week.rb'
    autoload :DayOfWeek,                                          'generated/azure_mgmt_logic/models/day_of_week.rb'
    autoload :KeyType,                                            'generated/azure_mgmt_logic/models/key_type.rb'
    autoload :IntegrationAccountSkuName,                          'generated/azure_mgmt_logic/models/integration_account_sku_name.rb'
    autoload :SchemaType,                                         'generated/azure_mgmt_logic/models/schema_type.rb'
    autoload :MapType,                                            'generated/azure_mgmt_logic/models/map_type.rb'
    autoload :PartnerType,                                        'generated/azure_mgmt_logic/models/partner_type.rb'
    autoload :AgreementType,                                      'generated/azure_mgmt_logic/models/agreement_type.rb'
    autoload :HashingAlgorithm,                                   'generated/azure_mgmt_logic/models/hashing_algorithm.rb'
    autoload :EncryptionAlgorithm,                                'generated/azure_mgmt_logic/models/encryption_algorithm.rb'
    autoload :TrailingSeparatorPolicy,                            'generated/azure_mgmt_logic/models/trailing_separator_policy.rb'
    autoload :X12CharacterSet,                                    'generated/azure_mgmt_logic/models/x12character_set.rb'
    autoload :SegmentTerminatorSuffix,                            'generated/azure_mgmt_logic/models/segment_terminator_suffix.rb'
    autoload :X12DateFormat,                                      'generated/azure_mgmt_logic/models/x12date_format.rb'
    autoload :X12TimeFormat,                                      'generated/azure_mgmt_logic/models/x12time_format.rb'
    autoload :UsageIndicator,                                     'generated/azure_mgmt_logic/models/usage_indicator.rb'
    autoload :MessageFilterType,                                  'generated/azure_mgmt_logic/models/message_filter_type.rb'
    autoload :EdifactCharacterSet,                                'generated/azure_mgmt_logic/models/edifact_character_set.rb'
    autoload :EdifactDecimalIndicator,                            'generated/azure_mgmt_logic/models/edifact_decimal_indicator.rb'
  end
end
