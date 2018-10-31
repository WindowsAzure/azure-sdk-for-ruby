# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_web'

module Azure::Profiles::Latest
  module Web
    module Mgmt
      AppServiceCertificateOrders = Azure::Web::Mgmt::V2018_02_01::AppServiceCertificateOrders
      Provider = Azure::Web::Mgmt::V2018_02_01::Provider
      CertificateRegistrationProvider = Azure::Web::Mgmt::V2018_02_01::CertificateRegistrationProvider
      TopLevelDomains = Azure::Web::Mgmt::V2018_02_01::TopLevelDomains
      DomainRegistrationProvider = Azure::Web::Mgmt::V2018_02_01::DomainRegistrationProvider
      Domains = Azure::Web::Mgmt::V2018_02_01::Domains
      AppServiceEnvironments = Azure::Web::Mgmt::V2018_02_01::AppServiceEnvironments
      AppServicePlans = Azure::Web::Mgmt::V2018_02_01::AppServicePlans
      WebApps = Azure::Web::Mgmt::V2018_02_01::WebApps
      Certificates = Azure::Web::Mgmt::V2018_02_01::Certificates
      DeletedWebApps = Azure::Web::Mgmt::V2018_02_01::DeletedWebApps
      Diagnostics = Azure::Web::Mgmt::V2018_02_01::Diagnostics
      Recommendations = Azure::Web::Mgmt::V2018_02_01::Recommendations
      ResourceHealthMetadataOperations = Azure::Web::Mgmt::V2018_02_01::ResourceHealthMetadataOperations

      module Models
        Dimension = Azure::Web::Mgmt::V2018_02_01::Models::Dimension
        MetricSpecification = Azure::Web::Mgmt::V2018_02_01::Models::MetricSpecification
        OperationStatus = Azure::Web::Mgmt::V2018_02_01::Models::OperationStatus
        Deployment = Azure::Web::Mgmt::V2018_02_01::Models::Deployment
        Resource = Azure::Web::Mgmt::V2018_02_01::Models::Resource
        Snapshot = Azure::Web::Mgmt::V2018_02_01::Models::Snapshot
        Certificate = Azure::Web::Mgmt::V2018_02_01::Models::Certificate
        AzureTableStorageApplicationLogsConfig = Azure::Web::Mgmt::V2018_02_01::Models::AzureTableStorageApplicationLogsConfig
        ApplicationLogsConfig = Azure::Web::Mgmt::V2018_02_01::Models::ApplicationLogsConfig
        DatabaseBackupSetting = Azure::Web::Mgmt::V2018_02_01::Models::DatabaseBackupSetting
        BackupItemCollection = Azure::Web::Mgmt::V2018_02_01::Models::BackupItemCollection
        ProcessInfoCollection = Azure::Web::Mgmt::V2018_02_01::Models::ProcessInfoCollection
        ConnStringValueTypePair = Azure::Web::Mgmt::V2018_02_01::Models::ConnStringValueTypePair
        ProcessModuleInfoCollection = Azure::Web::Mgmt::V2018_02_01::Models::ProcessModuleInfoCollection
        ProcessThreadInfoCollection = Azure::Web::Mgmt::V2018_02_01::Models::ProcessThreadInfoCollection
        CsmPublishingProfileOptions = Azure::Web::Mgmt::V2018_02_01::Models::CsmPublishingProfileOptions
        WebAppInstanceCollection = Azure::Web::Mgmt::V2018_02_01::Models::WebAppInstanceCollection
        PublicCertificateCollection = Azure::Web::Mgmt::V2018_02_01::Models::PublicCertificateCollection
        TriggeredWebJobCollection = Azure::Web::Mgmt::V2018_02_01::Models::TriggeredWebJobCollection
        EnabledConfig = Azure::Web::Mgmt::V2018_02_01::Models::EnabledConfig
        TriggeredJobHistoryCollection = Azure::Web::Mgmt::V2018_02_01::Models::TriggeredJobHistoryCollection
        SnapshotCollection = Azure::Web::Mgmt::V2018_02_01::Models::SnapshotCollection
        SiteCloneabilityCriterion = Azure::Web::Mgmt::V2018_02_01::Models::SiteCloneabilityCriterion
        HostNameBindingCollection = Azure::Web::Mgmt::V2018_02_01::Models::HostNameBindingCollection
        SiteCloneability = Azure::Web::Mgmt::V2018_02_01::Models::SiteCloneability
        PerfMonSet = Azure::Web::Mgmt::V2018_02_01::Models::PerfMonSet
        PerfMonCounterCollection = Azure::Web::Mgmt::V2018_02_01::Models::PerfMonCounterCollection
        WebJobCollection = Azure::Web::Mgmt::V2018_02_01::Models::WebJobCollection
        TopLevelDomainCollection = Azure::Web::Mgmt::V2018_02_01::Models::TopLevelDomainCollection
        FileSystemApplicationLogsConfig = Azure::Web::Mgmt::V2018_02_01::Models::FileSystemApplicationLogsConfig
        CertificateDetails = Azure::Web::Mgmt::V2018_02_01::Models::CertificateDetails
        AppServiceCertificateOrderCollection = Azure::Web::Mgmt::V2018_02_01::Models::AppServiceCertificateOrderCollection
        AzureBlobStorageHttpLogsConfig = Azure::Web::Mgmt::V2018_02_01::Models::AzureBlobStorageHttpLogsConfig
        SiteSealRequest = Azure::Web::Mgmt::V2018_02_01::Models::SiteSealRequest
        SnapshotRecoverySource = Azure::Web::Mgmt::V2018_02_01::Models::SnapshotRecoverySource
        AzureStorageInfoValue = Azure::Web::Mgmt::V2018_02_01::Models::AzureStorageInfoValue
        AppServiceCertificate = Azure::Web::Mgmt::V2018_02_01::Models::AppServiceCertificate
        SlotDifferenceCollection = Azure::Web::Mgmt::V2018_02_01::Models::SlotDifferenceCollection
        HttpLogsConfig = Azure::Web::Mgmt::V2018_02_01::Models::HttpLogsConfig
        SiteConfigResourceCollection = Azure::Web::Mgmt::V2018_02_01::Models::SiteConfigResourceCollection
        DeploymentCollection = Azure::Web::Mgmt::V2018_02_01::Models::DeploymentCollection
        PerfMonSample = Azure::Web::Mgmt::V2018_02_01::Models::PerfMonSample
        PerfMonResponse = Azure::Web::Mgmt::V2018_02_01::Models::PerfMonResponse
        SiteConfigurationSnapshotInfoCollection = Azure::Web::Mgmt::V2018_02_01::Models::SiteConfigurationSnapshotInfoCollection
        CsmSlotEntity = Azure::Web::Mgmt::V2018_02_01::Models::CsmSlotEntity
        DomainPurchaseConsent = Azure::Web::Mgmt::V2018_02_01::Models::DomainPurchaseConsent
        DomainAvailablilityCheckResult = Azure::Web::Mgmt::V2018_02_01::Models::DomainAvailablilityCheckResult
        SiteExtensionInfoCollection = Azure::Web::Mgmt::V2018_02_01::Models::SiteExtensionInfoCollection
        DomainOwnershipIdentifierCollection = Azure::Web::Mgmt::V2018_02_01::Models::DomainOwnershipIdentifierCollection
        DomainRecommendationSearchParameters = Azure::Web::Mgmt::V2018_02_01::Models::DomainRecommendationSearchParameters
        TldLegalAgreement = Azure::Web::Mgmt::V2018_02_01::Models::TldLegalAgreement
        AppServiceCertificateCollection = Azure::Web::Mgmt::V2018_02_01::Models::AppServiceCertificateCollection
        DomainControlCenterSsoRequest = Azure::Web::Mgmt::V2018_02_01::Models::DomainControlCenterSsoRequest
        NetworkTrace = Azure::Web::Mgmt::V2018_02_01::Models::NetworkTrace
        MSDeployLogEntry = Azure::Web::Mgmt::V2018_02_01::Models::MSDeployLogEntry
        BackupSchedule = Azure::Web::Mgmt::V2018_02_01::Models::BackupSchedule
        ContinuousWebJobCollection = Azure::Web::Mgmt::V2018_02_01::Models::ContinuousWebJobCollection
        PrivateAccessVirtualNetwork = Azure::Web::Mgmt::V2018_02_01::Models::PrivateAccessVirtualNetwork
        FileSystemHttpLogsConfig = Azure::Web::Mgmt::V2018_02_01::Models::FileSystemHttpLogsConfig
        HostName = Azure::Web::Mgmt::V2018_02_01::Models::HostName
        DomainCollection = Azure::Web::Mgmt::V2018_02_01::Models::DomainCollection
        TldLegalAgreementCollection = Azure::Web::Mgmt::V2018_02_01::Models::TldLegalAgreementCollection
        PrivateAccessSubnet = Azure::Web::Mgmt::V2018_02_01::Models::PrivateAccessSubnet
        SiteSeal = Azure::Web::Mgmt::V2018_02_01::Models::SiteSeal
        NameIdentifierCollection = Azure::Web::Mgmt::V2018_02_01::Models::NameIdentifierCollection
        Address = Azure::Web::Mgmt::V2018_02_01::Models::Address
        TopLevelDomainAgreementOption = Azure::Web::Mgmt::V2018_02_01::Models::TopLevelDomainAgreementOption
        AzureBlobStorageApplicationLogsConfig = Azure::Web::Mgmt::V2018_02_01::Models::AzureBlobStorageApplicationLogsConfig
        FunctionEnvelopeCollection = Azure::Web::Mgmt::V2018_02_01::Models::FunctionEnvelopeCollection
        AppServiceCertificateOrderPatchResource = Azure::Web::Mgmt::V2018_02_01::Models::AppServiceCertificateOrderPatchResource
        AppServiceCertificatePatchResource = Azure::Web::Mgmt::V2018_02_01::Models::AppServiceCertificatePatchResource
        CertificateEmail = Azure::Web::Mgmt::V2018_02_01::Models::CertificateEmail
        CertificateOrderAction = Azure::Web::Mgmt::V2018_02_01::Models::CertificateOrderAction
        AppServiceCertificateResource = Azure::Web::Mgmt::V2018_02_01::Models::AppServiceCertificateResource
        AppServiceCertificateOrder = Azure::Web::Mgmt::V2018_02_01::Models::AppServiceCertificateOrder
        DomainOwnershipIdentifier = Azure::Web::Mgmt::V2018_02_01::Models::DomainOwnershipIdentifier
        DomainPatchResource = Azure::Web::Mgmt::V2018_02_01::Models::DomainPatchResource
        TopLevelDomain = Azure::Web::Mgmt::V2018_02_01::Models::TopLevelDomain
        AzureStoragePropertyDictionaryResource = Azure::Web::Mgmt::V2018_02_01::Models::AzureStoragePropertyDictionaryResource
        ReissueCertificateOrderRequest = Azure::Web::Mgmt::V2018_02_01::Models::ReissueCertificateOrderRequest
        RenewCertificateOrderRequest = Azure::Web::Mgmt::V2018_02_01::Models::RenewCertificateOrderRequest
        BackupItem = Azure::Web::Mgmt::V2018_02_01::Models::BackupItem
        DefaultErrorResponseErrorDetailsItem = Azure::Web::Mgmt::V2018_02_01::Models::DefaultErrorResponseErrorDetailsItem
        HostingEnvironmentProfile = Azure::Web::Mgmt::V2018_02_01::Models::HostingEnvironmentProfile
        DefaultErrorResponseError = Azure::Web::Mgmt::V2018_02_01::Models::DefaultErrorResponseError
        CertificateCollection = Azure::Web::Mgmt::V2018_02_01::Models::CertificateCollection
        DefaultErrorResponse = Azure::Web::Mgmt::V2018_02_01::Models::DefaultErrorResponse
        CsmOperationDisplay = Azure::Web::Mgmt::V2018_02_01::Models::CsmOperationDisplay
        ValidateResponse = Azure::Web::Mgmt::V2018_02_01::Models::ValidateResponse
        MetricAvailability = Azure::Web::Mgmt::V2018_02_01::Models::MetricAvailability
        MSDeployLog = Azure::Web::Mgmt::V2018_02_01::Models::MSDeployLog
        ResourceMetricAvailability = Azure::Web::Mgmt::V2018_02_01::Models::ResourceMetricAvailability
        SourceControlCollection = Azure::Web::Mgmt::V2018_02_01::Models::SourceControlCollection
        CsmOperationDescriptionProperties = Azure::Web::Mgmt::V2018_02_01::Models::CsmOperationDescriptionProperties
        ResourceNameAvailabilityRequest = Azure::Web::Mgmt::V2018_02_01::Models::ResourceNameAvailabilityRequest
        CsmOperationDescription = Azure::Web::Mgmt::V2018_02_01::Models::CsmOperationDescription
        PremierAddOnOfferCollection = Azure::Web::Mgmt::V2018_02_01::Models::PremierAddOnOfferCollection
        CsmOperationCollection = Azure::Web::Mgmt::V2018_02_01::Models::CsmOperationCollection
        LocalizableString = Azure::Web::Mgmt::V2018_02_01::Models::LocalizableString
        CloningInfo = Azure::Web::Mgmt::V2018_02_01::Models::CloningInfo
        CsmUsageQuota = Azure::Web::Mgmt::V2018_02_01::Models::CsmUsageQuota
        ApiDefinitionInfo = Azure::Web::Mgmt::V2018_02_01::Models::ApiDefinitionInfo
        CsmUsageQuotaCollection = Azure::Web::Mgmt::V2018_02_01::Models::CsmUsageQuotaCollection
        AutoHealCustomAction = Azure::Web::Mgmt::V2018_02_01::Models::AutoHealCustomAction
        ErrorEntity = Azure::Web::Mgmt::V2018_02_01::Models::ErrorEntity
        SlowRequestsBasedTrigger = Azure::Web::Mgmt::V2018_02_01::Models::SlowRequestsBasedTrigger
        StatusCodesBasedTrigger = Azure::Web::Mgmt::V2018_02_01::Models::StatusCodesBasedTrigger
        RequestsBasedTrigger = Azure::Web::Mgmt::V2018_02_01::Models::RequestsBasedTrigger
        ApplicationStack = Azure::Web::Mgmt::V2018_02_01::Models::ApplicationStack
        AutoHealRules = Azure::Web::Mgmt::V2018_02_01::Models::AutoHealRules
        StackMajorVersion = Azure::Web::Mgmt::V2018_02_01::Models::StackMajorVersion
        RampUpRule = Azure::Web::Mgmt::V2018_02_01::Models::RampUpRule
        DeploymentLocations = Azure::Web::Mgmt::V2018_02_01::Models::DeploymentLocations
        VirtualDirectory = Azure::Web::Mgmt::V2018_02_01::Models::VirtualDirectory
        IdentifierCollection = Azure::Web::Mgmt::V2018_02_01::Models::IdentifierCollection
        HandlerMapping = Azure::Web::Mgmt::V2018_02_01::Models::HandlerMapping
        NameIdentifier = Azure::Web::Mgmt::V2018_02_01::Models::NameIdentifier
        ConnStringInfo = Azure::Web::Mgmt::V2018_02_01::Models::ConnStringInfo
        SiteConfig = Azure::Web::Mgmt::V2018_02_01::Models::SiteConfig
        ResourceMetricProperty = Azure::Web::Mgmt::V2018_02_01::Models::ResourceMetricProperty
        GlobalCsmSkuDescription = Azure::Web::Mgmt::V2018_02_01::Models::GlobalCsmSkuDescription
        ResourceMetricValue = Azure::Web::Mgmt::V2018_02_01::Models::ResourceMetricValue
        SkuCapacity = Azure::Web::Mgmt::V2018_02_01::Models::SkuCapacity
        ResourceMetric = Azure::Web::Mgmt::V2018_02_01::Models::ResourceMetric
        GeoRegionCollection = Azure::Web::Mgmt::V2018_02_01::Models::GeoRegionCollection
        ResourceMetricCollection = Azure::Web::Mgmt::V2018_02_01::Models::ResourceMetricCollection
        VirtualNetworkProfile = Azure::Web::Mgmt::V2018_02_01::Models::VirtualNetworkProfile
        ResourceMetricDefinitionCollection = Azure::Web::Mgmt::V2018_02_01::Models::ResourceMetricDefinitionCollection
        VirtualIPMapping = Azure::Web::Mgmt::V2018_02_01::Models::VirtualIPMapping
        WebAppCollection = Azure::Web::Mgmt::V2018_02_01::Models::WebAppCollection
        NetworkAccessControlEntry = Azure::Web::Mgmt::V2018_02_01::Models::NetworkAccessControlEntry
        DeletedSite = Azure::Web::Mgmt::V2018_02_01::Models::DeletedSite
        AppServicePlanCollection = Azure::Web::Mgmt::V2018_02_01::Models::AppServicePlanCollection
        DeletedWebAppCollection = Azure::Web::Mgmt::V2018_02_01::Models::DeletedWebAppCollection
        ValidateResponseError = Azure::Web::Mgmt::V2018_02_01::Models::ValidateResponseError
        Solution = Azure::Web::Mgmt::V2018_02_01::Models::Solution
        ResourceMetricName = Azure::Web::Mgmt::V2018_02_01::Models::ResourceMetricName
        DetectorAbnormalTimePeriod = Azure::Web::Mgmt::V2018_02_01::Models::DetectorAbnormalTimePeriod
        ResourceNameAvailability = Azure::Web::Mgmt::V2018_02_01::Models::ResourceNameAvailability
        AbnormalTimePeriod = Azure::Web::Mgmt::V2018_02_01::Models::AbnormalTimePeriod
        SlotSwapStatus = Azure::Web::Mgmt::V2018_02_01::Models::SlotSwapStatus
        HostingEnvironmentDeploymentInfo = Azure::Web::Mgmt::V2018_02_01::Models::HostingEnvironmentDeploymentInfo
        CorsSettings = Azure::Web::Mgmt::V2018_02_01::Models::CorsSettings
        DiagnosticMetricSample = Azure::Web::Mgmt::V2018_02_01::Models::DiagnosticMetricSample
        AutoHealTriggers = Azure::Web::Mgmt::V2018_02_01::Models::AutoHealTriggers
        DiagnosticMetricSet = Azure::Web::Mgmt::V2018_02_01::Models::DiagnosticMetricSet
        Experiments = Azure::Web::Mgmt::V2018_02_01::Models::Experiments
        DataSource = Azure::Web::Mgmt::V2018_02_01::Models::DataSource
        SiteMachineKey = Azure::Web::Mgmt::V2018_02_01::Models::SiteMachineKey
        ResponseMetaData = Azure::Web::Mgmt::V2018_02_01::Models::ResponseMetaData
        HostNameSslState = Azure::Web::Mgmt::V2018_02_01::Models::HostNameSslState
        AnalysisData = Azure::Web::Mgmt::V2018_02_01::Models::AnalysisData
        SkuDescription = Azure::Web::Mgmt::V2018_02_01::Models::SkuDescription
        CsmMoveResourceEnvelope = Azure::Web::Mgmt::V2018_02_01::Models::CsmMoveResourceEnvelope
        WorkerPool = Azure::Web::Mgmt::V2018_02_01::Models::WorkerPool
        DataTableResponseColumn = Azure::Web::Mgmt::V2018_02_01::Models::DataTableResponseColumn
        AppServiceEnvironment = Azure::Web::Mgmt::V2018_02_01::Models::AppServiceEnvironment
        DataTableResponseObject = Azure::Web::Mgmt::V2018_02_01::Models::DataTableResponseObject
        ValidateRequest = Azure::Web::Mgmt::V2018_02_01::Models::ValidateRequest
        DetectorInfo = Azure::Web::Mgmt::V2018_02_01::Models::DetectorInfo
        ProxyOnlyResource = Azure::Web::Mgmt::V2018_02_01::Models::ProxyOnlyResource
        Rendering = Azure::Web::Mgmt::V2018_02_01::Models::Rendering
        AutoHealActions = Azure::Web::Mgmt::V2018_02_01::Models::AutoHealActions
        DiagnosticData = Azure::Web::Mgmt::V2018_02_01::Models::DiagnosticData
        VirtualApplication = Azure::Web::Mgmt::V2018_02_01::Models::VirtualApplication
        BillingMeterCollection = Azure::Web::Mgmt::V2018_02_01::Models::BillingMeterCollection
        Capability = Azure::Web::Mgmt::V2018_02_01::Models::Capability
        DetectorResponseCollection = Azure::Web::Mgmt::V2018_02_01::Models::DetectorResponseCollection
        StampCapacity = Azure::Web::Mgmt::V2018_02_01::Models::StampCapacity
        ResourceHealthMetadataCollection = Azure::Web::Mgmt::V2018_02_01::Models::ResourceHealthMetadataCollection
        SkuInfos = Azure::Web::Mgmt::V2018_02_01::Models::SkuInfos
        DiagnosticAnalysisCollection = Azure::Web::Mgmt::V2018_02_01::Models::DiagnosticAnalysisCollection
        SiteLimits = Azure::Web::Mgmt::V2018_02_01::Models::SiteLimits
        RecommendationCollection = Azure::Web::Mgmt::V2018_02_01::Models::RecommendationCollection
        DiagnosticCategoryCollection = Azure::Web::Mgmt::V2018_02_01::Models::DiagnosticCategoryCollection
        IpSecurityRestriction = Azure::Web::Mgmt::V2018_02_01::Models::IpSecurityRestriction
        DiagnosticDetectorCollection = Azure::Web::Mgmt::V2018_02_01::Models::DiagnosticDetectorCollection
        ApplicationStackCollection = Azure::Web::Mgmt::V2018_02_01::Models::ApplicationStackCollection
        NameValuePair = Azure::Web::Mgmt::V2018_02_01::Models::NameValuePair
        StackMinorVersion = Azure::Web::Mgmt::V2018_02_01::Models::StackMinorVersion
        CertificatePatchResource = Azure::Web::Mgmt::V2018_02_01::Models::CertificatePatchResource
        VnetRoute = Azure::Web::Mgmt::V2018_02_01::Models::VnetRoute
        VnetInfo = Azure::Web::Mgmt::V2018_02_01::Models::VnetInfo
        VnetGateway = Azure::Web::Mgmt::V2018_02_01::Models::VnetGateway
        User = Azure::Web::Mgmt::V2018_02_01::Models::User
        CustomHostnameAnalysisResult = Azure::Web::Mgmt::V2018_02_01::Models::CustomHostnameAnalysisResult
        ResourceMetricDefinition = Azure::Web::Mgmt::V2018_02_01::Models::ResourceMetricDefinition
        PushSettings = Azure::Web::Mgmt::V2018_02_01::Models::PushSettings
        HybridConnectionKey = Azure::Web::Mgmt::V2018_02_01::Models::HybridConnectionKey
        HybridConnection = Azure::Web::Mgmt::V2018_02_01::Models::HybridConnection
        Site = Azure::Web::Mgmt::V2018_02_01::Models::Site
        AppServicePlan = Azure::Web::Mgmt::V2018_02_01::Models::AppServicePlan
        DetectorDefinition = Azure::Web::Mgmt::V2018_02_01::Models::DetectorDefinition
        AnalysisDefinition = Azure::Web::Mgmt::V2018_02_01::Models::AnalysisDefinition
        DetectorResponse = Azure::Web::Mgmt::V2018_02_01::Models::DetectorResponse
        DiagnosticAnalysis = Azure::Web::Mgmt::V2018_02_01::Models::DiagnosticAnalysis
        Domain = Azure::Web::Mgmt::V2018_02_01::Models::Domain
        DiagnosticCategory = Azure::Web::Mgmt::V2018_02_01::Models::DiagnosticCategory
        DiagnosticDetectorResponse = Azure::Web::Mgmt::V2018_02_01::Models::DiagnosticDetectorResponse
        Recommendation = Azure::Web::Mgmt::V2018_02_01::Models::Recommendation
        RecommendationRule = Azure::Web::Mgmt::V2018_02_01::Models::RecommendationRule
        BillingMeter = Azure::Web::Mgmt::V2018_02_01::Models::BillingMeter
        GeoRegion = Azure::Web::Mgmt::V2018_02_01::Models::GeoRegion
        PremierAddOnOffer = Azure::Web::Mgmt::V2018_02_01::Models::PremierAddOnOffer
        SourceControl = Azure::Web::Mgmt::V2018_02_01::Models::SourceControl
        VnetParameters = Azure::Web::Mgmt::V2018_02_01::Models::VnetParameters
        VnetValidationTestFailure = Azure::Web::Mgmt::V2018_02_01::Models::VnetValidationTestFailure
        VnetValidationFailureDetails = Azure::Web::Mgmt::V2018_02_01::Models::VnetValidationFailureDetails
        MSDeployStatus = Azure::Web::Mgmt::V2018_02_01::Models::MSDeployStatus
        MigrateMySqlRequest = Azure::Web::Mgmt::V2018_02_01::Models::MigrateMySqlRequest
        MigrateMySqlStatus = Azure::Web::Mgmt::V2018_02_01::Models::MigrateMySqlStatus
        RelayServiceConnectionEntity = Azure::Web::Mgmt::V2018_02_01::Models::RelayServiceConnectionEntity
        NetworkFeatures = Azure::Web::Mgmt::V2018_02_01::Models::NetworkFeatures
        PremierAddOn = Azure::Web::Mgmt::V2018_02_01::Models::PremierAddOn
        ProcessThreadInfo = Azure::Web::Mgmt::V2018_02_01::Models::ProcessThreadInfo
        ProcessModuleInfo = Azure::Web::Mgmt::V2018_02_01::Models::ProcessModuleInfo
        ProcessInfo = Azure::Web::Mgmt::V2018_02_01::Models::ProcessInfo
        BackupRequest = Azure::Web::Mgmt::V2018_02_01::Models::BackupRequest
        Operation = Azure::Web::Mgmt::V2018_02_01::Models::Operation
        ContinuousWebJob = Azure::Web::Mgmt::V2018_02_01::Models::ContinuousWebJob
        SiteAuthSettings = Azure::Web::Mgmt::V2018_02_01::Models::SiteAuthSettings
        FunctionEnvelope = Azure::Web::Mgmt::V2018_02_01::Models::FunctionEnvelope
        FunctionSecrets = Azure::Web::Mgmt::V2018_02_01::Models::FunctionSecrets
        HostNameBinding = Azure::Web::Mgmt::V2018_02_01::Models::HostNameBinding
        MSDeploy = Azure::Web::Mgmt::V2018_02_01::Models::MSDeploy
        SiteLogsConfig = Azure::Web::Mgmt::V2018_02_01::Models::SiteLogsConfig
        SitePatchResource = Azure::Web::Mgmt::V2018_02_01::Models::SitePatchResource
        SitePhpErrorLogFlag = Azure::Web::Mgmt::V2018_02_01::Models::SitePhpErrorLogFlag
        SiteSourceControl = Azure::Web::Mgmt::V2018_02_01::Models::SiteSourceControl
        LogSpecification = Azure::Web::Mgmt::V2018_02_01::Models::LogSpecification
        SlotDifference = Azure::Web::Mgmt::V2018_02_01::Models::SlotDifference
        ServiceSpecification = Azure::Web::Mgmt::V2018_02_01::Models::ServiceSpecification
        StorageMigrationResponse = Azure::Web::Mgmt::V2018_02_01::Models::StorageMigrationResponse
        StringDictionary = Azure::Web::Mgmt::V2018_02_01::Models::StringDictionary
        TriggeredJobRun = Azure::Web::Mgmt::V2018_02_01::Models::TriggeredJobRun
        DeletedAppRestoreRequest = Azure::Web::Mgmt::V2018_02_01::Models::DeletedAppRestoreRequest
        PremierAddOnPatchResource = Azure::Web::Mgmt::V2018_02_01::Models::PremierAddOnPatchResource
        ConnectionStringDictionary = Azure::Web::Mgmt::V2018_02_01::Models::ConnectionStringDictionary
        SnapshotRestoreRequest = Azure::Web::Mgmt::V2018_02_01::Models::SnapshotRestoreRequest
        SiteConfigResource = Azure::Web::Mgmt::V2018_02_01::Models::SiteConfigResource
        SiteConfigurationSnapshotInfo = Azure::Web::Mgmt::V2018_02_01::Models::SiteConfigurationSnapshotInfo
        SiteExtensionInfo = Azure::Web::Mgmt::V2018_02_01::Models::SiteExtensionInfo
        SiteInstance = Azure::Web::Mgmt::V2018_02_01::Models::SiteInstance
        IpFilterTag = Azure::Web::Mgmt::V2018_02_01::Models::IpFilterTag
        KeyVaultSecretStatus = Azure::Web::Mgmt::V2018_02_01::Models::KeyVaultSecretStatus
        ResourceHealthMetadata = Azure::Web::Mgmt::V2018_02_01::Models::ResourceHealthMetadata
        ManagedServiceIdentityType = Azure::Web::Mgmt::V2018_02_01::Models::ManagedServiceIdentityType
        SlotConfigNamesResource = Azure::Web::Mgmt::V2018_02_01::Models::SlotConfigNamesResource
        ConnectionStringType = Azure::Web::Mgmt::V2018_02_01::Models::ConnectionStringType
        StorageMigrationOptions = Azure::Web::Mgmt::V2018_02_01::Models::StorageMigrationOptions
        ManagedPipelineMode = Azure::Web::Mgmt::V2018_02_01::Models::ManagedPipelineMode
        SiteLoadBalancing = Azure::Web::Mgmt::V2018_02_01::Models::SiteLoadBalancing
        SupportedTlsVersions = Azure::Web::Mgmt::V2018_02_01::Models::SupportedTlsVersions
        TriggeredJobHistory = Azure::Web::Mgmt::V2018_02_01::Models::TriggeredJobHistory
        PublicCertificate = Azure::Web::Mgmt::V2018_02_01::Models::PublicCertificate
        RestoreRequest = Azure::Web::Mgmt::V2018_02_01::Models::RestoreRequest
        PrivateAccess = Azure::Web::Mgmt::V2018_02_01::Models::PrivateAccess
        StatusOptions = Azure::Web::Mgmt::V2018_02_01::Models::StatusOptions
        SwiftVirtualNetwork = Azure::Web::Mgmt::V2018_02_01::Models::SwiftVirtualNetwork
        CertificateProductType = Azure::Web::Mgmt::V2018_02_01::Models::CertificateProductType
        ProvisioningState = Azure::Web::Mgmt::V2018_02_01::Models::ProvisioningState
        CertificateOrderActionType = Azure::Web::Mgmt::V2018_02_01::Models::CertificateOrderActionType
        SslState = Azure::Web::Mgmt::V2018_02_01::Models::SslState
        AzureStorageType = Azure::Web::Mgmt::V2018_02_01::Models::AzureStorageType
        RouteType = Azure::Web::Mgmt::V2018_02_01::Models::RouteType
        FtpsState = Azure::Web::Mgmt::V2018_02_01::Models::FtpsState
        AutoHealActionType = Azure::Web::Mgmt::V2018_02_01::Models::AutoHealActionType
        HostNameType = Azure::Web::Mgmt::V2018_02_01::Models::HostNameType
        ScmType = Azure::Web::Mgmt::V2018_02_01::Models::ScmType
        ComputeModeOptions = Azure::Web::Mgmt::V2018_02_01::Models::ComputeModeOptions
        WorkerSizeOptions = Azure::Web::Mgmt::V2018_02_01::Models::WorkerSizeOptions
        AccessControlEntryAction = Azure::Web::Mgmt::V2018_02_01::Models::AccessControlEntryAction
        SolutionType = Azure::Web::Mgmt::V2018_02_01::Models::SolutionType
        TriggeredWebJob = Azure::Web::Mgmt::V2018_02_01::Models::TriggeredWebJob
        WebJob = Azure::Web::Mgmt::V2018_02_01::Models::WebJob
        SiteAvailabilityState = Azure::Web::Mgmt::V2018_02_01::Models::SiteAvailabilityState
        Channels = Azure::Web::Mgmt::V2018_02_01::Models::Channels
        HostingEnvironmentStatus = Azure::Web::Mgmt::V2018_02_01::Models::HostingEnvironmentStatus
        InternalLoadBalancingMode = Azure::Web::Mgmt::V2018_02_01::Models::InternalLoadBalancingMode
        CheckNameResourceTypes = Azure::Web::Mgmt::V2018_02_01::Models::CheckNameResourceTypes
        CertificateOrderStatus = Azure::Web::Mgmt::V2018_02_01::Models::CertificateOrderStatus
        WebJobType = Azure::Web::Mgmt::V2018_02_01::Models::WebJobType
        PublishingProfileFormat = Azure::Web::Mgmt::V2018_02_01::Models::PublishingProfileFormat
        RenderingType = Azure::Web::Mgmt::V2018_02_01::Models::RenderingType
        AzureStorageState = Azure::Web::Mgmt::V2018_02_01::Models::AzureStorageState
        UsageState = Azure::Web::Mgmt::V2018_02_01::Models::UsageState
        DomainStatus = Azure::Web::Mgmt::V2018_02_01::Models::DomainStatus
        DnsType = Azure::Web::Mgmt::V2018_02_01::Models::DnsType
        DomainType = Azure::Web::Mgmt::V2018_02_01::Models::DomainType
        MySqlMigrationType = Azure::Web::Mgmt::V2018_02_01::Models::MySqlMigrationType
        IssueType = Azure::Web::Mgmt::V2018_02_01::Models::IssueType
        AppServiceEnvironmentCollection = Azure::Web::Mgmt::V2018_02_01::Models::AppServiceEnvironmentCollection
        HostingEnvironmentDiagnostics = Azure::Web::Mgmt::V2018_02_01::Models::HostingEnvironmentDiagnostics
        AddressResponse = Azure::Web::Mgmt::V2018_02_01::Models::AddressResponse
        SkuInfoCollection = Azure::Web::Mgmt::V2018_02_01::Models::SkuInfoCollection
        ResourceCollection = Azure::Web::Mgmt::V2018_02_01::Models::ResourceCollection
        ManagedServiceIdentity = Azure::Web::Mgmt::V2018_02_01::Models::ManagedServiceIdentity
        WorkerPoolCollection = Azure::Web::Mgmt::V2018_02_01::Models::WorkerPoolCollection
        HybridConnectionCollection = Azure::Web::Mgmt::V2018_02_01::Models::HybridConnectionCollection
        SkuInfo = Azure::Web::Mgmt::V2018_02_01::Models::SkuInfo
        UsageCollection = Azure::Web::Mgmt::V2018_02_01::Models::UsageCollection
        MetricAvailabilily = Azure::Web::Mgmt::V2018_02_01::Models::MetricAvailabilily
        StampCapacityCollection = Azure::Web::Mgmt::V2018_02_01::Models::StampCapacityCollection
        AppServiceEnvironmentResource = Azure::Web::Mgmt::V2018_02_01::Models::AppServiceEnvironmentResource
        AppServiceEnvironmentPatchResource = Azure::Web::Mgmt::V2018_02_01::Models::AppServiceEnvironmentPatchResource
        MetricDefinition = Azure::Web::Mgmt::V2018_02_01::Models::MetricDefinition
        WorkerPoolResource = Azure::Web::Mgmt::V2018_02_01::Models::WorkerPoolResource
        AppServicePlanPatchResource = Azure::Web::Mgmt::V2018_02_01::Models::AppServicePlanPatchResource
        HybridConnectionLimits = Azure::Web::Mgmt::V2018_02_01::Models::HybridConnectionLimits
        HostType = Azure::Web::Mgmt::V2018_02_01::Models::HostType
        AppServicePlanRestrictions = Azure::Web::Mgmt::V2018_02_01::Models::AppServicePlanRestrictions
        InAvailabilityReasonType = Azure::Web::Mgmt::V2018_02_01::Models::InAvailabilityReasonType
        BuiltInAuthenticationProvider = Azure::Web::Mgmt::V2018_02_01::Models::BuiltInAuthenticationProvider
        ValidateResourceTypes = Azure::Web::Mgmt::V2018_02_01::Models::ValidateResourceTypes
        SiteExtensionType = Azure::Web::Mgmt::V2018_02_01::Models::SiteExtensionType
        TriggeredWebJobStatus = Azure::Web::Mgmt::V2018_02_01::Models::TriggeredWebJobStatus
        LogLevel = Azure::Web::Mgmt::V2018_02_01::Models::LogLevel
        BackupItemStatus = Azure::Web::Mgmt::V2018_02_01::Models::BackupItemStatus
        DatabaseType = Azure::Web::Mgmt::V2018_02_01::Models::DatabaseType
        FrequencyUnit = Azure::Web::Mgmt::V2018_02_01::Models::FrequencyUnit
        ResourceScopeType = Azure::Web::Mgmt::V2018_02_01::Models::ResourceScopeType
        Contact = Azure::Web::Mgmt::V2018_02_01::Models::Contact
        DnsVerificationTestResult = Azure::Web::Mgmt::V2018_02_01::Models::DnsVerificationTestResult
        AzureResourceType = Azure::Web::Mgmt::V2018_02_01::Models::AzureResourceType
        CustomHostNameDnsRecordType = Azure::Web::Mgmt::V2018_02_01::Models::CustomHostNameDnsRecordType
        MSDeployLogEntryType = Azure::Web::Mgmt::V2018_02_01::Models::MSDeployLogEntryType
        MSDeployProvisioningState = Azure::Web::Mgmt::V2018_02_01::Models::MSDeployProvisioningState
        PublicCertificateLocation = Azure::Web::Mgmt::V2018_02_01::Models::PublicCertificateLocation
        UnauthenticatedClientAction = Azure::Web::Mgmt::V2018_02_01::Models::UnauthenticatedClientAction
        CloneAbilityResult = Azure::Web::Mgmt::V2018_02_01::Models::CloneAbilityResult
        NotificationLevel = Azure::Web::Mgmt::V2018_02_01::Models::NotificationLevel
        SkuName = Azure::Web::Mgmt::V2018_02_01::Models::SkuName
        BackupRestoreOperationType = Azure::Web::Mgmt::V2018_02_01::Models::BackupRestoreOperationType
        ContinuousWebJobStatus = Azure::Web::Mgmt::V2018_02_01::Models::ContinuousWebJobStatus
        Usage = Azure::Web::Mgmt::V2018_02_01::Models::Usage
        Identifier = Azure::Web::Mgmt::V2018_02_01::Models::Identifier
      end

      class WebManagementClass
        attr_reader :app_service_certificate_orders, :provider, :certificate_registration_provider, :top_level_domains, :domain_registration_provider, :domains, :app_service_environments, :app_service_plans, :web_apps, :certificates, :deleted_web_apps, :diagnostics, :recommendations, :resource_health_metadata_operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Web::Mgmt::V2018_02_01::WebSiteManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @app_service_certificate_orders = @client_0.app_service_certificate_orders
          @provider = @client_0.provider
          @certificate_registration_provider = @client_0.certificate_registration_provider
          @top_level_domains = @client_0.top_level_domains
          @domain_registration_provider = @client_0.domain_registration_provider
          @domains = @client_0.domains
          @app_service_environments = @client_0.app_service_environments
          @app_service_plans = @client_0.app_service_plans
          @web_apps = @client_0.web_apps
          @certificates = @client_0.certificates
          @deleted_web_apps = @client_0.deleted_web_apps
          @diagnostics = @client_0.diagnostics
          @recommendations = @client_0.recommendations
          @resource_health_metadata_operations = @client_0.resource_health_metadata_operations

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Web/Mgmt"
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
          def dimension
            Azure::Web::Mgmt::V2018_02_01::Models::Dimension
          end
          def metric_specification
            Azure::Web::Mgmt::V2018_02_01::Models::MetricSpecification
          end
          def operation_status
            Azure::Web::Mgmt::V2018_02_01::Models::OperationStatus
          end
          def deployment
            Azure::Web::Mgmt::V2018_02_01::Models::Deployment
          end
          def resource
            Azure::Web::Mgmt::V2018_02_01::Models::Resource
          end
          def snapshot
            Azure::Web::Mgmt::V2018_02_01::Models::Snapshot
          end
          def certificate
            Azure::Web::Mgmt::V2018_02_01::Models::Certificate
          end
          def azure_table_storage_application_logs_config
            Azure::Web::Mgmt::V2018_02_01::Models::AzureTableStorageApplicationLogsConfig
          end
          def application_logs_config
            Azure::Web::Mgmt::V2018_02_01::Models::ApplicationLogsConfig
          end
          def database_backup_setting
            Azure::Web::Mgmt::V2018_02_01::Models::DatabaseBackupSetting
          end
          def backup_item_collection
            Azure::Web::Mgmt::V2018_02_01::Models::BackupItemCollection
          end
          def process_info_collection
            Azure::Web::Mgmt::V2018_02_01::Models::ProcessInfoCollection
          end
          def conn_string_value_type_pair
            Azure::Web::Mgmt::V2018_02_01::Models::ConnStringValueTypePair
          end
          def process_module_info_collection
            Azure::Web::Mgmt::V2018_02_01::Models::ProcessModuleInfoCollection
          end
          def process_thread_info_collection
            Azure::Web::Mgmt::V2018_02_01::Models::ProcessThreadInfoCollection
          end
          def csm_publishing_profile_options
            Azure::Web::Mgmt::V2018_02_01::Models::CsmPublishingProfileOptions
          end
          def web_app_instance_collection
            Azure::Web::Mgmt::V2018_02_01::Models::WebAppInstanceCollection
          end
          def public_certificate_collection
            Azure::Web::Mgmt::V2018_02_01::Models::PublicCertificateCollection
          end
          def triggered_web_job_collection
            Azure::Web::Mgmt::V2018_02_01::Models::TriggeredWebJobCollection
          end
          def enabled_config
            Azure::Web::Mgmt::V2018_02_01::Models::EnabledConfig
          end
          def triggered_job_history_collection
            Azure::Web::Mgmt::V2018_02_01::Models::TriggeredJobHistoryCollection
          end
          def snapshot_collection
            Azure::Web::Mgmt::V2018_02_01::Models::SnapshotCollection
          end
          def site_cloneability_criterion
            Azure::Web::Mgmt::V2018_02_01::Models::SiteCloneabilityCriterion
          end
          def host_name_binding_collection
            Azure::Web::Mgmt::V2018_02_01::Models::HostNameBindingCollection
          end
          def site_cloneability
            Azure::Web::Mgmt::V2018_02_01::Models::SiteCloneability
          end
          def perf_mon_set
            Azure::Web::Mgmt::V2018_02_01::Models::PerfMonSet
          end
          def perf_mon_counter_collection
            Azure::Web::Mgmt::V2018_02_01::Models::PerfMonCounterCollection
          end
          def web_job_collection
            Azure::Web::Mgmt::V2018_02_01::Models::WebJobCollection
          end
          def top_level_domain_collection
            Azure::Web::Mgmt::V2018_02_01::Models::TopLevelDomainCollection
          end
          def file_system_application_logs_config
            Azure::Web::Mgmt::V2018_02_01::Models::FileSystemApplicationLogsConfig
          end
          def certificate_details
            Azure::Web::Mgmt::V2018_02_01::Models::CertificateDetails
          end
          def app_service_certificate_order_collection
            Azure::Web::Mgmt::V2018_02_01::Models::AppServiceCertificateOrderCollection
          end
          def azure_blob_storage_http_logs_config
            Azure::Web::Mgmt::V2018_02_01::Models::AzureBlobStorageHttpLogsConfig
          end
          def site_seal_request
            Azure::Web::Mgmt::V2018_02_01::Models::SiteSealRequest
          end
          def snapshot_recovery_source
            Azure::Web::Mgmt::V2018_02_01::Models::SnapshotRecoverySource
          end
          def azure_storage_info_value
            Azure::Web::Mgmt::V2018_02_01::Models::AzureStorageInfoValue
          end
          def app_service_certificate
            Azure::Web::Mgmt::V2018_02_01::Models::AppServiceCertificate
          end
          def slot_difference_collection
            Azure::Web::Mgmt::V2018_02_01::Models::SlotDifferenceCollection
          end
          def http_logs_config
            Azure::Web::Mgmt::V2018_02_01::Models::HttpLogsConfig
          end
          def site_config_resource_collection
            Azure::Web::Mgmt::V2018_02_01::Models::SiteConfigResourceCollection
          end
          def deployment_collection
            Azure::Web::Mgmt::V2018_02_01::Models::DeploymentCollection
          end
          def perf_mon_sample
            Azure::Web::Mgmt::V2018_02_01::Models::PerfMonSample
          end
          def perf_mon_response
            Azure::Web::Mgmt::V2018_02_01::Models::PerfMonResponse
          end
          def site_configuration_snapshot_info_collection
            Azure::Web::Mgmt::V2018_02_01::Models::SiteConfigurationSnapshotInfoCollection
          end
          def csm_slot_entity
            Azure::Web::Mgmt::V2018_02_01::Models::CsmSlotEntity
          end
          def domain_purchase_consent
            Azure::Web::Mgmt::V2018_02_01::Models::DomainPurchaseConsent
          end
          def domain_availablility_check_result
            Azure::Web::Mgmt::V2018_02_01::Models::DomainAvailablilityCheckResult
          end
          def site_extension_info_collection
            Azure::Web::Mgmt::V2018_02_01::Models::SiteExtensionInfoCollection
          end
          def domain_ownership_identifier_collection
            Azure::Web::Mgmt::V2018_02_01::Models::DomainOwnershipIdentifierCollection
          end
          def domain_recommendation_search_parameters
            Azure::Web::Mgmt::V2018_02_01::Models::DomainRecommendationSearchParameters
          end
          def tld_legal_agreement
            Azure::Web::Mgmt::V2018_02_01::Models::TldLegalAgreement
          end
          def app_service_certificate_collection
            Azure::Web::Mgmt::V2018_02_01::Models::AppServiceCertificateCollection
          end
          def domain_control_center_sso_request
            Azure::Web::Mgmt::V2018_02_01::Models::DomainControlCenterSsoRequest
          end
          def network_trace
            Azure::Web::Mgmt::V2018_02_01::Models::NetworkTrace
          end
          def msdeploy_log_entry
            Azure::Web::Mgmt::V2018_02_01::Models::MSDeployLogEntry
          end
          def backup_schedule
            Azure::Web::Mgmt::V2018_02_01::Models::BackupSchedule
          end
          def continuous_web_job_collection
            Azure::Web::Mgmt::V2018_02_01::Models::ContinuousWebJobCollection
          end
          def private_access_virtual_network
            Azure::Web::Mgmt::V2018_02_01::Models::PrivateAccessVirtualNetwork
          end
          def file_system_http_logs_config
            Azure::Web::Mgmt::V2018_02_01::Models::FileSystemHttpLogsConfig
          end
          def host_name
            Azure::Web::Mgmt::V2018_02_01::Models::HostName
          end
          def domain_collection
            Azure::Web::Mgmt::V2018_02_01::Models::DomainCollection
          end
          def tld_legal_agreement_collection
            Azure::Web::Mgmt::V2018_02_01::Models::TldLegalAgreementCollection
          end
          def private_access_subnet
            Azure::Web::Mgmt::V2018_02_01::Models::PrivateAccessSubnet
          end
          def site_seal
            Azure::Web::Mgmt::V2018_02_01::Models::SiteSeal
          end
          def name_identifier_collection
            Azure::Web::Mgmt::V2018_02_01::Models::NameIdentifierCollection
          end
          def address
            Azure::Web::Mgmt::V2018_02_01::Models::Address
          end
          def top_level_domain_agreement_option
            Azure::Web::Mgmt::V2018_02_01::Models::TopLevelDomainAgreementOption
          end
          def azure_blob_storage_application_logs_config
            Azure::Web::Mgmt::V2018_02_01::Models::AzureBlobStorageApplicationLogsConfig
          end
          def function_envelope_collection
            Azure::Web::Mgmt::V2018_02_01::Models::FunctionEnvelopeCollection
          end
          def app_service_certificate_order_patch_resource
            Azure::Web::Mgmt::V2018_02_01::Models::AppServiceCertificateOrderPatchResource
          end
          def app_service_certificate_patch_resource
            Azure::Web::Mgmt::V2018_02_01::Models::AppServiceCertificatePatchResource
          end
          def certificate_email
            Azure::Web::Mgmt::V2018_02_01::Models::CertificateEmail
          end
          def certificate_order_action
            Azure::Web::Mgmt::V2018_02_01::Models::CertificateOrderAction
          end
          def app_service_certificate_resource
            Azure::Web::Mgmt::V2018_02_01::Models::AppServiceCertificateResource
          end
          def app_service_certificate_order
            Azure::Web::Mgmt::V2018_02_01::Models::AppServiceCertificateOrder
          end
          def domain_ownership_identifier
            Azure::Web::Mgmt::V2018_02_01::Models::DomainOwnershipIdentifier
          end
          def domain_patch_resource
            Azure::Web::Mgmt::V2018_02_01::Models::DomainPatchResource
          end
          def top_level_domain
            Azure::Web::Mgmt::V2018_02_01::Models::TopLevelDomain
          end
          def azure_storage_property_dictionary_resource
            Azure::Web::Mgmt::V2018_02_01::Models::AzureStoragePropertyDictionaryResource
          end
          def reissue_certificate_order_request
            Azure::Web::Mgmt::V2018_02_01::Models::ReissueCertificateOrderRequest
          end
          def renew_certificate_order_request
            Azure::Web::Mgmt::V2018_02_01::Models::RenewCertificateOrderRequest
          end
          def backup_item
            Azure::Web::Mgmt::V2018_02_01::Models::BackupItem
          end
          def default_error_response_error_details_item
            Azure::Web::Mgmt::V2018_02_01::Models::DefaultErrorResponseErrorDetailsItem
          end
          def hosting_environment_profile
            Azure::Web::Mgmt::V2018_02_01::Models::HostingEnvironmentProfile
          end
          def default_error_response_error
            Azure::Web::Mgmt::V2018_02_01::Models::DefaultErrorResponseError
          end
          def certificate_collection
            Azure::Web::Mgmt::V2018_02_01::Models::CertificateCollection
          end
          def default_error_response
            Azure::Web::Mgmt::V2018_02_01::Models::DefaultErrorResponse
          end
          def csm_operation_display
            Azure::Web::Mgmt::V2018_02_01::Models::CsmOperationDisplay
          end
          def validate_response
            Azure::Web::Mgmt::V2018_02_01::Models::ValidateResponse
          end
          def metric_availability
            Azure::Web::Mgmt::V2018_02_01::Models::MetricAvailability
          end
          def msdeploy_log
            Azure::Web::Mgmt::V2018_02_01::Models::MSDeployLog
          end
          def resource_metric_availability
            Azure::Web::Mgmt::V2018_02_01::Models::ResourceMetricAvailability
          end
          def source_control_collection
            Azure::Web::Mgmt::V2018_02_01::Models::SourceControlCollection
          end
          def csm_operation_description_properties
            Azure::Web::Mgmt::V2018_02_01::Models::CsmOperationDescriptionProperties
          end
          def resource_name_availability_request
            Azure::Web::Mgmt::V2018_02_01::Models::ResourceNameAvailabilityRequest
          end
          def csm_operation_description
            Azure::Web::Mgmt::V2018_02_01::Models::CsmOperationDescription
          end
          def premier_add_on_offer_collection
            Azure::Web::Mgmt::V2018_02_01::Models::PremierAddOnOfferCollection
          end
          def csm_operation_collection
            Azure::Web::Mgmt::V2018_02_01::Models::CsmOperationCollection
          end
          def localizable_string
            Azure::Web::Mgmt::V2018_02_01::Models::LocalizableString
          end
          def cloning_info
            Azure::Web::Mgmt::V2018_02_01::Models::CloningInfo
          end
          def csm_usage_quota
            Azure::Web::Mgmt::V2018_02_01::Models::CsmUsageQuota
          end
          def api_definition_info
            Azure::Web::Mgmt::V2018_02_01::Models::ApiDefinitionInfo
          end
          def csm_usage_quota_collection
            Azure::Web::Mgmt::V2018_02_01::Models::CsmUsageQuotaCollection
          end
          def auto_heal_custom_action
            Azure::Web::Mgmt::V2018_02_01::Models::AutoHealCustomAction
          end
          def error_entity
            Azure::Web::Mgmt::V2018_02_01::Models::ErrorEntity
          end
          def slow_requests_based_trigger
            Azure::Web::Mgmt::V2018_02_01::Models::SlowRequestsBasedTrigger
          end
          def status_codes_based_trigger
            Azure::Web::Mgmt::V2018_02_01::Models::StatusCodesBasedTrigger
          end
          def requests_based_trigger
            Azure::Web::Mgmt::V2018_02_01::Models::RequestsBasedTrigger
          end
          def application_stack
            Azure::Web::Mgmt::V2018_02_01::Models::ApplicationStack
          end
          def auto_heal_rules
            Azure::Web::Mgmt::V2018_02_01::Models::AutoHealRules
          end
          def stack_major_version
            Azure::Web::Mgmt::V2018_02_01::Models::StackMajorVersion
          end
          def ramp_up_rule
            Azure::Web::Mgmt::V2018_02_01::Models::RampUpRule
          end
          def deployment_locations
            Azure::Web::Mgmt::V2018_02_01::Models::DeploymentLocations
          end
          def virtual_directory
            Azure::Web::Mgmt::V2018_02_01::Models::VirtualDirectory
          end
          def identifier_collection
            Azure::Web::Mgmt::V2018_02_01::Models::IdentifierCollection
          end
          def handler_mapping
            Azure::Web::Mgmt::V2018_02_01::Models::HandlerMapping
          end
          def name_identifier
            Azure::Web::Mgmt::V2018_02_01::Models::NameIdentifier
          end
          def conn_string_info
            Azure::Web::Mgmt::V2018_02_01::Models::ConnStringInfo
          end
          def site_config
            Azure::Web::Mgmt::V2018_02_01::Models::SiteConfig
          end
          def resource_metric_property
            Azure::Web::Mgmt::V2018_02_01::Models::ResourceMetricProperty
          end
          def global_csm_sku_description
            Azure::Web::Mgmt::V2018_02_01::Models::GlobalCsmSkuDescription
          end
          def resource_metric_value
            Azure::Web::Mgmt::V2018_02_01::Models::ResourceMetricValue
          end
          def sku_capacity
            Azure::Web::Mgmt::V2018_02_01::Models::SkuCapacity
          end
          def resource_metric
            Azure::Web::Mgmt::V2018_02_01::Models::ResourceMetric
          end
          def geo_region_collection
            Azure::Web::Mgmt::V2018_02_01::Models::GeoRegionCollection
          end
          def resource_metric_collection
            Azure::Web::Mgmt::V2018_02_01::Models::ResourceMetricCollection
          end
          def virtual_network_profile
            Azure::Web::Mgmt::V2018_02_01::Models::VirtualNetworkProfile
          end
          def resource_metric_definition_collection
            Azure::Web::Mgmt::V2018_02_01::Models::ResourceMetricDefinitionCollection
          end
          def virtual_ipmapping
            Azure::Web::Mgmt::V2018_02_01::Models::VirtualIPMapping
          end
          def web_app_collection
            Azure::Web::Mgmt::V2018_02_01::Models::WebAppCollection
          end
          def network_access_control_entry
            Azure::Web::Mgmt::V2018_02_01::Models::NetworkAccessControlEntry
          end
          def deleted_site
            Azure::Web::Mgmt::V2018_02_01::Models::DeletedSite
          end
          def app_service_plan_collection
            Azure::Web::Mgmt::V2018_02_01::Models::AppServicePlanCollection
          end
          def deleted_web_app_collection
            Azure::Web::Mgmt::V2018_02_01::Models::DeletedWebAppCollection
          end
          def validate_response_error
            Azure::Web::Mgmt::V2018_02_01::Models::ValidateResponseError
          end
          def solution
            Azure::Web::Mgmt::V2018_02_01::Models::Solution
          end
          def resource_metric_name
            Azure::Web::Mgmt::V2018_02_01::Models::ResourceMetricName
          end
          def detector_abnormal_time_period
            Azure::Web::Mgmt::V2018_02_01::Models::DetectorAbnormalTimePeriod
          end
          def resource_name_availability
            Azure::Web::Mgmt::V2018_02_01::Models::ResourceNameAvailability
          end
          def abnormal_time_period
            Azure::Web::Mgmt::V2018_02_01::Models::AbnormalTimePeriod
          end
          def slot_swap_status
            Azure::Web::Mgmt::V2018_02_01::Models::SlotSwapStatus
          end
          def hosting_environment_deployment_info
            Azure::Web::Mgmt::V2018_02_01::Models::HostingEnvironmentDeploymentInfo
          end
          def cors_settings
            Azure::Web::Mgmt::V2018_02_01::Models::CorsSettings
          end
          def diagnostic_metric_sample
            Azure::Web::Mgmt::V2018_02_01::Models::DiagnosticMetricSample
          end
          def auto_heal_triggers
            Azure::Web::Mgmt::V2018_02_01::Models::AutoHealTriggers
          end
          def diagnostic_metric_set
            Azure::Web::Mgmt::V2018_02_01::Models::DiagnosticMetricSet
          end
          def experiments
            Azure::Web::Mgmt::V2018_02_01::Models::Experiments
          end
          def data_source
            Azure::Web::Mgmt::V2018_02_01::Models::DataSource
          end
          def site_machine_key
            Azure::Web::Mgmt::V2018_02_01::Models::SiteMachineKey
          end
          def response_meta_data
            Azure::Web::Mgmt::V2018_02_01::Models::ResponseMetaData
          end
          def host_name_ssl_state
            Azure::Web::Mgmt::V2018_02_01::Models::HostNameSslState
          end
          def analysis_data
            Azure::Web::Mgmt::V2018_02_01::Models::AnalysisData
          end
          def sku_description
            Azure::Web::Mgmt::V2018_02_01::Models::SkuDescription
          end
          def csm_move_resource_envelope
            Azure::Web::Mgmt::V2018_02_01::Models::CsmMoveResourceEnvelope
          end
          def worker_pool
            Azure::Web::Mgmt::V2018_02_01::Models::WorkerPool
          end
          def data_table_response_column
            Azure::Web::Mgmt::V2018_02_01::Models::DataTableResponseColumn
          end
          def app_service_environment
            Azure::Web::Mgmt::V2018_02_01::Models::AppServiceEnvironment
          end
          def data_table_response_object
            Azure::Web::Mgmt::V2018_02_01::Models::DataTableResponseObject
          end
          def validate_request
            Azure::Web::Mgmt::V2018_02_01::Models::ValidateRequest
          end
          def detector_info
            Azure::Web::Mgmt::V2018_02_01::Models::DetectorInfo
          end
          def proxy_only_resource
            Azure::Web::Mgmt::V2018_02_01::Models::ProxyOnlyResource
          end
          def rendering
            Azure::Web::Mgmt::V2018_02_01::Models::Rendering
          end
          def auto_heal_actions
            Azure::Web::Mgmt::V2018_02_01::Models::AutoHealActions
          end
          def diagnostic_data
            Azure::Web::Mgmt::V2018_02_01::Models::DiagnosticData
          end
          def virtual_application
            Azure::Web::Mgmt::V2018_02_01::Models::VirtualApplication
          end
          def billing_meter_collection
            Azure::Web::Mgmt::V2018_02_01::Models::BillingMeterCollection
          end
          def capability
            Azure::Web::Mgmt::V2018_02_01::Models::Capability
          end
          def detector_response_collection
            Azure::Web::Mgmt::V2018_02_01::Models::DetectorResponseCollection
          end
          def stamp_capacity
            Azure::Web::Mgmt::V2018_02_01::Models::StampCapacity
          end
          def resource_health_metadata_collection
            Azure::Web::Mgmt::V2018_02_01::Models::ResourceHealthMetadataCollection
          end
          def sku_infos
            Azure::Web::Mgmt::V2018_02_01::Models::SkuInfos
          end
          def diagnostic_analysis_collection
            Azure::Web::Mgmt::V2018_02_01::Models::DiagnosticAnalysisCollection
          end
          def site_limits
            Azure::Web::Mgmt::V2018_02_01::Models::SiteLimits
          end
          def recommendation_collection
            Azure::Web::Mgmt::V2018_02_01::Models::RecommendationCollection
          end
          def diagnostic_category_collection
            Azure::Web::Mgmt::V2018_02_01::Models::DiagnosticCategoryCollection
          end
          def ip_security_restriction
            Azure::Web::Mgmt::V2018_02_01::Models::IpSecurityRestriction
          end
          def diagnostic_detector_collection
            Azure::Web::Mgmt::V2018_02_01::Models::DiagnosticDetectorCollection
          end
          def application_stack_collection
            Azure::Web::Mgmt::V2018_02_01::Models::ApplicationStackCollection
          end
          def name_value_pair
            Azure::Web::Mgmt::V2018_02_01::Models::NameValuePair
          end
          def stack_minor_version
            Azure::Web::Mgmt::V2018_02_01::Models::StackMinorVersion
          end
          def certificate_patch_resource
            Azure::Web::Mgmt::V2018_02_01::Models::CertificatePatchResource
          end
          def vnet_route
            Azure::Web::Mgmt::V2018_02_01::Models::VnetRoute
          end
          def vnet_info
            Azure::Web::Mgmt::V2018_02_01::Models::VnetInfo
          end
          def vnet_gateway
            Azure::Web::Mgmt::V2018_02_01::Models::VnetGateway
          end
          def user
            Azure::Web::Mgmt::V2018_02_01::Models::User
          end
          def custom_hostname_analysis_result
            Azure::Web::Mgmt::V2018_02_01::Models::CustomHostnameAnalysisResult
          end
          def resource_metric_definition
            Azure::Web::Mgmt::V2018_02_01::Models::ResourceMetricDefinition
          end
          def push_settings
            Azure::Web::Mgmt::V2018_02_01::Models::PushSettings
          end
          def hybrid_connection_key
            Azure::Web::Mgmt::V2018_02_01::Models::HybridConnectionKey
          end
          def hybrid_connection
            Azure::Web::Mgmt::V2018_02_01::Models::HybridConnection
          end
          def site
            Azure::Web::Mgmt::V2018_02_01::Models::Site
          end
          def app_service_plan
            Azure::Web::Mgmt::V2018_02_01::Models::AppServicePlan
          end
          def detector_definition
            Azure::Web::Mgmt::V2018_02_01::Models::DetectorDefinition
          end
          def analysis_definition
            Azure::Web::Mgmt::V2018_02_01::Models::AnalysisDefinition
          end
          def detector_response
            Azure::Web::Mgmt::V2018_02_01::Models::DetectorResponse
          end
          def diagnostic_analysis
            Azure::Web::Mgmt::V2018_02_01::Models::DiagnosticAnalysis
          end
          def domain
            Azure::Web::Mgmt::V2018_02_01::Models::Domain
          end
          def diagnostic_category
            Azure::Web::Mgmt::V2018_02_01::Models::DiagnosticCategory
          end
          def diagnostic_detector_response
            Azure::Web::Mgmt::V2018_02_01::Models::DiagnosticDetectorResponse
          end
          def recommendation
            Azure::Web::Mgmt::V2018_02_01::Models::Recommendation
          end
          def recommendation_rule
            Azure::Web::Mgmt::V2018_02_01::Models::RecommendationRule
          end
          def billing_meter
            Azure::Web::Mgmt::V2018_02_01::Models::BillingMeter
          end
          def geo_region
            Azure::Web::Mgmt::V2018_02_01::Models::GeoRegion
          end
          def premier_add_on_offer
            Azure::Web::Mgmt::V2018_02_01::Models::PremierAddOnOffer
          end
          def source_control
            Azure::Web::Mgmt::V2018_02_01::Models::SourceControl
          end
          def vnet_parameters
            Azure::Web::Mgmt::V2018_02_01::Models::VnetParameters
          end
          def vnet_validation_test_failure
            Azure::Web::Mgmt::V2018_02_01::Models::VnetValidationTestFailure
          end
          def vnet_validation_failure_details
            Azure::Web::Mgmt::V2018_02_01::Models::VnetValidationFailureDetails
          end
          def msdeploy_status
            Azure::Web::Mgmt::V2018_02_01::Models::MSDeployStatus
          end
          def migrate_my_sql_request
            Azure::Web::Mgmt::V2018_02_01::Models::MigrateMySqlRequest
          end
          def migrate_my_sql_status
            Azure::Web::Mgmt::V2018_02_01::Models::MigrateMySqlStatus
          end
          def relay_service_connection_entity
            Azure::Web::Mgmt::V2018_02_01::Models::RelayServiceConnectionEntity
          end
          def network_features
            Azure::Web::Mgmt::V2018_02_01::Models::NetworkFeatures
          end
          def premier_add_on
            Azure::Web::Mgmt::V2018_02_01::Models::PremierAddOn
          end
          def process_thread_info
            Azure::Web::Mgmt::V2018_02_01::Models::ProcessThreadInfo
          end
          def process_module_info
            Azure::Web::Mgmt::V2018_02_01::Models::ProcessModuleInfo
          end
          def process_info
            Azure::Web::Mgmt::V2018_02_01::Models::ProcessInfo
          end
          def backup_request
            Azure::Web::Mgmt::V2018_02_01::Models::BackupRequest
          end
          def operation
            Azure::Web::Mgmt::V2018_02_01::Models::Operation
          end
          def continuous_web_job
            Azure::Web::Mgmt::V2018_02_01::Models::ContinuousWebJob
          end
          def site_auth_settings
            Azure::Web::Mgmt::V2018_02_01::Models::SiteAuthSettings
          end
          def function_envelope
            Azure::Web::Mgmt::V2018_02_01::Models::FunctionEnvelope
          end
          def function_secrets
            Azure::Web::Mgmt::V2018_02_01::Models::FunctionSecrets
          end
          def host_name_binding
            Azure::Web::Mgmt::V2018_02_01::Models::HostNameBinding
          end
          def msdeploy
            Azure::Web::Mgmt::V2018_02_01::Models::MSDeploy
          end
          def site_logs_config
            Azure::Web::Mgmt::V2018_02_01::Models::SiteLogsConfig
          end
          def site_patch_resource
            Azure::Web::Mgmt::V2018_02_01::Models::SitePatchResource
          end
          def site_php_error_log_flag
            Azure::Web::Mgmt::V2018_02_01::Models::SitePhpErrorLogFlag
          end
          def site_source_control
            Azure::Web::Mgmt::V2018_02_01::Models::SiteSourceControl
          end
          def log_specification
            Azure::Web::Mgmt::V2018_02_01::Models::LogSpecification
          end
          def slot_difference
            Azure::Web::Mgmt::V2018_02_01::Models::SlotDifference
          end
          def service_specification
            Azure::Web::Mgmt::V2018_02_01::Models::ServiceSpecification
          end
          def storage_migration_response
            Azure::Web::Mgmt::V2018_02_01::Models::StorageMigrationResponse
          end
          def string_dictionary
            Azure::Web::Mgmt::V2018_02_01::Models::StringDictionary
          end
          def triggered_job_run
            Azure::Web::Mgmt::V2018_02_01::Models::TriggeredJobRun
          end
          def deleted_app_restore_request
            Azure::Web::Mgmt::V2018_02_01::Models::DeletedAppRestoreRequest
          end
          def premier_add_on_patch_resource
            Azure::Web::Mgmt::V2018_02_01::Models::PremierAddOnPatchResource
          end
          def connection_string_dictionary
            Azure::Web::Mgmt::V2018_02_01::Models::ConnectionStringDictionary
          end
          def snapshot_restore_request
            Azure::Web::Mgmt::V2018_02_01::Models::SnapshotRestoreRequest
          end
          def site_config_resource
            Azure::Web::Mgmt::V2018_02_01::Models::SiteConfigResource
          end
          def site_configuration_snapshot_info
            Azure::Web::Mgmt::V2018_02_01::Models::SiteConfigurationSnapshotInfo
          end
          def site_extension_info
            Azure::Web::Mgmt::V2018_02_01::Models::SiteExtensionInfo
          end
          def site_instance
            Azure::Web::Mgmt::V2018_02_01::Models::SiteInstance
          end
          def ip_filter_tag
            Azure::Web::Mgmt::V2018_02_01::Models::IpFilterTag
          end
          def key_vault_secret_status
            Azure::Web::Mgmt::V2018_02_01::Models::KeyVaultSecretStatus
          end
          def resource_health_metadata
            Azure::Web::Mgmt::V2018_02_01::Models::ResourceHealthMetadata
          end
          def managed_service_identity_type
            Azure::Web::Mgmt::V2018_02_01::Models::ManagedServiceIdentityType
          end
          def slot_config_names_resource
            Azure::Web::Mgmt::V2018_02_01::Models::SlotConfigNamesResource
          end
          def connection_string_type
            Azure::Web::Mgmt::V2018_02_01::Models::ConnectionStringType
          end
          def storage_migration_options
            Azure::Web::Mgmt::V2018_02_01::Models::StorageMigrationOptions
          end
          def managed_pipeline_mode
            Azure::Web::Mgmt::V2018_02_01::Models::ManagedPipelineMode
          end
          def site_load_balancing
            Azure::Web::Mgmt::V2018_02_01::Models::SiteLoadBalancing
          end
          def supported_tls_versions
            Azure::Web::Mgmt::V2018_02_01::Models::SupportedTlsVersions
          end
          def triggered_job_history
            Azure::Web::Mgmt::V2018_02_01::Models::TriggeredJobHistory
          end
          def public_certificate
            Azure::Web::Mgmt::V2018_02_01::Models::PublicCertificate
          end
          def restore_request
            Azure::Web::Mgmt::V2018_02_01::Models::RestoreRequest
          end
          def private_access
            Azure::Web::Mgmt::V2018_02_01::Models::PrivateAccess
          end
          def status_options
            Azure::Web::Mgmt::V2018_02_01::Models::StatusOptions
          end
          def swift_virtual_network
            Azure::Web::Mgmt::V2018_02_01::Models::SwiftVirtualNetwork
          end
          def certificate_product_type
            Azure::Web::Mgmt::V2018_02_01::Models::CertificateProductType
          end
          def provisioning_state
            Azure::Web::Mgmt::V2018_02_01::Models::ProvisioningState
          end
          def certificate_order_action_type
            Azure::Web::Mgmt::V2018_02_01::Models::CertificateOrderActionType
          end
          def ssl_state
            Azure::Web::Mgmt::V2018_02_01::Models::SslState
          end
          def azure_storage_type
            Azure::Web::Mgmt::V2018_02_01::Models::AzureStorageType
          end
          def route_type
            Azure::Web::Mgmt::V2018_02_01::Models::RouteType
          end
          def ftps_state
            Azure::Web::Mgmt::V2018_02_01::Models::FtpsState
          end
          def auto_heal_action_type
            Azure::Web::Mgmt::V2018_02_01::Models::AutoHealActionType
          end
          def host_name_type
            Azure::Web::Mgmt::V2018_02_01::Models::HostNameType
          end
          def scm_type
            Azure::Web::Mgmt::V2018_02_01::Models::ScmType
          end
          def compute_mode_options
            Azure::Web::Mgmt::V2018_02_01::Models::ComputeModeOptions
          end
          def worker_size_options
            Azure::Web::Mgmt::V2018_02_01::Models::WorkerSizeOptions
          end
          def access_control_entry_action
            Azure::Web::Mgmt::V2018_02_01::Models::AccessControlEntryAction
          end
          def solution_type
            Azure::Web::Mgmt::V2018_02_01::Models::SolutionType
          end
          def triggered_web_job
            Azure::Web::Mgmt::V2018_02_01::Models::TriggeredWebJob
          end
          def web_job
            Azure::Web::Mgmt::V2018_02_01::Models::WebJob
          end
          def site_availability_state
            Azure::Web::Mgmt::V2018_02_01::Models::SiteAvailabilityState
          end
          def channels
            Azure::Web::Mgmt::V2018_02_01::Models::Channels
          end
          def hosting_environment_status
            Azure::Web::Mgmt::V2018_02_01::Models::HostingEnvironmentStatus
          end
          def internal_load_balancing_mode
            Azure::Web::Mgmt::V2018_02_01::Models::InternalLoadBalancingMode
          end
          def check_name_resource_types
            Azure::Web::Mgmt::V2018_02_01::Models::CheckNameResourceTypes
          end
          def certificate_order_status
            Azure::Web::Mgmt::V2018_02_01::Models::CertificateOrderStatus
          end
          def web_job_type
            Azure::Web::Mgmt::V2018_02_01::Models::WebJobType
          end
          def publishing_profile_format
            Azure::Web::Mgmt::V2018_02_01::Models::PublishingProfileFormat
          end
          def rendering_type
            Azure::Web::Mgmt::V2018_02_01::Models::RenderingType
          end
          def azure_storage_state
            Azure::Web::Mgmt::V2018_02_01::Models::AzureStorageState
          end
          def usage_state
            Azure::Web::Mgmt::V2018_02_01::Models::UsageState
          end
          def domain_status
            Azure::Web::Mgmt::V2018_02_01::Models::DomainStatus
          end
          def dns_type
            Azure::Web::Mgmt::V2018_02_01::Models::DnsType
          end
          def domain_type
            Azure::Web::Mgmt::V2018_02_01::Models::DomainType
          end
          def my_sql_migration_type
            Azure::Web::Mgmt::V2018_02_01::Models::MySqlMigrationType
          end
          def issue_type
            Azure::Web::Mgmt::V2018_02_01::Models::IssueType
          end
          def app_service_environment_collection
            Azure::Web::Mgmt::V2018_02_01::Models::AppServiceEnvironmentCollection
          end
          def hosting_environment_diagnostics
            Azure::Web::Mgmt::V2018_02_01::Models::HostingEnvironmentDiagnostics
          end
          def address_response
            Azure::Web::Mgmt::V2018_02_01::Models::AddressResponse
          end
          def sku_info_collection
            Azure::Web::Mgmt::V2018_02_01::Models::SkuInfoCollection
          end
          def resource_collection
            Azure::Web::Mgmt::V2018_02_01::Models::ResourceCollection
          end
          def managed_service_identity
            Azure::Web::Mgmt::V2018_02_01::Models::ManagedServiceIdentity
          end
          def worker_pool_collection
            Azure::Web::Mgmt::V2018_02_01::Models::WorkerPoolCollection
          end
          def hybrid_connection_collection
            Azure::Web::Mgmt::V2018_02_01::Models::HybridConnectionCollection
          end
          def sku_info
            Azure::Web::Mgmt::V2018_02_01::Models::SkuInfo
          end
          def usage_collection
            Azure::Web::Mgmt::V2018_02_01::Models::UsageCollection
          end
          def metric_availabilily
            Azure::Web::Mgmt::V2018_02_01::Models::MetricAvailabilily
          end
          def stamp_capacity_collection
            Azure::Web::Mgmt::V2018_02_01::Models::StampCapacityCollection
          end
          def app_service_environment_resource
            Azure::Web::Mgmt::V2018_02_01::Models::AppServiceEnvironmentResource
          end
          def app_service_environment_patch_resource
            Azure::Web::Mgmt::V2018_02_01::Models::AppServiceEnvironmentPatchResource
          end
          def metric_definition
            Azure::Web::Mgmt::V2018_02_01::Models::MetricDefinition
          end
          def worker_pool_resource
            Azure::Web::Mgmt::V2018_02_01::Models::WorkerPoolResource
          end
          def app_service_plan_patch_resource
            Azure::Web::Mgmt::V2018_02_01::Models::AppServicePlanPatchResource
          end
          def hybrid_connection_limits
            Azure::Web::Mgmt::V2018_02_01::Models::HybridConnectionLimits
          end
          def host_type
            Azure::Web::Mgmt::V2018_02_01::Models::HostType
          end
          def app_service_plan_restrictions
            Azure::Web::Mgmt::V2018_02_01::Models::AppServicePlanRestrictions
          end
          def in_availability_reason_type
            Azure::Web::Mgmt::V2018_02_01::Models::InAvailabilityReasonType
          end
          def built_in_authentication_provider
            Azure::Web::Mgmt::V2018_02_01::Models::BuiltInAuthenticationProvider
          end
          def validate_resource_types
            Azure::Web::Mgmt::V2018_02_01::Models::ValidateResourceTypes
          end
          def site_extension_type
            Azure::Web::Mgmt::V2018_02_01::Models::SiteExtensionType
          end
          def triggered_web_job_status
            Azure::Web::Mgmt::V2018_02_01::Models::TriggeredWebJobStatus
          end
          def log_level
            Azure::Web::Mgmt::V2018_02_01::Models::LogLevel
          end
          def backup_item_status
            Azure::Web::Mgmt::V2018_02_01::Models::BackupItemStatus
          end
          def database_type
            Azure::Web::Mgmt::V2018_02_01::Models::DatabaseType
          end
          def frequency_unit
            Azure::Web::Mgmt::V2018_02_01::Models::FrequencyUnit
          end
          def resource_scope_type
            Azure::Web::Mgmt::V2018_02_01::Models::ResourceScopeType
          end
          def contact
            Azure::Web::Mgmt::V2018_02_01::Models::Contact
          end
          def dns_verification_test_result
            Azure::Web::Mgmt::V2018_02_01::Models::DnsVerificationTestResult
          end
          def azure_resource_type
            Azure::Web::Mgmt::V2018_02_01::Models::AzureResourceType
          end
          def custom_host_name_dns_record_type
            Azure::Web::Mgmt::V2018_02_01::Models::CustomHostNameDnsRecordType
          end
          def msdeploy_log_entry_type
            Azure::Web::Mgmt::V2018_02_01::Models::MSDeployLogEntryType
          end
          def msdeploy_provisioning_state
            Azure::Web::Mgmt::V2018_02_01::Models::MSDeployProvisioningState
          end
          def public_certificate_location
            Azure::Web::Mgmt::V2018_02_01::Models::PublicCertificateLocation
          end
          def unauthenticated_client_action
            Azure::Web::Mgmt::V2018_02_01::Models::UnauthenticatedClientAction
          end
          def clone_ability_result
            Azure::Web::Mgmt::V2018_02_01::Models::CloneAbilityResult
          end
          def notification_level
            Azure::Web::Mgmt::V2018_02_01::Models::NotificationLevel
          end
          def sku_name
            Azure::Web::Mgmt::V2018_02_01::Models::SkuName
          end
          def backup_restore_operation_type
            Azure::Web::Mgmt::V2018_02_01::Models::BackupRestoreOperationType
          end
          def continuous_web_job_status
            Azure::Web::Mgmt::V2018_02_01::Models::ContinuousWebJobStatus
          end
          def usage
            Azure::Web::Mgmt::V2018_02_01::Models::Usage
          end
          def identifier
            Azure::Web::Mgmt::V2018_02_01::Models::Identifier
          end
        end
      end
    end
  end
end
