# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_devtestlabs'

module Azure::DevTestLabs::Profiles::Latest
  module Mgmt
    ProviderOperations = Azure::DevTestLabs::Mgmt::V2018_09_15::ProviderOperations
    Labs = Azure::DevTestLabs::Mgmt::V2018_09_15::Labs
    Operations = Azure::DevTestLabs::Mgmt::V2018_09_15::Operations
    GlobalSchedules = Azure::DevTestLabs::Mgmt::V2018_09_15::GlobalSchedules
    ArtifactSources = Azure::DevTestLabs::Mgmt::V2018_09_15::ArtifactSources
    ArmTemplates = Azure::DevTestLabs::Mgmt::V2018_09_15::ArmTemplates
    Artifacts = Azure::DevTestLabs::Mgmt::V2018_09_15::Artifacts
    Costs = Azure::DevTestLabs::Mgmt::V2018_09_15::Costs
    CustomImages = Azure::DevTestLabs::Mgmt::V2018_09_15::CustomImages
    Formulas = Azure::DevTestLabs::Mgmt::V2018_09_15::Formulas
    GalleryImages = Azure::DevTestLabs::Mgmt::V2018_09_15::GalleryImages
    NotificationChannels = Azure::DevTestLabs::Mgmt::V2018_09_15::NotificationChannels
    PolicySets = Azure::DevTestLabs::Mgmt::V2018_09_15::PolicySets
    Policies = Azure::DevTestLabs::Mgmt::V2018_09_15::Policies
    Schedules = Azure::DevTestLabs::Mgmt::V2018_09_15::Schedules
    ServiceRunners = Azure::DevTestLabs::Mgmt::V2018_09_15::ServiceRunners
    Users = Azure::DevTestLabs::Mgmt::V2018_09_15::Users
    Disks = Azure::DevTestLabs::Mgmt::V2018_09_15::Disks
    Environments = Azure::DevTestLabs::Mgmt::V2018_09_15::Environments
    Secrets = Azure::DevTestLabs::Mgmt::V2018_09_15::Secrets
    ServiceFabrics = Azure::DevTestLabs::Mgmt::V2018_09_15::ServiceFabrics
    ServiceFabricSchedules = Azure::DevTestLabs::Mgmt::V2018_09_15::ServiceFabricSchedules
    VirtualMachines = Azure::DevTestLabs::Mgmt::V2018_09_15::VirtualMachines
    VirtualMachineSchedules = Azure::DevTestLabs::Mgmt::V2018_09_15::VirtualMachineSchedules
    VirtualNetworks = Azure::DevTestLabs::Mgmt::V2018_09_15::VirtualNetworks

    module Models
      InboundNatRule = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::InboundNatRule
      SharedPublicIpAddressConfiguration = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::SharedPublicIpAddressConfiguration
      DayDetails = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::DayDetails
      NetworkInterfaceProperties = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::NetworkInterfaceProperties
      NotificationSettings = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::NotificationSettings
      ScheduleCreationParameter = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ScheduleCreationParameter
      EnvironmentDeploymentPropertiesFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::EnvironmentDeploymentPropertiesFragment
      SubnetFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::SubnetFragment
      DayDetailsFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::DayDetailsFragment
      DtlEnvironmentList = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::DtlEnvironmentList
      NotificationSettingsFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::NotificationSettingsFragment
      EvaluatePoliciesProperties = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::EvaluatePoliciesProperties
      UserList = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::UserList
      EvaluatePoliciesRequest = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::EvaluatePoliciesRequest
      ArtifactInstallProperties = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ArtifactInstallProperties
      PolicyViolation = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::PolicyViolation
      ParametersValueFileInfo = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ParametersValueFileInfo
      PolicySetResult = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::PolicySetResult
      ArmTemplateInfo = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ArmTemplateInfo
      EvaluatePoliciesResponse = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::EvaluatePoliciesResponse
      ArmTemplateParameterProperties = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ArmTemplateParameterProperties
      Event = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::Event
      UserIdentityFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::UserIdentityFragment
      EventFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::EventFragment
      ArtifactDeploymentStatusPropertiesFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ArtifactDeploymentStatusPropertiesFragment
      ExportResourceUsageParameters = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ExportResourceUsageParameters
      ArtifactInstallPropertiesFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ArtifactInstallPropertiesFragment
      ExternalSubnet = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ExternalSubnet
      UserSecretStore = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::UserSecretStore
      ExternalSubnetFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ExternalSubnetFragment
      ArtifactSourceList = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ArtifactSourceList
      GalleryImageReference = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::GalleryImageReference
      AttachNewDataDiskOptions = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::AttachNewDataDiskOptions
      WeekDetails = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::WeekDetails
      BulkCreationParameters = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::BulkCreationParameters
      HourDetails = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::HourDetails
      PolicyList = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::PolicyList
      ComputeDataDiskFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ComputeDataDiskFragment
      Subnet = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::Subnet
      ComputeVmInstanceViewStatusFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ComputeVmInstanceViewStatusFragment
      LabVirtualMachineCreationParameter = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::LabVirtualMachineCreationParameter
      ComputeVmPropertiesFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ComputeVmPropertiesFragment
      FormulaPropertiesFromVm = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::FormulaPropertiesFromVm
      CostThresholdProperties = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::CostThresholdProperties
      ShutdownNotificationContent = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ShutdownNotificationContent
      LinuxOsInfo = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::LinuxOsInfo
      GalleryImageReferenceFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::GalleryImageReferenceFragment
      CustomImagePropertiesCustom = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::CustomImagePropertiesCustom
      InboundNatRuleFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::InboundNatRuleFragment
      CustomImagePropertiesFromPlan = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::CustomImagePropertiesFromPlan
      SharedPublicIpAddressConfigurationFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::SharedPublicIpAddressConfigurationFragment
      WindowsOsInfoFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::WindowsOsInfoFragment
      NetworkInterfacePropertiesFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::NetworkInterfacePropertiesFragment
      CustomImagePropertiesFromVmFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::CustomImagePropertiesFromVmFragment
      ScheduleCreationParameterFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ScheduleCreationParameterFragment
      DataDiskStorageTypeInfoFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::DataDiskStorageTypeInfoFragment
      LabVirtualMachineCreationParameterFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::LabVirtualMachineCreationParameterFragment
      SubnetOverrideFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::SubnetOverrideFragment
      FormulaPropertiesFromVmFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::FormulaPropertiesFromVmFragment
      DataDiskProperties = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::DataDiskProperties
      ServiceFabricList = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ServiceFabricList
      DetachDataDiskProperties = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::DetachDataDiskProperties
      FormulaList = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::FormulaList
      SubnetSharedPublicIpAddressConfigurationFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::SubnetSharedPublicIpAddressConfigurationFragment
      SecretList = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::SecretList
      DiskList = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::DiskList
      GalleryImageList = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::GalleryImageList
      SubnetSharedPublicIpAddressConfiguration = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::SubnetSharedPublicIpAddressConfiguration
      ParameterInfo = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ParameterInfo
      HourDetailsFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::HourDetailsFragment
      GenerateArmTemplateRequest = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::GenerateArmTemplateRequest
      ArtifactParameterProperties = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ArtifactParameterProperties
      GenerateUploadUriParameter = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::GenerateUploadUriParameter
      UserSecretStoreFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::UserSecretStoreFragment
      GenerateUploadUriResponse = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::GenerateUploadUriResponse
      ArmTemplateParameterPropertiesFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ArmTemplateParameterPropertiesFragment
      IdentityProperties = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::IdentityProperties
      ArtifactParameterPropertiesFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ArtifactParameterPropertiesFragment
      ImportLabVirtualMachineRequest = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ImportLabVirtualMachineRequest
      UserIdentity = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::UserIdentity
      LabAnnouncementProperties = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::LabAnnouncementProperties
      AttachNewDataDiskOptionsFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::AttachNewDataDiskOptionsFragment
      LabSupportProperties = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::LabSupportProperties
      ComputeDataDisk = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ComputeDataDisk
      ScheduleList = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ScheduleList
      ComputeVmProperties = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ComputeVmProperties
      LabAnnouncementPropertiesFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::LabAnnouncementPropertiesFragment
      WindowsOsInfo = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::WindowsOsInfo
      TargetCostProperties = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::TargetCostProperties
      DataDiskStorageTypeInfo = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::DataDiskStorageTypeInfo
      LabCostSummaryProperties = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::LabCostSummaryProperties
      LinuxOsInfoFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::LinuxOsInfoFragment
      LabCostDetailsProperties = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::LabCostDetailsProperties
      CustomImagePropertiesFromPlanFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::CustomImagePropertiesFromPlanFragment
      LabResourceCostProperties = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::LabResourceCostProperties
      DataDiskPropertiesFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::DataDiskPropertiesFragment
      RetargetScheduleProperties = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::RetargetScheduleProperties
      SubnetOverride = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::SubnetOverride
      LabSupportPropertiesFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::LabSupportPropertiesFragment
      WeekDetailsFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::WeekDetailsFragment
      Resource = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::Resource
      ApplyArtifactsRequest = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ApplyArtifactsRequest
      LabList = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::LabList
      ArtifactDeploymentStatusProperties = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ArtifactDeploymentStatusProperties
      LabVhd = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::LabVhd
      AttachDiskProperties = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::AttachDiskProperties
      LabVhdList = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::LabVhdList
      ComputeVmInstanceViewStatus = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ComputeVmInstanceViewStatus
      ResizeLabVirtualMachineProperties = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ResizeLabVirtualMachineProperties
      CustomImagePropertiesFromVm = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::CustomImagePropertiesFromVm
      RdpConnection = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::RdpConnection
      CustomImagePropertiesCustomFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::CustomImagePropertiesCustomFragment
      LabVirtualMachineList = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::LabVirtualMachineList
      DetachDiskProperties = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::DetachDiskProperties
      ProviderOperationResult = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ProviderOperationResult
      VirtualNetworkList = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::VirtualNetworkList
      PortFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::PortFragment
      ArtifactList = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ArtifactList
      NotificationChannelList = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::NotificationChannelList
      PercentageCostThresholdProperties = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::PercentageCostThresholdProperties
      NotifyParameters = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::NotifyParameters
      CustomImageList = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::CustomImageList
      OperationError = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::OperationError
      ArmTemplateList = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ArmTemplateList
      OperationMetadataDisplay = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::OperationMetadataDisplay
      UpdateResource = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::UpdateResource
      OperationMetadata = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::OperationMetadata
      BulkCreationParametersFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::BulkCreationParametersFragment
      OperationResult = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::OperationResult
      EnvironmentDeploymentProperties = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::EnvironmentDeploymentProperties
      Port = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::Port
      Schedule = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::Schedule
      ApplicableSchedule = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ApplicableSchedule
      ScheduleFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ScheduleFragment
      ApplicableScheduleFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ApplicableScheduleFragment
      ArmTemplate = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ArmTemplate
      Artifact = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::Artifact
      ArtifactSource = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ArtifactSource
      ArtifactSourceFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ArtifactSourceFragment
      CustomImage = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::CustomImage
      CustomImageFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::CustomImageFragment
      Disk = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::Disk
      DiskFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::DiskFragment
      DtlEnvironment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::DtlEnvironment
      DtlEnvironmentFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::DtlEnvironmentFragment
      Formula = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::Formula
      FormulaFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::FormulaFragment
      GalleryImage = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::GalleryImage
      Lab = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::Lab
      LabCost = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::LabCost
      LabFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::LabFragment
      LabVirtualMachine = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::LabVirtualMachine
      LabVirtualMachineFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::LabVirtualMachineFragment
      NotificationChannel = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::NotificationChannel
      NotificationChannelFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::NotificationChannelFragment
      Policy = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::Policy
      PolicyFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::PolicyFragment
      Secret = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::Secret
      SecretFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::SecretFragment
      ServiceFabric = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ServiceFabric
      ServiceFabricFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ServiceFabricFragment
      ServiceRunner = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ServiceRunner
      User = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::User
      UserFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::UserFragment
      VirtualNetwork = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::VirtualNetwork
      VirtualNetworkFragment = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::VirtualNetworkFragment
      EnableStatus = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::EnableStatus
      SourceControlType = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::SourceControlType
      StorageType = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::StorageType
      CostThresholdStatus = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::CostThresholdStatus
      WindowsOsState = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::WindowsOsState
      LinuxOsState = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::LinuxOsState
      CustomImageOsType = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::CustomImageOsType
      HostCachingOptions = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::HostCachingOptions
      NotificationChannelEventType = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::NotificationChannelEventType
      TransportProtocol = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::TransportProtocol
      VirtualMachineCreationSource = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::VirtualMachineCreationSource
      FileUploadOptions = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::FileUploadOptions
      PremiumDataDisk = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::PremiumDataDisk
      EnvironmentPermission = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::EnvironmentPermission
      TargetCostStatus = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::TargetCostStatus
      ReportingCycleType = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ReportingCycleType
      CostType = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::CostType
      HttpStatusCode = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::HttpStatusCode
      PolicyStatus = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::PolicyStatus
      PolicyFactName = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::PolicyFactName
      PolicyEvaluatorType = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::PolicyEvaluatorType
      UsagePermissionType = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::UsagePermissionType
    end

    #
    # DevTestLabsManagementClass
    #
    class DevTestLabsManagementClass
      attr_reader :provider_operations, :labs, :operations, :global_schedules, :artifact_sources, :arm_templates, :artifacts, :costs, :custom_images, :formulas, :gallery_images, :notification_channels, :policy_sets, :policies, :schedules, :service_runners, :users, :disks, :environments, :secrets, :service_fabrics, :service_fabric_schedules, :virtual_machines, :virtual_machine_schedules, :virtual_networks, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_default_options
        else
          @options = options
        end

        reset!(options)

        @configurable = self
        @base_url = options[:base_url].nil? ? nil:options[:base_url]
        @options = options[:options].nil? ? nil:options[:options]

        @client_0 = Azure::DevTestLabs::Mgmt::V2018_09_15::DevTestLabsClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @provider_operations = @client_0.provider_operations
        @labs = @client_0.labs
        @operations = @client_0.operations
        @global_schedules = @client_0.global_schedules
        @artifact_sources = @client_0.artifact_sources
        @arm_templates = @client_0.arm_templates
        @artifacts = @client_0.artifacts
        @costs = @client_0.costs
        @custom_images = @client_0.custom_images
        @formulas = @client_0.formulas
        @gallery_images = @client_0.gallery_images
        @notification_channels = @client_0.notification_channels
        @policy_sets = @client_0.policy_sets
        @policies = @client_0.policies
        @schedules = @client_0.schedules
        @service_runners = @client_0.service_runners
        @users = @client_0.users
        @disks = @client_0.disks
        @environments = @client_0.environments
        @secrets = @client_0.secrets
        @service_fabrics = @client_0.service_fabrics
        @service_fabric_schedules = @client_0.service_fabric_schedules
        @virtual_machines = @client_0.virtual_machines
        @virtual_machine_schedules = @client_0.virtual_machine_schedules
        @virtual_networks = @client_0.virtual_networks

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/DevTestLabs/Mgmt'
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_0.respond_to?method
          @client_0.send(method, *args)
        else
          super
        end
      end

    end

    class ModelClasses
      def inbound_nat_rule
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::InboundNatRule
      end
      def shared_public_ip_address_configuration
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::SharedPublicIpAddressConfiguration
      end
      def day_details
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::DayDetails
      end
      def network_interface_properties
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::NetworkInterfaceProperties
      end
      def notification_settings
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::NotificationSettings
      end
      def schedule_creation_parameter
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ScheduleCreationParameter
      end
      def environment_deployment_properties_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::EnvironmentDeploymentPropertiesFragment
      end
      def subnet_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::SubnetFragment
      end
      def day_details_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::DayDetailsFragment
      end
      def dtl_environment_list
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::DtlEnvironmentList
      end
      def notification_settings_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::NotificationSettingsFragment
      end
      def evaluate_policies_properties
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::EvaluatePoliciesProperties
      end
      def user_list
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::UserList
      end
      def evaluate_policies_request
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::EvaluatePoliciesRequest
      end
      def artifact_install_properties
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ArtifactInstallProperties
      end
      def policy_violation
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::PolicyViolation
      end
      def parameters_value_file_info
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ParametersValueFileInfo
      end
      def policy_set_result
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::PolicySetResult
      end
      def arm_template_info
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ArmTemplateInfo
      end
      def evaluate_policies_response
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::EvaluatePoliciesResponse
      end
      def arm_template_parameter_properties
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ArmTemplateParameterProperties
      end
      def event
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::Event
      end
      def user_identity_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::UserIdentityFragment
      end
      def event_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::EventFragment
      end
      def artifact_deployment_status_properties_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ArtifactDeploymentStatusPropertiesFragment
      end
      def export_resource_usage_parameters
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ExportResourceUsageParameters
      end
      def artifact_install_properties_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ArtifactInstallPropertiesFragment
      end
      def external_subnet
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ExternalSubnet
      end
      def user_secret_store
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::UserSecretStore
      end
      def external_subnet_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ExternalSubnetFragment
      end
      def artifact_source_list
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ArtifactSourceList
      end
      def gallery_image_reference
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::GalleryImageReference
      end
      def attach_new_data_disk_options
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::AttachNewDataDiskOptions
      end
      def week_details
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::WeekDetails
      end
      def bulk_creation_parameters
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::BulkCreationParameters
      end
      def hour_details
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::HourDetails
      end
      def policy_list
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::PolicyList
      end
      def compute_data_disk_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ComputeDataDiskFragment
      end
      def subnet
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::Subnet
      end
      def compute_vm_instance_view_status_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ComputeVmInstanceViewStatusFragment
      end
      def lab_virtual_machine_creation_parameter
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::LabVirtualMachineCreationParameter
      end
      def compute_vm_properties_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ComputeVmPropertiesFragment
      end
      def formula_properties_from_vm
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::FormulaPropertiesFromVm
      end
      def cost_threshold_properties
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::CostThresholdProperties
      end
      def shutdown_notification_content
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ShutdownNotificationContent
      end
      def linux_os_info
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::LinuxOsInfo
      end
      def gallery_image_reference_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::GalleryImageReferenceFragment
      end
      def custom_image_properties_custom
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::CustomImagePropertiesCustom
      end
      def inbound_nat_rule_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::InboundNatRuleFragment
      end
      def custom_image_properties_from_plan
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::CustomImagePropertiesFromPlan
      end
      def shared_public_ip_address_configuration_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::SharedPublicIpAddressConfigurationFragment
      end
      def windows_os_info_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::WindowsOsInfoFragment
      end
      def network_interface_properties_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::NetworkInterfacePropertiesFragment
      end
      def custom_image_properties_from_vm_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::CustomImagePropertiesFromVmFragment
      end
      def schedule_creation_parameter_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ScheduleCreationParameterFragment
      end
      def data_disk_storage_type_info_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::DataDiskStorageTypeInfoFragment
      end
      def lab_virtual_machine_creation_parameter_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::LabVirtualMachineCreationParameterFragment
      end
      def subnet_override_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::SubnetOverrideFragment
      end
      def formula_properties_from_vm_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::FormulaPropertiesFromVmFragment
      end
      def data_disk_properties
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::DataDiskProperties
      end
      def service_fabric_list
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ServiceFabricList
      end
      def detach_data_disk_properties
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::DetachDataDiskProperties
      end
      def formula_list
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::FormulaList
      end
      def subnet_shared_public_ip_address_configuration_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::SubnetSharedPublicIpAddressConfigurationFragment
      end
      def secret_list
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::SecretList
      end
      def disk_list
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::DiskList
      end
      def gallery_image_list
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::GalleryImageList
      end
      def subnet_shared_public_ip_address_configuration
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::SubnetSharedPublicIpAddressConfiguration
      end
      def parameter_info
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ParameterInfo
      end
      def hour_details_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::HourDetailsFragment
      end
      def generate_arm_template_request
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::GenerateArmTemplateRequest
      end
      def artifact_parameter_properties
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ArtifactParameterProperties
      end
      def generate_upload_uri_parameter
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::GenerateUploadUriParameter
      end
      def user_secret_store_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::UserSecretStoreFragment
      end
      def generate_upload_uri_response
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::GenerateUploadUriResponse
      end
      def arm_template_parameter_properties_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ArmTemplateParameterPropertiesFragment
      end
      def identity_properties
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::IdentityProperties
      end
      def artifact_parameter_properties_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ArtifactParameterPropertiesFragment
      end
      def import_lab_virtual_machine_request
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ImportLabVirtualMachineRequest
      end
      def user_identity
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::UserIdentity
      end
      def lab_announcement_properties
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::LabAnnouncementProperties
      end
      def attach_new_data_disk_options_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::AttachNewDataDiskOptionsFragment
      end
      def lab_support_properties
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::LabSupportProperties
      end
      def compute_data_disk
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ComputeDataDisk
      end
      def schedule_list
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ScheduleList
      end
      def compute_vm_properties
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ComputeVmProperties
      end
      def lab_announcement_properties_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::LabAnnouncementPropertiesFragment
      end
      def windows_os_info
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::WindowsOsInfo
      end
      def target_cost_properties
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::TargetCostProperties
      end
      def data_disk_storage_type_info
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::DataDiskStorageTypeInfo
      end
      def lab_cost_summary_properties
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::LabCostSummaryProperties
      end
      def linux_os_info_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::LinuxOsInfoFragment
      end
      def lab_cost_details_properties
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::LabCostDetailsProperties
      end
      def custom_image_properties_from_plan_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::CustomImagePropertiesFromPlanFragment
      end
      def lab_resource_cost_properties
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::LabResourceCostProperties
      end
      def data_disk_properties_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::DataDiskPropertiesFragment
      end
      def retarget_schedule_properties
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::RetargetScheduleProperties
      end
      def subnet_override
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::SubnetOverride
      end
      def lab_support_properties_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::LabSupportPropertiesFragment
      end
      def week_details_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::WeekDetailsFragment
      end
      def resource
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::Resource
      end
      def apply_artifacts_request
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ApplyArtifactsRequest
      end
      def lab_list
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::LabList
      end
      def artifact_deployment_status_properties
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ArtifactDeploymentStatusProperties
      end
      def lab_vhd
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::LabVhd
      end
      def attach_disk_properties
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::AttachDiskProperties
      end
      def lab_vhd_list
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::LabVhdList
      end
      def compute_vm_instance_view_status
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ComputeVmInstanceViewStatus
      end
      def resize_lab_virtual_machine_properties
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ResizeLabVirtualMachineProperties
      end
      def custom_image_properties_from_vm
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::CustomImagePropertiesFromVm
      end
      def rdp_connection
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::RdpConnection
      end
      def custom_image_properties_custom_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::CustomImagePropertiesCustomFragment
      end
      def lab_virtual_machine_list
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::LabVirtualMachineList
      end
      def detach_disk_properties
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::DetachDiskProperties
      end
      def provider_operation_result
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ProviderOperationResult
      end
      def virtual_network_list
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::VirtualNetworkList
      end
      def port_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::PortFragment
      end
      def artifact_list
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ArtifactList
      end
      def notification_channel_list
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::NotificationChannelList
      end
      def percentage_cost_threshold_properties
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::PercentageCostThresholdProperties
      end
      def notify_parameters
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::NotifyParameters
      end
      def custom_image_list
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::CustomImageList
      end
      def operation_error
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::OperationError
      end
      def arm_template_list
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ArmTemplateList
      end
      def operation_metadata_display
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::OperationMetadataDisplay
      end
      def update_resource
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::UpdateResource
      end
      def operation_metadata
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::OperationMetadata
      end
      def bulk_creation_parameters_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::BulkCreationParametersFragment
      end
      def operation_result
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::OperationResult
      end
      def environment_deployment_properties
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::EnvironmentDeploymentProperties
      end
      def port
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::Port
      end
      def schedule
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::Schedule
      end
      def applicable_schedule
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ApplicableSchedule
      end
      def schedule_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ScheduleFragment
      end
      def applicable_schedule_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ApplicableScheduleFragment
      end
      def arm_template
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ArmTemplate
      end
      def artifact
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::Artifact
      end
      def artifact_source
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ArtifactSource
      end
      def artifact_source_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ArtifactSourceFragment
      end
      def custom_image
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::CustomImage
      end
      def custom_image_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::CustomImageFragment
      end
      def disk
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::Disk
      end
      def disk_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::DiskFragment
      end
      def dtl_environment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::DtlEnvironment
      end
      def dtl_environment_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::DtlEnvironmentFragment
      end
      def formula
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::Formula
      end
      def formula_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::FormulaFragment
      end
      def gallery_image
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::GalleryImage
      end
      def lab
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::Lab
      end
      def lab_cost
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::LabCost
      end
      def lab_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::LabFragment
      end
      def lab_virtual_machine
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::LabVirtualMachine
      end
      def lab_virtual_machine_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::LabVirtualMachineFragment
      end
      def notification_channel
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::NotificationChannel
      end
      def notification_channel_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::NotificationChannelFragment
      end
      def policy
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::Policy
      end
      def policy_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::PolicyFragment
      end
      def secret
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::Secret
      end
      def secret_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::SecretFragment
      end
      def service_fabric
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ServiceFabric
      end
      def service_fabric_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ServiceFabricFragment
      end
      def service_runner
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ServiceRunner
      end
      def user
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::User
      end
      def user_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::UserFragment
      end
      def virtual_network
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::VirtualNetwork
      end
      def virtual_network_fragment
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::VirtualNetworkFragment
      end
      def enable_status
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::EnableStatus
      end
      def source_control_type
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::SourceControlType
      end
      def storage_type
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::StorageType
      end
      def cost_threshold_status
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::CostThresholdStatus
      end
      def windows_os_state
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::WindowsOsState
      end
      def linux_os_state
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::LinuxOsState
      end
      def custom_image_os_type
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::CustomImageOsType
      end
      def host_caching_options
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::HostCachingOptions
      end
      def notification_channel_event_type
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::NotificationChannelEventType
      end
      def transport_protocol
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::TransportProtocol
      end
      def virtual_machine_creation_source
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::VirtualMachineCreationSource
      end
      def file_upload_options
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::FileUploadOptions
      end
      def premium_data_disk
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::PremiumDataDisk
      end
      def environment_permission
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::EnvironmentPermission
      end
      def target_cost_status
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::TargetCostStatus
      end
      def reporting_cycle_type
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::ReportingCycleType
      end
      def cost_type
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::CostType
      end
      def http_status_code
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::HttpStatusCode
      end
      def policy_status
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::PolicyStatus
      end
      def policy_fact_name
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::PolicyFactName
      end
      def policy_evaluator_type
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::PolicyEvaluatorType
      end
      def usage_permission_type
        Azure::DevTestLabs::Mgmt::V2018_09_15::Models::UsagePermissionType
      end
    end
  end
end
