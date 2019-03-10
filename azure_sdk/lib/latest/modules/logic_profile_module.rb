# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_logic'

module Azure::Profiles::Latest
  module Logic
    module Mgmt
      Workflows = Azure::Logic::Mgmt::V2018_07_01_preview::Workflows
      WorkflowVersions = Azure::Logic::Mgmt::V2018_07_01_preview::WorkflowVersions
      WorkflowTriggers = Azure::Logic::Mgmt::V2018_07_01_preview::WorkflowTriggers
      WorkflowVersionTriggers = Azure::Logic::Mgmt::V2018_07_01_preview::WorkflowVersionTriggers
      Operations = Azure::Logic::Mgmt::V2018_07_01_preview::Operations
      WorkflowTriggerHistories = Azure::Logic::Mgmt::V2018_07_01_preview::WorkflowTriggerHistories
      WorkflowRuns = Azure::Logic::Mgmt::V2018_07_01_preview::WorkflowRuns
      WorkflowRunActions = Azure::Logic::Mgmt::V2018_07_01_preview::WorkflowRunActions
      WorkflowRunActionRepetitionsRequestHistories = Azure::Logic::Mgmt::V2018_07_01_preview::WorkflowRunActionRepetitionsRequestHistories
      WorkflowRunActionRequestHistories = Azure::Logic::Mgmt::V2018_07_01_preview::WorkflowRunActionRequestHistories
      WorkflowRunActionScopeRepetitions = Azure::Logic::Mgmt::V2018_07_01_preview::WorkflowRunActionScopeRepetitions
      WorkflowRunOperations = Azure::Logic::Mgmt::V2018_07_01_preview::WorkflowRunOperations
      IntegrationAccounts = Azure::Logic::Mgmt::V2018_07_01_preview::IntegrationAccounts
      IntegrationAccountAssemblies = Azure::Logic::Mgmt::V2018_07_01_preview::IntegrationAccountAssemblies
      IntegrationAccountBatchConfigurations = Azure::Logic::Mgmt::V2018_07_01_preview::IntegrationAccountBatchConfigurations
      IntegrationAccountSchemas = Azure::Logic::Mgmt::V2018_07_01_preview::IntegrationAccountSchemas
      IntegrationAccountMaps = Azure::Logic::Mgmt::V2018_07_01_preview::IntegrationAccountMaps
      IntegrationAccountPartners = Azure::Logic::Mgmt::V2018_07_01_preview::IntegrationAccountPartners
      IntegrationAccountAgreements = Azure::Logic::Mgmt::V2018_07_01_preview::IntegrationAccountAgreements
      IntegrationAccountCertificates = Azure::Logic::Mgmt::V2018_07_01_preview::IntegrationAccountCertificates
      IntegrationAccountSessions = Azure::Logic::Mgmt::V2018_07_01_preview::IntegrationAccountSessions
      WorkflowRunActionRepetitions = Azure::Logic::Mgmt::V2018_07_01_preview::WorkflowRunActionRepetitions

      module Models
        ErrorResponse = Azure::Logic::Mgmt::V2018_07_01_preview::Models::ErrorResponse
        OperationDisplay = Azure::Logic::Mgmt::V2018_07_01_preview::Models::OperationDisplay
        Operation = Azure::Logic::Mgmt::V2018_07_01_preview::Models::Operation
        OperationListResult = Azure::Logic::Mgmt::V2018_07_01_preview::Models::OperationListResult
        SkuName = Azure::Logic::Mgmt::V2018_07_01_preview::Models::SkuName
        ContentHash = Azure::Logic::Mgmt::V2018_07_01_preview::Models::ContentHash
        ContentLink = Azure::Logic::Mgmt::V2018_07_01_preview::Models::ContentLink
        SubResource = Azure::Logic::Mgmt::V2018_07_01_preview::Models::SubResource
        KeyVaultKeyReference = Azure::Logic::Mgmt::V2018_07_01_preview::Models::KeyVaultKeyReference
        Sku = Azure::Logic::Mgmt::V2018_07_01_preview::Models::Sku
        KeyType = Azure::Logic::Mgmt::V2018_07_01_preview::Models::KeyType
        X12EnvelopeOverride = Azure::Logic::Mgmt::V2018_07_01_preview::Models::X12EnvelopeOverride
        X12ValidationOverride = Azure::Logic::Mgmt::V2018_07_01_preview::Models::X12ValidationOverride
        ResourceReference = Azure::Logic::Mgmt::V2018_07_01_preview::Models::ResourceReference
        X12MessageIdentifier = Azure::Logic::Mgmt::V2018_07_01_preview::Models::X12MessageIdentifier
        WorkflowParameter = Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowParameter
        X12SchemaReference = Azure::Logic::Mgmt::V2018_07_01_preview::Models::X12SchemaReference
        WorkflowFilter = Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowFilter
        X12DelimiterOverrides = Azure::Logic::Mgmt::V2018_07_01_preview::Models::X12DelimiterOverrides
        AS2AgreementContent = Azure::Logic::Mgmt::V2018_07_01_preview::Models::AS2AgreementContent
        WorkflowVersionListResult = Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowVersionListResult
        X12ValidationSettings = Azure::Logic::Mgmt::V2018_07_01_preview::Models::X12ValidationSettings
        RecurrenceSchedule = Azure::Logic::Mgmt::V2018_07_01_preview::Models::RecurrenceSchedule
        X12FramingSettings = Azure::Logic::Mgmt::V2018_07_01_preview::Models::X12FramingSettings
        X12EnvelopeSettings = Azure::Logic::Mgmt::V2018_07_01_preview::Models::X12EnvelopeSettings
        WorkflowTriggerListResult = Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowTriggerListResult
        X12AcknowledgementSettings = Azure::Logic::Mgmt::V2018_07_01_preview::Models::X12AcknowledgementSettings
        WorkflowTriggerCallbackUrl = Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowTriggerCallbackUrl
        X12MessageFilter = Azure::Logic::Mgmt::V2018_07_01_preview::Models::X12MessageFilter
        X12SecuritySettings = Azure::Logic::Mgmt::V2018_07_01_preview::Models::X12SecuritySettings
        RequestHistoryListResult = Azure::Logic::Mgmt::V2018_07_01_preview::Models::RequestHistoryListResult
        X12ProcessingSettings = Azure::Logic::Mgmt::V2018_07_01_preview::Models::X12ProcessingSettings
        WorkflowTriggerHistoryFilter = Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowTriggerHistoryFilter
        RequestHistoryProperties = Azure::Logic::Mgmt::V2018_07_01_preview::Models::RequestHistoryProperties
        WorkflowRunFilter = Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowRunFilter
        WorkflowRunListResult = Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowRunListResult
        Expression = Azure::Logic::Mgmt::V2018_07_01_preview::Models::Expression
        WorkflowListResult = Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowListResult
        JsonSchema = Azure::Logic::Mgmt::V2018_07_01_preview::Models::JsonSchema
        WorkflowRunActionListResult = Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowRunActionListResult
        X12ProtocolSettings = Azure::Logic::Mgmt::V2018_07_01_preview::Models::X12ProtocolSettings
        GenerateUpgradedDefinitionParameters = Azure::Logic::Mgmt::V2018_07_01_preview::Models::GenerateUpgradedDefinitionParameters
        X12OneWayAgreement = Azure::Logic::Mgmt::V2018_07_01_preview::Models::X12OneWayAgreement
        BatchConfigurationCollection = Azure::Logic::Mgmt::V2018_07_01_preview::Models::BatchConfigurationCollection
        X12AgreementContent = Azure::Logic::Mgmt::V2018_07_01_preview::Models::X12AgreementContent
        GetCallbackUrlParameters = Azure::Logic::Mgmt::V2018_07_01_preview::Models::GetCallbackUrlParameters
        EdifactValidationSettings = Azure::Logic::Mgmt::V2018_07_01_preview::Models::EdifactValidationSettings
        BatchReleaseCriteria = Azure::Logic::Mgmt::V2018_07_01_preview::Models::BatchReleaseCriteria
        EdifactFramingSettings = Azure::Logic::Mgmt::V2018_07_01_preview::Models::EdifactFramingSettings
        Resource = Azure::Logic::Mgmt::V2018_07_01_preview::Models::Resource
        IntegrationAccountSchemaFilter = Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountSchemaFilter
        EdifactEnvelopeSettings = Azure::Logic::Mgmt::V2018_07_01_preview::Models::EdifactEnvelopeSettings
        ArtifactProperties = Azure::Logic::Mgmt::V2018_07_01_preview::Models::ArtifactProperties
        EdifactAcknowledgementSettings = Azure::Logic::Mgmt::V2018_07_01_preview::Models::EdifactAcknowledgementSettings
        IntegrationAccountMapFilter = Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountMapFilter
        EdifactMessageFilter = Azure::Logic::Mgmt::V2018_07_01_preview::Models::EdifactMessageFilter
        B2BPartnerContent = Azure::Logic::Mgmt::V2018_07_01_preview::Models::B2BPartnerContent
        EdifactProcessingSettings = Azure::Logic::Mgmt::V2018_07_01_preview::Models::EdifactProcessingSettings
        AssemblyCollection = Azure::Logic::Mgmt::V2018_07_01_preview::Models::AssemblyCollection
        EdifactEnvelopeOverride = Azure::Logic::Mgmt::V2018_07_01_preview::Models::EdifactEnvelopeOverride
        IntegrationAccountPartnerFilter = Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountPartnerFilter
        EdifactMessageIdentifier = Azure::Logic::Mgmt::V2018_07_01_preview::Models::EdifactMessageIdentifier
        EdifactSchemaReference = Azure::Logic::Mgmt::V2018_07_01_preview::Models::EdifactSchemaReference
        AS2SecuritySettings = Azure::Logic::Mgmt::V2018_07_01_preview::Models::AS2SecuritySettings
        AS2AcknowledgementConnectionSettings = Azure::Logic::Mgmt::V2018_07_01_preview::Models::AS2AcknowledgementConnectionSettings
        EdifactValidationOverride = Azure::Logic::Mgmt::V2018_07_01_preview::Models::EdifactValidationOverride
        EdifactDelimiterOverride = Azure::Logic::Mgmt::V2018_07_01_preview::Models::EdifactDelimiterOverride
        AS2ProtocolSettings = Azure::Logic::Mgmt::V2018_07_01_preview::Models::AS2ProtocolSettings
        AS2EnvelopeSettings = Azure::Logic::Mgmt::V2018_07_01_preview::Models::AS2EnvelopeSettings
        EdifactProtocolSettings = Azure::Logic::Mgmt::V2018_07_01_preview::Models::EdifactProtocolSettings
        EdifactOneWayAgreement = Azure::Logic::Mgmt::V2018_07_01_preview::Models::EdifactOneWayAgreement
        WorkflowTriggerFilter = Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowTriggerFilter
        RecurrenceScheduleOccurrence = Azure::Logic::Mgmt::V2018_07_01_preview::Models::RecurrenceScheduleOccurrence
        EdifactAgreementContent = Azure::Logic::Mgmt::V2018_07_01_preview::Models::EdifactAgreementContent
        AgreementContent = Azure::Logic::Mgmt::V2018_07_01_preview::Models::AgreementContent
        WorkflowTriggerHistoryListResult = Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowTriggerHistoryListResult
        Correlation = Azure::Logic::Mgmt::V2018_07_01_preview::Models::Correlation
        RunCorrelation = Azure::Logic::Mgmt::V2018_07_01_preview::Models::RunCorrelation
        RetryHistory = Azure::Logic::Mgmt::V2018_07_01_preview::Models::RetryHistory
        IntegrationAccountAgreementFilter = Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountAgreementFilter
        IntegrationAccountAgreementListResult = Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountAgreementListResult
        RegenerateActionParameter = Azure::Logic::Mgmt::V2018_07_01_preview::Models::RegenerateActionParameter
        IntegrationAccountListResult = Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountListResult
        IntegrationAccountSchemaListResult = Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountSchemaListResult
        KeyVaultKeyReferenceKeyVault = Azure::Logic::Mgmt::V2018_07_01_preview::Models::KeyVaultKeyReferenceKeyVault
        OperationResultProperties = Azure::Logic::Mgmt::V2018_07_01_preview::Models::OperationResultProperties
        IntegrationAccountCertificateListResult = Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountCertificateListResult
        PartnerContent = Azure::Logic::Mgmt::V2018_07_01_preview::Models::PartnerContent
        IntegrationAccountSessionFilter = Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountSessionFilter
        AS2MessageConnectionSettings = Azure::Logic::Mgmt::V2018_07_01_preview::Models::AS2MessageConnectionSettings
        WorkflowRunActionRepetitionDefinitionCollection = Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowRunActionRepetitionDefinitionCollection
        IntegrationAccountMapListResult = Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountMapListResult
        AS2ValidationSettings = Azure::Logic::Mgmt::V2018_07_01_preview::Models::AS2ValidationSettings
        IntegrationAccountSessionListResult = Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountSessionListResult
        AS2OneWayAgreement = Azure::Logic::Mgmt::V2018_07_01_preview::Models::AS2OneWayAgreement
        WorkflowTriggerListCallbackUrlQueries = Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowTriggerListCallbackUrlQueries
        WorkflowRunTrigger = Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowRunTrigger
        RepetitionIndex = Azure::Logic::Mgmt::V2018_07_01_preview::Models::RepetitionIndex
        CallbackUrl = Azure::Logic::Mgmt::V2018_07_01_preview::Models::CallbackUrl
        WorkflowRunActionFilter = Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowRunActionFilter
        ListKeyVaultKeysDefinition = Azure::Logic::Mgmt::V2018_07_01_preview::Models::ListKeyVaultKeysDefinition
        BusinessIdentity = Azure::Logic::Mgmt::V2018_07_01_preview::Models::BusinessIdentity
        AS2MdnSettings = Azure::Logic::Mgmt::V2018_07_01_preview::Models::AS2MdnSettings
        KeyVaultKey = Azure::Logic::Mgmt::V2018_07_01_preview::Models::KeyVaultKey
        KeyVaultKeyAttributes = Azure::Logic::Mgmt::V2018_07_01_preview::Models::KeyVaultKeyAttributes
        KeyVaultKeyCollection = Azure::Logic::Mgmt::V2018_07_01_preview::Models::KeyVaultKeyCollection
        ErrorProperties = Azure::Logic::Mgmt::V2018_07_01_preview::Models::ErrorProperties
        TrackingEventErrorInfo = Azure::Logic::Mgmt::V2018_07_01_preview::Models::TrackingEventErrorInfo
        IntegrationAccountMapPropertiesParametersSchema = Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountMapPropertiesParametersSchema
        TrackingEvent = Azure::Logic::Mgmt::V2018_07_01_preview::Models::TrackingEvent
        Request = Azure::Logic::Mgmt::V2018_07_01_preview::Models::Request
        AS2ErrorSettings = Azure::Logic::Mgmt::V2018_07_01_preview::Models::AS2ErrorSettings
        IntegrationAccountSku = Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountSku
        SetTriggerStateActionDefinition = Azure::Logic::Mgmt::V2018_07_01_preview::Models::SetTriggerStateActionDefinition
        WorkflowTriggerRecurrence = Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowTriggerRecurrence
        IntegrationAccountPartnerListResult = Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountPartnerListResult
        ExpressionTraces = Azure::Logic::Mgmt::V2018_07_01_preview::Models::ExpressionTraces
        TrackingEventsDefinition = Azure::Logic::Mgmt::V2018_07_01_preview::Models::TrackingEventsDefinition
        WorkflowVersion = Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowVersion
        WorkflowTrigger = Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowTrigger
        ErrorInfo = Azure::Logic::Mgmt::V2018_07_01_preview::Models::ErrorInfo
        WorkflowOutputParameter = Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowOutputParameter
        WorkflowRun = Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowRun
        Workflow = Azure::Logic::Mgmt::V2018_07_01_preview::Models::Workflow
        IntegrationAccount = Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccount
        IntegrationAccountSchema = Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountSchema
        WorkflowRunAction = Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowRunAction
        IntegrationAccountPartner = Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountPartner
        Response = Azure::Logic::Mgmt::V2018_07_01_preview::Models::Response
        IntegrationAccountAgreement = Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountAgreement
        WorkflowTriggerHistory = Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowTriggerHistory
        ExpressionRoot = Azure::Logic::Mgmt::V2018_07_01_preview::Models::ExpressionRoot
        IntegrationAccountCertificate = Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountCertificate
        AzureResourceErrorInfo = Azure::Logic::Mgmt::V2018_07_01_preview::Models::AzureResourceErrorInfo
        WorkflowRunActionRepetitionDefinition = Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowRunActionRepetitionDefinition
        AssemblyDefinition = Azure::Logic::Mgmt::V2018_07_01_preview::Models::AssemblyDefinition
        IntegrationAccountMap = Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountMap
        AssemblyProperties = Azure::Logic::Mgmt::V2018_07_01_preview::Models::AssemblyProperties
        BatchConfigurationProperties = Azure::Logic::Mgmt::V2018_07_01_preview::Models::BatchConfigurationProperties
        BatchConfiguration = Azure::Logic::Mgmt::V2018_07_01_preview::Models::BatchConfiguration
        IntegrationAccountSession = Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountSession
        WorkflowProvisioningState = Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowProvisioningState
        KeyVaultReference = Azure::Logic::Mgmt::V2018_07_01_preview::Models::KeyVaultReference
        ParameterType = Azure::Logic::Mgmt::V2018_07_01_preview::Models::ParameterType
        RunActionCorrelation = Azure::Logic::Mgmt::V2018_07_01_preview::Models::RunActionCorrelation
        WorkflowStatus = Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowStatus
        ArtifactContentPropertiesDefinition = Azure::Logic::Mgmt::V2018_07_01_preview::Models::ArtifactContentPropertiesDefinition
        RecurrenceFrequency = Azure::Logic::Mgmt::V2018_07_01_preview::Models::RecurrenceFrequency
        OperationResult = Azure::Logic::Mgmt::V2018_07_01_preview::Models::OperationResult
        DayOfWeek = Azure::Logic::Mgmt::V2018_07_01_preview::Models::DayOfWeek
        RequestHistory = Azure::Logic::Mgmt::V2018_07_01_preview::Models::RequestHistory
        SchemaType = Azure::Logic::Mgmt::V2018_07_01_preview::Models::SchemaType
        WorkflowState = Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowState
        DaysOfWeek = Azure::Logic::Mgmt::V2018_07_01_preview::Models::DaysOfWeek
        WorkflowTriggerProvisioningState = Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowTriggerProvisioningState
        PartnerType = Azure::Logic::Mgmt::V2018_07_01_preview::Models::PartnerType
        AgreementType = Azure::Logic::Mgmt::V2018_07_01_preview::Models::AgreementType
        MapType = Azure::Logic::Mgmt::V2018_07_01_preview::Models::MapType
        EncryptionAlgorithm = Azure::Logic::Mgmt::V2018_07_01_preview::Models::EncryptionAlgorithm
        IntegrationAccountSkuName = Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountSkuName
        TrailingSeparatorPolicy = Azure::Logic::Mgmt::V2018_07_01_preview::Models::TrailingSeparatorPolicy
        X12CharacterSet = Azure::Logic::Mgmt::V2018_07_01_preview::Models::X12CharacterSet
        SigningAlgorithm = Azure::Logic::Mgmt::V2018_07_01_preview::Models::SigningAlgorithm
        X12DateFormat = Azure::Logic::Mgmt::V2018_07_01_preview::Models::X12DateFormat
        HashingAlgorithm = Azure::Logic::Mgmt::V2018_07_01_preview::Models::HashingAlgorithm
        UsageIndicator = Azure::Logic::Mgmt::V2018_07_01_preview::Models::UsageIndicator
        MessageFilterType = Azure::Logic::Mgmt::V2018_07_01_preview::Models::MessageFilterType
        X12TimeFormat = Azure::Logic::Mgmt::V2018_07_01_preview::Models::X12TimeFormat
        EdifactDecimalIndicator = Azure::Logic::Mgmt::V2018_07_01_preview::Models::EdifactDecimalIndicator
        SegmentTerminatorSuffix = Azure::Logic::Mgmt::V2018_07_01_preview::Models::SegmentTerminatorSuffix
        EdifactCharacterSet = Azure::Logic::Mgmt::V2018_07_01_preview::Models::EdifactCharacterSet
        TrackingRecordType = Azure::Logic::Mgmt::V2018_07_01_preview::Models::TrackingRecordType
        TrackEventsOperationOptions = Azure::Logic::Mgmt::V2018_07_01_preview::Models::TrackEventsOperationOptions
        EventLevel = Azure::Logic::Mgmt::V2018_07_01_preview::Models::EventLevel
      end

      class LogicManagementClass
        attr_reader :workflows, :workflow_versions, :workflow_triggers, :workflow_version_triggers, :operations, :workflow_trigger_histories, :workflow_runs, :workflow_run_actions, :workflow_run_action_repetitions_request_histories, :workflow_run_action_request_histories, :workflow_run_action_scope_repetitions, :workflow_run_operations, :integration_accounts, :integration_account_assemblies, :integration_account_batch_configurations, :integration_account_schemas, :integration_account_maps, :integration_account_partners, :integration_account_agreements, :integration_account_certificates, :integration_account_sessions, :workflow_run_action_repetitions, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Logic::Mgmt::V2018_07_01_preview::LogicManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @workflows = @client_0.workflows
          @workflow_versions = @client_0.workflow_versions
          @workflow_triggers = @client_0.workflow_triggers
          @workflow_version_triggers = @client_0.workflow_version_triggers
          @operations = @client_0.operations
          @workflow_trigger_histories = @client_0.workflow_trigger_histories
          @workflow_runs = @client_0.workflow_runs
          @workflow_run_actions = @client_0.workflow_run_actions
          @workflow_run_action_repetitions_request_histories = @client_0.workflow_run_action_repetitions_request_histories
          @workflow_run_action_request_histories = @client_0.workflow_run_action_request_histories
          @workflow_run_action_scope_repetitions = @client_0.workflow_run_action_scope_repetitions
          @workflow_run_operations = @client_0.workflow_run_operations
          @integration_accounts = @client_0.integration_accounts
          @integration_account_assemblies = @client_0.integration_account_assemblies
          @integration_account_batch_configurations = @client_0.integration_account_batch_configurations
          @integration_account_schemas = @client_0.integration_account_schemas
          @integration_account_maps = @client_0.integration_account_maps
          @integration_account_partners = @client_0.integration_account_partners
          @integration_account_agreements = @client_0.integration_account_agreements
          @integration_account_certificates = @client_0.integration_account_certificates
          @integration_account_sessions = @client_0.integration_account_sessions
          @workflow_run_action_repetitions = @client_0.workflow_run_action_repetitions

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Logic/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_0.respond_to?method
            @client_0.send(method, *args)
          else
            super
          end
        end

        class ModelClasses
          def error_response
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::ErrorResponse
          end
          def operation_display
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::OperationDisplay
          end
          def operation
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::Operation
          end
          def operation_list_result
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::OperationListResult
          end
          def sku_name
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::SkuName
          end
          def content_hash
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::ContentHash
          end
          def content_link
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::ContentLink
          end
          def sub_resource
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::SubResource
          end
          def key_vault_key_reference
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::KeyVaultKeyReference
          end
          def sku
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::Sku
          end
          def key_type
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::KeyType
          end
          def x12_envelope_override
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::X12EnvelopeOverride
          end
          def x12_validation_override
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::X12ValidationOverride
          end
          def resource_reference
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::ResourceReference
          end
          def x12_message_identifier
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::X12MessageIdentifier
          end
          def workflow_parameter
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowParameter
          end
          def x12_schema_reference
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::X12SchemaReference
          end
          def workflow_filter
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowFilter
          end
          def x12_delimiter_overrides
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::X12DelimiterOverrides
          end
          def as2_agreement_content
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::AS2AgreementContent
          end
          def workflow_version_list_result
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowVersionListResult
          end
          def x12_validation_settings
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::X12ValidationSettings
          end
          def recurrence_schedule
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::RecurrenceSchedule
          end
          def x12_framing_settings
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::X12FramingSettings
          end
          def x12_envelope_settings
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::X12EnvelopeSettings
          end
          def workflow_trigger_list_result
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowTriggerListResult
          end
          def x12_acknowledgement_settings
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::X12AcknowledgementSettings
          end
          def workflow_trigger_callback_url
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowTriggerCallbackUrl
          end
          def x12_message_filter
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::X12MessageFilter
          end
          def x12_security_settings
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::X12SecuritySettings
          end
          def request_history_list_result
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::RequestHistoryListResult
          end
          def x12_processing_settings
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::X12ProcessingSettings
          end
          def workflow_trigger_history_filter
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowTriggerHistoryFilter
          end
          def request_history_properties
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::RequestHistoryProperties
          end
          def workflow_run_filter
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowRunFilter
          end
          def workflow_run_list_result
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowRunListResult
          end
          def expression
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::Expression
          end
          def workflow_list_result
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowListResult
          end
          def json_schema
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::JsonSchema
          end
          def workflow_run_action_list_result
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowRunActionListResult
          end
          def x12_protocol_settings
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::X12ProtocolSettings
          end
          def generate_upgraded_definition_parameters
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::GenerateUpgradedDefinitionParameters
          end
          def x12_one_way_agreement
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::X12OneWayAgreement
          end
          def batch_configuration_collection
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::BatchConfigurationCollection
          end
          def x12_agreement_content
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::X12AgreementContent
          end
          def get_callback_url_parameters
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::GetCallbackUrlParameters
          end
          def edifact_validation_settings
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::EdifactValidationSettings
          end
          def batch_release_criteria
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::BatchReleaseCriteria
          end
          def edifact_framing_settings
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::EdifactFramingSettings
          end
          def resource
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::Resource
          end
          def integration_account_schema_filter
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountSchemaFilter
          end
          def edifact_envelope_settings
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::EdifactEnvelopeSettings
          end
          def artifact_properties
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::ArtifactProperties
          end
          def edifact_acknowledgement_settings
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::EdifactAcknowledgementSettings
          end
          def integration_account_map_filter
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountMapFilter
          end
          def edifact_message_filter
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::EdifactMessageFilter
          end
          def b2_bpartner_content
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::B2BPartnerContent
          end
          def edifact_processing_settings
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::EdifactProcessingSettings
          end
          def assembly_collection
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::AssemblyCollection
          end
          def edifact_envelope_override
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::EdifactEnvelopeOverride
          end
          def integration_account_partner_filter
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountPartnerFilter
          end
          def edifact_message_identifier
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::EdifactMessageIdentifier
          end
          def edifact_schema_reference
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::EdifactSchemaReference
          end
          def as2_security_settings
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::AS2SecuritySettings
          end
          def as2_acknowledgement_connection_settings
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::AS2AcknowledgementConnectionSettings
          end
          def edifact_validation_override
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::EdifactValidationOverride
          end
          def edifact_delimiter_override
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::EdifactDelimiterOverride
          end
          def as2_protocol_settings
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::AS2ProtocolSettings
          end
          def as2_envelope_settings
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::AS2EnvelopeSettings
          end
          def edifact_protocol_settings
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::EdifactProtocolSettings
          end
          def edifact_one_way_agreement
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::EdifactOneWayAgreement
          end
          def workflow_trigger_filter
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowTriggerFilter
          end
          def recurrence_schedule_occurrence
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::RecurrenceScheduleOccurrence
          end
          def edifact_agreement_content
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::EdifactAgreementContent
          end
          def agreement_content
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::AgreementContent
          end
          def workflow_trigger_history_list_result
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowTriggerHistoryListResult
          end
          def correlation
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::Correlation
          end
          def run_correlation
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::RunCorrelation
          end
          def retry_history
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::RetryHistory
          end
          def integration_account_agreement_filter
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountAgreementFilter
          end
          def integration_account_agreement_list_result
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountAgreementListResult
          end
          def regenerate_action_parameter
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::RegenerateActionParameter
          end
          def integration_account_list_result
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountListResult
          end
          def integration_account_schema_list_result
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountSchemaListResult
          end
          def key_vault_key_reference_key_vault
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::KeyVaultKeyReferenceKeyVault
          end
          def operation_result_properties
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::OperationResultProperties
          end
          def integration_account_certificate_list_result
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountCertificateListResult
          end
          def partner_content
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::PartnerContent
          end
          def integration_account_session_filter
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountSessionFilter
          end
          def as2_message_connection_settings
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::AS2MessageConnectionSettings
          end
          def workflow_run_action_repetition_definition_collection
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowRunActionRepetitionDefinitionCollection
          end
          def integration_account_map_list_result
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountMapListResult
          end
          def as2_validation_settings
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::AS2ValidationSettings
          end
          def integration_account_session_list_result
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountSessionListResult
          end
          def as2_one_way_agreement
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::AS2OneWayAgreement
          end
          def workflow_trigger_list_callback_url_queries
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowTriggerListCallbackUrlQueries
          end
          def workflow_run_trigger
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowRunTrigger
          end
          def repetition_index
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::RepetitionIndex
          end
          def callback_url
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::CallbackUrl
          end
          def workflow_run_action_filter
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowRunActionFilter
          end
          def list_key_vault_keys_definition
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::ListKeyVaultKeysDefinition
          end
          def business_identity
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::BusinessIdentity
          end
          def as2_mdn_settings
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::AS2MdnSettings
          end
          def key_vault_key
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::KeyVaultKey
          end
          def key_vault_key_attributes
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::KeyVaultKeyAttributes
          end
          def key_vault_key_collection
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::KeyVaultKeyCollection
          end
          def error_properties
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::ErrorProperties
          end
          def tracking_event_error_info
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::TrackingEventErrorInfo
          end
          def integration_account_map_properties_parameters_schema
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountMapPropertiesParametersSchema
          end
          def tracking_event
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::TrackingEvent
          end
          def request
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::Request
          end
          def as2_error_settings
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::AS2ErrorSettings
          end
          def integration_account_sku
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountSku
          end
          def set_trigger_state_action_definition
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::SetTriggerStateActionDefinition
          end
          def workflow_trigger_recurrence
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowTriggerRecurrence
          end
          def integration_account_partner_list_result
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountPartnerListResult
          end
          def expression_traces
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::ExpressionTraces
          end
          def tracking_events_definition
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::TrackingEventsDefinition
          end
          def workflow_version
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowVersion
          end
          def workflow_trigger
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowTrigger
          end
          def error_info
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::ErrorInfo
          end
          def workflow_output_parameter
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowOutputParameter
          end
          def workflow_run
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowRun
          end
          def workflow
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::Workflow
          end
          def integration_account
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccount
          end
          def integration_account_schema
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountSchema
          end
          def workflow_run_action
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowRunAction
          end
          def integration_account_partner
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountPartner
          end
          def response
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::Response
          end
          def integration_account_agreement
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountAgreement
          end
          def workflow_trigger_history
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowTriggerHistory
          end
          def expression_root
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::ExpressionRoot
          end
          def integration_account_certificate
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountCertificate
          end
          def azure_resource_error_info
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::AzureResourceErrorInfo
          end
          def workflow_run_action_repetition_definition
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowRunActionRepetitionDefinition
          end
          def assembly_definition
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::AssemblyDefinition
          end
          def integration_account_map
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountMap
          end
          def assembly_properties
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::AssemblyProperties
          end
          def batch_configuration_properties
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::BatchConfigurationProperties
          end
          def batch_configuration
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::BatchConfiguration
          end
          def integration_account_session
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountSession
          end
          def workflow_provisioning_state
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowProvisioningState
          end
          def key_vault_reference
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::KeyVaultReference
          end
          def parameter_type
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::ParameterType
          end
          def run_action_correlation
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::RunActionCorrelation
          end
          def workflow_status
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowStatus
          end
          def artifact_content_properties_definition
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::ArtifactContentPropertiesDefinition
          end
          def recurrence_frequency
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::RecurrenceFrequency
          end
          def operation_result
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::OperationResult
          end
          def day_of_week
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::DayOfWeek
          end
          def request_history
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::RequestHistory
          end
          def schema_type
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::SchemaType
          end
          def workflow_state
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowState
          end
          def days_of_week
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::DaysOfWeek
          end
          def workflow_trigger_provisioning_state
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::WorkflowTriggerProvisioningState
          end
          def partner_type
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::PartnerType
          end
          def agreement_type
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::AgreementType
          end
          def map_type
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::MapType
          end
          def encryption_algorithm
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::EncryptionAlgorithm
          end
          def integration_account_sku_name
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::IntegrationAccountSkuName
          end
          def trailing_separator_policy
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::TrailingSeparatorPolicy
          end
          def x12_character_set
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::X12CharacterSet
          end
          def signing_algorithm
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::SigningAlgorithm
          end
          def x12_date_format
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::X12DateFormat
          end
          def hashing_algorithm
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::HashingAlgorithm
          end
          def usage_indicator
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::UsageIndicator
          end
          def message_filter_type
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::MessageFilterType
          end
          def x12_time_format
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::X12TimeFormat
          end
          def edifact_decimal_indicator
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::EdifactDecimalIndicator
          end
          def segment_terminator_suffix
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::SegmentTerminatorSuffix
          end
          def edifact_character_set
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::EdifactCharacterSet
          end
          def tracking_record_type
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::TrackingRecordType
          end
          def track_events_operation_options
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::TrackEventsOperationOptions
          end
          def event_level
            Azure::Logic::Mgmt::V2018_07_01_preview::Models::EventLevel
          end
        end
      end
    end
  end
end
