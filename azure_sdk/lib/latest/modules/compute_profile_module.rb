# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_compute'

module Azure::Profiles::Latest
  module Compute
    module Mgmt
      Disks = Azure::Compute::Mgmt::V2017_03_30::Disks
      Snapshots = Azure::Compute::Mgmt::V2017_03_30::Snapshots
      ResourceSkus = Azure::Compute::Mgmt::V2017_09_01::ResourceSkus
      Operations = Azure::Compute::Mgmt::V2017_12_01::Operations
      AvailabilitySets = Azure::Compute::Mgmt::V2017_12_01::AvailabilitySets
      VirtualMachineExtensionImages = Azure::Compute::Mgmt::V2017_12_01::VirtualMachineExtensionImages
      VirtualMachineExtensions = Azure::Compute::Mgmt::V2017_12_01::VirtualMachineExtensions
      VirtualMachineImages = Azure::Compute::Mgmt::V2017_12_01::VirtualMachineImages
      UsageOperations = Azure::Compute::Mgmt::V2017_12_01::UsageOperations
      VirtualMachineSizes = Azure::Compute::Mgmt::V2017_12_01::VirtualMachineSizes
      Images = Azure::Compute::Mgmt::V2017_12_01::Images
      VirtualMachines = Azure::Compute::Mgmt::V2017_12_01::VirtualMachines
      VirtualMachineScaleSets = Azure::Compute::Mgmt::V2017_12_01::VirtualMachineScaleSets
      VirtualMachineScaleSetExtensions = Azure::Compute::Mgmt::V2017_12_01::VirtualMachineScaleSetExtensions
      VirtualMachineScaleSetRollingUpgrades = Azure::Compute::Mgmt::V2017_12_01::VirtualMachineScaleSetRollingUpgrades
      VirtualMachineScaleSetVMs = Azure::Compute::Mgmt::V2017_12_01::VirtualMachineScaleSetVMs
      LogAnalytics = Azure::Compute::Mgmt::V2017_12_01::LogAnalytics
      VirtualMachineRunCommands = Azure::Compute::Mgmt::V2017_12_01::VirtualMachineRunCommands

      module Models
        SnapshotList = Azure::Compute::Mgmt::V2017_03_30::Models::SnapshotList
        EncryptionSettings = Azure::Compute::Mgmt::V2017_03_30::Models::EncryptionSettings
        AccessUri = Azure::Compute::Mgmt::V2017_03_30::Models::AccessUri
        KeyVaultAndKeyReference = Azure::Compute::Mgmt::V2017_03_30::Models::KeyVaultAndKeyReference
        KeyVaultAndSecretReference = Azure::Compute::Mgmt::V2017_03_30::Models::KeyVaultAndSecretReference
        SourceVault = Azure::Compute::Mgmt::V2017_03_30::Models::SourceVault
        CreationData = Azure::Compute::Mgmt::V2017_03_30::Models::CreationData
        ImageDiskReference = Azure::Compute::Mgmt::V2017_03_30::Models::ImageDiskReference
        DiskList = Azure::Compute::Mgmt::V2017_03_30::Models::DiskList
        ResourceUpdate = Azure::Compute::Mgmt::V2017_03_30::Models::ResourceUpdate
        DiskSku = Azure::Compute::Mgmt::V2017_03_30::Models::DiskSku
        GrantAccessData = Azure::Compute::Mgmt::V2017_03_30::Models::GrantAccessData
        Disk = Azure::Compute::Mgmt::V2017_03_30::Models::Disk
        DiskUpdate = Azure::Compute::Mgmt::V2017_03_30::Models::DiskUpdate
        Snapshot = Azure::Compute::Mgmt::V2017_03_30::Models::Snapshot
        SnapshotUpdate = Azure::Compute::Mgmt::V2017_03_30::Models::SnapshotUpdate
        DiskCreateOption = Azure::Compute::Mgmt::V2017_03_30::Models::DiskCreateOption
        AccessLevel = Azure::Compute::Mgmt::V2017_03_30::Models::AccessLevel
        ResourceSkuRestrictions = Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuRestrictions
        ResourceSkuCapacity = Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuCapacity
        ResourceSkuLocationInfo = Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuLocationInfo
        ResourceSkuCapabilities = Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuCapabilities
        ResourceSku = Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSku
        ResourceSkuCosts = Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuCosts
        ResourceSkusResult = Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkusResult
        ResourceSkuRestrictionInfo = Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuRestrictionInfo
        ResourceSkuCapacityScaleType = Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuCapacityScaleType
        ResourceSkuRestrictionsType = Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuRestrictionsType
        ResourceSkuRestrictionsReasonCode = Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuRestrictionsReasonCode
        VirtualMachineScaleSetIdentity = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetIdentity
        ComputeOperationValue = Azure::Compute::Mgmt::V2017_12_01::Models::ComputeOperationValue
        VirtualMachineScaleSetOSProfile = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetOSProfile
        InstanceViewStatus = Azure::Compute::Mgmt::V2017_12_01::Models::InstanceViewStatus
        VirtualMachineScaleSetUpdateOSProfile = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateOSProfile
        Sku = Azure::Compute::Mgmt::V2017_12_01::Models::Sku
        VirtualMachineScaleSetManagedDiskParameters = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetManagedDiskParameters
        RecoveryWalkResponse = Azure::Compute::Mgmt::V2017_12_01::Models::RecoveryWalkResponse
        AvailabilitySetListResult = Azure::Compute::Mgmt::V2017_12_01::Models::AvailabilitySetListResult
        VirtualMachineListResult = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineListResult
        VirtualMachineSizeListResult = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineSizeListResult
        RollingUpgradePolicy = Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradePolicy
        RunCommandListResult = Azure::Compute::Mgmt::V2017_12_01::Models::RunCommandListResult
        UpgradePolicy = Azure::Compute::Mgmt::V2017_12_01::Models::UpgradePolicy
        RunCommandDocumentBase = Azure::Compute::Mgmt::V2017_12_01::Models::RunCommandDocumentBase
        ImageOSDisk = Azure::Compute::Mgmt::V2017_12_01::Models::ImageOSDisk
        OSDiskImage = Azure::Compute::Mgmt::V2017_12_01::Models::OSDiskImage
        ImageDataDisk = Azure::Compute::Mgmt::V2017_12_01::Models::ImageDataDisk
        RunCommandParameterDefinition = Azure::Compute::Mgmt::V2017_12_01::Models::RunCommandParameterDefinition
        ImageStorageProfile = Azure::Compute::Mgmt::V2017_12_01::Models::ImageStorageProfile
        Usage = Azure::Compute::Mgmt::V2017_12_01::Models::Usage
        SubResourceReadOnly = Azure::Compute::Mgmt::V2017_12_01::Models::SubResourceReadOnly
        VirtualMachineCaptureParameters = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineCaptureParameters
        UpdateResource = Azure::Compute::Mgmt::V2017_12_01::Models::UpdateResource
        Plan = Azure::Compute::Mgmt::V2017_12_01::Models::Plan
        ImageListResult = Azure::Compute::Mgmt::V2017_12_01::Models::ImageListResult
        RunCommandInputParameter = Azure::Compute::Mgmt::V2017_12_01::Models::RunCommandInputParameter
        ComputeOperationListResult = Azure::Compute::Mgmt::V2017_12_01::Models::ComputeOperationListResult
        KeyVaultKeyReference = Azure::Compute::Mgmt::V2017_12_01::Models::KeyVaultKeyReference
        SubResource = Azure::Compute::Mgmt::V2017_12_01::Models::SubResource
        VirtualHardDisk = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualHardDisk
        LogAnalyticsOutput = Azure::Compute::Mgmt::V2017_12_01::Models::LogAnalyticsOutput
        VirtualMachineHealthStatus = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineHealthStatus
        DataDisk = Azure::Compute::Mgmt::V2017_12_01::Models::DataDisk
        Resource = Azure::Compute::Mgmt::V2017_12_01::Models::Resource
        AdditionalUnattendContent = Azure::Compute::Mgmt::V2017_12_01::Models::AdditionalUnattendContent
        VirtualMachineScaleSetOSDisk = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetOSDisk
        WinRMConfiguration = Azure::Compute::Mgmt::V2017_12_01::Models::WinRMConfiguration
        VirtualMachineScaleSetUpdateOSDisk = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateOSDisk
        SshPublicKey = Azure::Compute::Mgmt::V2017_12_01::Models::SshPublicKey
        VirtualMachineScaleSetDataDisk = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetDataDisk
        LinuxConfiguration = Azure::Compute::Mgmt::V2017_12_01::Models::LinuxConfiguration
        VirtualMachineScaleSetStorageProfile = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetStorageProfile
        VaultSecretGroup = Azure::Compute::Mgmt::V2017_12_01::Models::VaultSecretGroup
        VirtualMachineScaleSetUpdateStorageProfile = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateStorageProfile
        LogAnalyticsInputBase = Azure::Compute::Mgmt::V2017_12_01::Models::LogAnalyticsInputBase
        ApiEntityReference = Azure::Compute::Mgmt::V2017_12_01::Models::ApiEntityReference
        BootDiagnostics = Azure::Compute::Mgmt::V2017_12_01::Models::BootDiagnostics
        VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings
        VirtualMachineExtensionHandlerInstanceView = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineExtensionHandlerInstanceView
        VirtualMachineScaleSetPublicIPAddressConfiguration = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetPublicIPAddressConfiguration
        DiskInstanceView = Azure::Compute::Mgmt::V2017_12_01::Models::DiskInstanceView
        VirtualMachineScaleSetUpdatePublicIPAddressConfiguration = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdatePublicIPAddressConfiguration
        VirtualMachineIdentity = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineIdentity
        ComputeLongRunningOperationProperties = Azure::Compute::Mgmt::V2017_12_01::Models::ComputeLongRunningOperationProperties
        VirtualMachineInstanceView = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineInstanceView
        ApiError = Azure::Compute::Mgmt::V2017_12_01::Models::ApiError
        VirtualMachineSize = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineSize
        VirtualMachineScaleSetNetworkConfigurationDnsSettings = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetNetworkConfigurationDnsSettings
        VirtualMachineExtensionInstanceView = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineExtensionInstanceView
        InnerError = Azure::Compute::Mgmt::V2017_12_01::Models::InnerError
        DataDiskImage = Azure::Compute::Mgmt::V2017_12_01::Models::DataDiskImage
        ApiErrorBase = Azure::Compute::Mgmt::V2017_12_01::Models::ApiErrorBase
        ListUsagesResult = Azure::Compute::Mgmt::V2017_12_01::Models::ListUsagesResult
        VirtualMachineScaleSetNetworkProfile = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetNetworkProfile
        HardwareProfile = Azure::Compute::Mgmt::V2017_12_01::Models::HardwareProfile
        VirtualMachineScaleSetUpdateNetworkProfile = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateNetworkProfile
        DiskEncryptionSettings = Azure::Compute::Mgmt::V2017_12_01::Models::DiskEncryptionSettings
        RollingUpgradeProgressInfo = Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradeProgressInfo
        StorageProfile = Azure::Compute::Mgmt::V2017_12_01::Models::StorageProfile
        VirtualMachineScaleSetExtensionListResult = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetExtensionListResult
        WindowsConfiguration = Azure::Compute::Mgmt::V2017_12_01::Models::WindowsConfiguration
        VirtualMachineScaleSetExtensionProfile = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetExtensionProfile
        VaultCertificate = Azure::Compute::Mgmt::V2017_12_01::Models::VaultCertificate
        VirtualMachineScaleSetVMProfile = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMProfile
        NetworkProfile = Azure::Compute::Mgmt::V2017_12_01::Models::NetworkProfile
        VirtualMachineScaleSetUpdateVMProfile = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateVMProfile
        VirtualMachineAgentInstanceView = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineAgentInstanceView
        RollingUpgradeRunningStatus = Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradeRunningStatus
        MaintenanceRedeployStatus = Azure::Compute::Mgmt::V2017_12_01::Models::MaintenanceRedeployStatus
        VirtualMachineScaleSetVMListResult = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMListResult
        VirtualMachineScaleSetVMInstanceIDs = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMInstanceIDs
        UsageName = Azure::Compute::Mgmt::V2017_12_01::Models::UsageName
        VirtualMachineScaleSetVMInstanceRequiredIDs = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMInstanceRequiredIDs
        KeyVaultSecretReference = Azure::Compute::Mgmt::V2017_12_01::Models::KeyVaultSecretReference
        VirtualMachineStatusCodeCount = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineStatusCodeCount
        WinRMListener = Azure::Compute::Mgmt::V2017_12_01::Models::WinRMListener
        VirtualMachineScaleSetInstanceViewStatusesSummary = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetInstanceViewStatusesSummary
        OSProfile = Azure::Compute::Mgmt::V2017_12_01::Models::OSProfile
        VirtualMachineScaleSetVMExtensionsSummary = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMExtensionsSummary
        BootDiagnosticsInstanceView = Azure::Compute::Mgmt::V2017_12_01::Models::BootDiagnosticsInstanceView
        VirtualMachineScaleSetInstanceView = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetInstanceView
        PurchasePlan = Azure::Compute::Mgmt::V2017_12_01::Models::PurchasePlan
        VirtualMachineScaleSetListResult = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetListResult
        OSDisk = Azure::Compute::Mgmt::V2017_12_01::Models::OSDisk
        VirtualMachineScaleSetListWithLinkResult = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetListWithLinkResult
        DiagnosticsProfile = Azure::Compute::Mgmt::V2017_12_01::Models::DiagnosticsProfile
        VirtualMachineScaleSetSkuCapacity = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetSkuCapacity
        RunCommandInput = Azure::Compute::Mgmt::V2017_12_01::Models::RunCommandInput
        VirtualMachineScaleSetSku = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetSku
        OperationStatusResponse = Azure::Compute::Mgmt::V2017_12_01::Models::OperationStatusResponse
        VirtualMachineScaleSetListSkusResult = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetListSkusResult
        SshConfiguration = Azure::Compute::Mgmt::V2017_12_01::Models::SshConfiguration
        VirtualMachineScaleSetVMInstanceView = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMInstanceView
        AvailabilitySet = Azure::Compute::Mgmt::V2017_12_01::Models::AvailabilitySet
        AvailabilitySetUpdate = Azure::Compute::Mgmt::V2017_12_01::Models::AvailabilitySetUpdate
        VirtualMachineExtensionImage = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineExtensionImage
        VirtualMachineImageResource = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineImageResource
        VirtualMachineExtension = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineExtension
        VirtualMachineImage = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineImage
        VirtualMachineCaptureResult = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineCaptureResult
        ImageReference = Azure::Compute::Mgmt::V2017_12_01::Models::ImageReference
        ManagedDiskParameters = Azure::Compute::Mgmt::V2017_12_01::Models::ManagedDiskParameters
        NetworkInterfaceReference = Azure::Compute::Mgmt::V2017_12_01::Models::NetworkInterfaceReference
        VirtualMachine = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachine
        VirtualMachineUpdate = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineUpdate
        Image = Azure::Compute::Mgmt::V2017_12_01::Models::Image
        ImageUpdate = Azure::Compute::Mgmt::V2017_12_01::Models::ImageUpdate
        VirtualMachineScaleSetIPConfiguration = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetIPConfiguration
        VirtualMachineScaleSetUpdateIPConfiguration = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateIPConfiguration
        VirtualMachineScaleSetNetworkConfiguration = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetNetworkConfiguration
        VirtualMachineScaleSetUpdateNetworkConfiguration = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateNetworkConfiguration
        VirtualMachineScaleSetExtension = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetExtension
        VirtualMachineScaleSet = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSet
        VirtualMachineScaleSetUpdate = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdate
        VirtualMachineScaleSetVM = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVM
        RollingUpgradeStatusInfo = Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradeStatusInfo
        RequestRateByIntervalInput = Azure::Compute::Mgmt::V2017_12_01::Models::RequestRateByIntervalInput
        ThrottledRequestsInput = Azure::Compute::Mgmt::V2017_12_01::Models::ThrottledRequestsInput
        LogAnalyticsOperationResult = Azure::Compute::Mgmt::V2017_12_01::Models::LogAnalyticsOperationResult
        RunCommandDocument = Azure::Compute::Mgmt::V2017_12_01::Models::RunCommandDocument
        RunCommandResult = Azure::Compute::Mgmt::V2017_12_01::Models::RunCommandResult
        StatusLevelTypes = Azure::Compute::Mgmt::V2017_12_01::Models::StatusLevelTypes
        OperatingSystemTypes = Azure::Compute::Mgmt::V2017_12_01::Models::OperatingSystemTypes
        VirtualMachineSizeTypes = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineSizeTypes
        CachingTypes = Azure::Compute::Mgmt::V2017_12_01::Models::CachingTypes
        DiskCreateOptionTypes = Azure::Compute::Mgmt::V2017_12_01::Models::DiskCreateOptionTypes
        StorageAccountTypes = Azure::Compute::Mgmt::V2017_12_01::Models::StorageAccountTypes
        PassNames = Azure::Compute::Mgmt::V2017_12_01::Models::PassNames
        ComponentNames = Azure::Compute::Mgmt::V2017_12_01::Models::ComponentNames
        SettingNames = Azure::Compute::Mgmt::V2017_12_01::Models::SettingNames
        ProtocolTypes = Azure::Compute::Mgmt::V2017_12_01::Models::ProtocolTypes
        ResourceIdentityType = Azure::Compute::Mgmt::V2017_12_01::Models::ResourceIdentityType
        MaintenanceOperationResultCodeTypes = Azure::Compute::Mgmt::V2017_12_01::Models::MaintenanceOperationResultCodeTypes
        UpgradeMode = Azure::Compute::Mgmt::V2017_12_01::Models::UpgradeMode
        OperatingSystemStateTypes = Azure::Compute::Mgmt::V2017_12_01::Models::OperatingSystemStateTypes
        IPVersion = Azure::Compute::Mgmt::V2017_12_01::Models::IPVersion
        VirtualMachinePriorityTypes = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachinePriorityTypes
        VirtualMachineScaleSetSkuScaleType = Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetSkuScaleType
        RollingUpgradeStatusCode = Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradeStatusCode
        RollingUpgradeActionType = Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradeActionType
        IntervalInMins = Azure::Compute::Mgmt::V2017_12_01::Models::IntervalInMins
        InstanceViewTypes = Azure::Compute::Mgmt::V2017_12_01::Models::InstanceViewTypes
      end

      class ComputeManagementClass
        attr_reader :disks, :snapshots, :resource_skus, :operations, :availability_sets, :virtual_machine_extension_images, :virtual_machine_extensions, :virtual_machine_images, :usage_operations, :virtual_machine_sizes, :images, :virtual_machines, :virtual_machine_scale_sets, :virtual_machine_scale_set_extensions, :virtual_machine_scale_set_rolling_upgrades, :virtual_machine_scale_set_vms, :log_analytics, :virtual_machine_run_commands, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Compute::Mgmt::V2017_03_30::ComputeManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @disks = @client_0.disks
          @snapshots = @client_0.snapshots

          @client_1 = Azure::Compute::Mgmt::V2017_09_01::ComputeManagementClient.new(configurable.credentials, base_url, options)
          if(@client_1.respond_to?(:subscription_id))
            @client_1.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_1)
          @resource_skus = @client_1.resource_skus

          @client_2 = Azure::Compute::Mgmt::V2017_12_01::ComputeManagementClient.new(configurable.credentials, base_url, options)
          if(@client_2.respond_to?(:subscription_id))
            @client_2.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_2)
          @operations = @client_2.operations
          @availability_sets = @client_2.availability_sets
          @virtual_machine_extension_images = @client_2.virtual_machine_extension_images
          @virtual_machine_extensions = @client_2.virtual_machine_extensions
          @virtual_machine_images = @client_2.virtual_machine_images
          @usage_operations = @client_2.usage_operations
          @virtual_machine_sizes = @client_2.virtual_machine_sizes
          @images = @client_2.images
          @virtual_machines = @client_2.virtual_machines
          @virtual_machine_scale_sets = @client_2.virtual_machine_scale_sets
          @virtual_machine_scale_set_extensions = @client_2.virtual_machine_scale_set_extensions
          @virtual_machine_scale_set_rolling_upgrades = @client_2.virtual_machine_scale_set_rolling_upgrades
          @virtual_machine_scale_set_vms = @client_2.virtual_machine_scale_set_vms
          @log_analytics = @client_2.log_analytics
          @virtual_machine_run_commands = @client_2.virtual_machine_run_commands

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Compute/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_2.respond_to?method
            @client_2.send(method, *args)
          elsif @client_1.respond_to?method
            @client_1.send(method, *args)
          elsif @client_0.respond_to?method
            @client_0.send(method, *args)
          else
            super
          end
        end

        class ModelClasses
          def snapshot_list
            Azure::Compute::Mgmt::V2017_03_30::Models::SnapshotList
          end
          def encryption_settings
            Azure::Compute::Mgmt::V2017_03_30::Models::EncryptionSettings
          end
          def access_uri
            Azure::Compute::Mgmt::V2017_03_30::Models::AccessUri
          end
          def key_vault_and_key_reference
            Azure::Compute::Mgmt::V2017_03_30::Models::KeyVaultAndKeyReference
          end
          def key_vault_and_secret_reference
            Azure::Compute::Mgmt::V2017_03_30::Models::KeyVaultAndSecretReference
          end
          def source_vault
            Azure::Compute::Mgmt::V2017_03_30::Models::SourceVault
          end
          def creation_data
            Azure::Compute::Mgmt::V2017_03_30::Models::CreationData
          end
          def image_disk_reference
            Azure::Compute::Mgmt::V2017_03_30::Models::ImageDiskReference
          end
          def disk_list
            Azure::Compute::Mgmt::V2017_03_30::Models::DiskList
          end
          def resource_update
            Azure::Compute::Mgmt::V2017_03_30::Models::ResourceUpdate
          end
          def disk_sku
            Azure::Compute::Mgmt::V2017_03_30::Models::DiskSku
          end
          def grant_access_data
            Azure::Compute::Mgmt::V2017_03_30::Models::GrantAccessData
          end
          def disk
            Azure::Compute::Mgmt::V2017_03_30::Models::Disk
          end
          def disk_update
            Azure::Compute::Mgmt::V2017_03_30::Models::DiskUpdate
          end
          def snapshot
            Azure::Compute::Mgmt::V2017_03_30::Models::Snapshot
          end
          def snapshot_update
            Azure::Compute::Mgmt::V2017_03_30::Models::SnapshotUpdate
          end
          def disk_create_option
            Azure::Compute::Mgmt::V2017_03_30::Models::DiskCreateOption
          end
          def access_level
            Azure::Compute::Mgmt::V2017_03_30::Models::AccessLevel
          end
          def resource_sku_restrictions
            Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuRestrictions
          end
          def resource_sku_capacity
            Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuCapacity
          end
          def resource_sku_location_info
            Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuLocationInfo
          end
          def resource_sku_capabilities
            Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuCapabilities
          end
          def resource_sku
            Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSku
          end
          def resource_sku_costs
            Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuCosts
          end
          def resource_skus_result
            Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkusResult
          end
          def resource_sku_restriction_info
            Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuRestrictionInfo
          end
          def resource_sku_capacity_scale_type
            Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuCapacityScaleType
          end
          def resource_sku_restrictions_type
            Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuRestrictionsType
          end
          def resource_sku_restrictions_reason_code
            Azure::Compute::Mgmt::V2017_09_01::Models::ResourceSkuRestrictionsReasonCode
          end
          def virtual_machine_scale_set_identity
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetIdentity
          end
          def compute_operation_value
            Azure::Compute::Mgmt::V2017_12_01::Models::ComputeOperationValue
          end
          def virtual_machine_scale_set_osprofile
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetOSProfile
          end
          def instance_view_status
            Azure::Compute::Mgmt::V2017_12_01::Models::InstanceViewStatus
          end
          def virtual_machine_scale_set_update_osprofile
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateOSProfile
          end
          def sku
            Azure::Compute::Mgmt::V2017_12_01::Models::Sku
          end
          def virtual_machine_scale_set_managed_disk_parameters
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetManagedDiskParameters
          end
          def recovery_walk_response
            Azure::Compute::Mgmt::V2017_12_01::Models::RecoveryWalkResponse
          end
          def availability_set_list_result
            Azure::Compute::Mgmt::V2017_12_01::Models::AvailabilitySetListResult
          end
          def virtual_machine_list_result
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineListResult
          end
          def virtual_machine_size_list_result
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineSizeListResult
          end
          def rolling_upgrade_policy
            Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradePolicy
          end
          def run_command_list_result
            Azure::Compute::Mgmt::V2017_12_01::Models::RunCommandListResult
          end
          def upgrade_policy
            Azure::Compute::Mgmt::V2017_12_01::Models::UpgradePolicy
          end
          def run_command_document_base
            Azure::Compute::Mgmt::V2017_12_01::Models::RunCommandDocumentBase
          end
          def image_osdisk
            Azure::Compute::Mgmt::V2017_12_01::Models::ImageOSDisk
          end
          def osdisk_image
            Azure::Compute::Mgmt::V2017_12_01::Models::OSDiskImage
          end
          def image_data_disk
            Azure::Compute::Mgmt::V2017_12_01::Models::ImageDataDisk
          end
          def run_command_parameter_definition
            Azure::Compute::Mgmt::V2017_12_01::Models::RunCommandParameterDefinition
          end
          def image_storage_profile
            Azure::Compute::Mgmt::V2017_12_01::Models::ImageStorageProfile
          end
          def usage
            Azure::Compute::Mgmt::V2017_12_01::Models::Usage
          end
          def sub_resource_read_only
            Azure::Compute::Mgmt::V2017_12_01::Models::SubResourceReadOnly
          end
          def virtual_machine_capture_parameters
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineCaptureParameters
          end
          def update_resource
            Azure::Compute::Mgmt::V2017_12_01::Models::UpdateResource
          end
          def plan
            Azure::Compute::Mgmt::V2017_12_01::Models::Plan
          end
          def image_list_result
            Azure::Compute::Mgmt::V2017_12_01::Models::ImageListResult
          end
          def run_command_input_parameter
            Azure::Compute::Mgmt::V2017_12_01::Models::RunCommandInputParameter
          end
          def compute_operation_list_result
            Azure::Compute::Mgmt::V2017_12_01::Models::ComputeOperationListResult
          end
          def key_vault_key_reference
            Azure::Compute::Mgmt::V2017_12_01::Models::KeyVaultKeyReference
          end
          def sub_resource
            Azure::Compute::Mgmt::V2017_12_01::Models::SubResource
          end
          def virtual_hard_disk
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualHardDisk
          end
          def log_analytics_output
            Azure::Compute::Mgmt::V2017_12_01::Models::LogAnalyticsOutput
          end
          def virtual_machine_health_status
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineHealthStatus
          end
          def data_disk
            Azure::Compute::Mgmt::V2017_12_01::Models::DataDisk
          end
          def resource
            Azure::Compute::Mgmt::V2017_12_01::Models::Resource
          end
          def additional_unattend_content
            Azure::Compute::Mgmt::V2017_12_01::Models::AdditionalUnattendContent
          end
          def virtual_machine_scale_set_osdisk
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetOSDisk
          end
          def win_rmconfiguration
            Azure::Compute::Mgmt::V2017_12_01::Models::WinRMConfiguration
          end
          def virtual_machine_scale_set_update_osdisk
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateOSDisk
          end
          def ssh_public_key
            Azure::Compute::Mgmt::V2017_12_01::Models::SshPublicKey
          end
          def virtual_machine_scale_set_data_disk
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetDataDisk
          end
          def linux_configuration
            Azure::Compute::Mgmt::V2017_12_01::Models::LinuxConfiguration
          end
          def virtual_machine_scale_set_storage_profile
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetStorageProfile
          end
          def vault_secret_group
            Azure::Compute::Mgmt::V2017_12_01::Models::VaultSecretGroup
          end
          def virtual_machine_scale_set_update_storage_profile
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateStorageProfile
          end
          def log_analytics_input_base
            Azure::Compute::Mgmt::V2017_12_01::Models::LogAnalyticsInputBase
          end
          def api_entity_reference
            Azure::Compute::Mgmt::V2017_12_01::Models::ApiEntityReference
          end
          def boot_diagnostics
            Azure::Compute::Mgmt::V2017_12_01::Models::BootDiagnostics
          end
          def virtual_machine_scale_set_public_ipaddress_configuration_dns_settings
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings
          end
          def virtual_machine_extension_handler_instance_view
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineExtensionHandlerInstanceView
          end
          def virtual_machine_scale_set_public_ipaddress_configuration
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetPublicIPAddressConfiguration
          end
          def disk_instance_view
            Azure::Compute::Mgmt::V2017_12_01::Models::DiskInstanceView
          end
          def virtual_machine_scale_set_update_public_ipaddress_configuration
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdatePublicIPAddressConfiguration
          end
          def virtual_machine_identity
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineIdentity
          end
          def compute_long_running_operation_properties
            Azure::Compute::Mgmt::V2017_12_01::Models::ComputeLongRunningOperationProperties
          end
          def virtual_machine_instance_view
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineInstanceView
          end
          def api_error
            Azure::Compute::Mgmt::V2017_12_01::Models::ApiError
          end
          def virtual_machine_size
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineSize
          end
          def virtual_machine_scale_set_network_configuration_dns_settings
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetNetworkConfigurationDnsSettings
          end
          def virtual_machine_extension_instance_view
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineExtensionInstanceView
          end
          def inner_error
            Azure::Compute::Mgmt::V2017_12_01::Models::InnerError
          end
          def data_disk_image
            Azure::Compute::Mgmt::V2017_12_01::Models::DataDiskImage
          end
          def api_error_base
            Azure::Compute::Mgmt::V2017_12_01::Models::ApiErrorBase
          end
          def list_usages_result
            Azure::Compute::Mgmt::V2017_12_01::Models::ListUsagesResult
          end
          def virtual_machine_scale_set_network_profile
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetNetworkProfile
          end
          def hardware_profile
            Azure::Compute::Mgmt::V2017_12_01::Models::HardwareProfile
          end
          def virtual_machine_scale_set_update_network_profile
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateNetworkProfile
          end
          def disk_encryption_settings
            Azure::Compute::Mgmt::V2017_12_01::Models::DiskEncryptionSettings
          end
          def rolling_upgrade_progress_info
            Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradeProgressInfo
          end
          def storage_profile
            Azure::Compute::Mgmt::V2017_12_01::Models::StorageProfile
          end
          def virtual_machine_scale_set_extension_list_result
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetExtensionListResult
          end
          def windows_configuration
            Azure::Compute::Mgmt::V2017_12_01::Models::WindowsConfiguration
          end
          def virtual_machine_scale_set_extension_profile
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetExtensionProfile
          end
          def vault_certificate
            Azure::Compute::Mgmt::V2017_12_01::Models::VaultCertificate
          end
          def virtual_machine_scale_set_vmprofile
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMProfile
          end
          def network_profile
            Azure::Compute::Mgmt::V2017_12_01::Models::NetworkProfile
          end
          def virtual_machine_scale_set_update_vmprofile
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateVMProfile
          end
          def virtual_machine_agent_instance_view
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineAgentInstanceView
          end
          def rolling_upgrade_running_status
            Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradeRunningStatus
          end
          def maintenance_redeploy_status
            Azure::Compute::Mgmt::V2017_12_01::Models::MaintenanceRedeployStatus
          end
          def virtual_machine_scale_set_vmlist_result
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMListResult
          end
          def virtual_machine_scale_set_vminstance_ids
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMInstanceIDs
          end
          def usage_name
            Azure::Compute::Mgmt::V2017_12_01::Models::UsageName
          end
          def virtual_machine_scale_set_vminstance_required_ids
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMInstanceRequiredIDs
          end
          def key_vault_secret_reference
            Azure::Compute::Mgmt::V2017_12_01::Models::KeyVaultSecretReference
          end
          def virtual_machine_status_code_count
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineStatusCodeCount
          end
          def win_rmlistener
            Azure::Compute::Mgmt::V2017_12_01::Models::WinRMListener
          end
          def virtual_machine_scale_set_instance_view_statuses_summary
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetInstanceViewStatusesSummary
          end
          def osprofile
            Azure::Compute::Mgmt::V2017_12_01::Models::OSProfile
          end
          def virtual_machine_scale_set_vmextensions_summary
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMExtensionsSummary
          end
          def boot_diagnostics_instance_view
            Azure::Compute::Mgmt::V2017_12_01::Models::BootDiagnosticsInstanceView
          end
          def virtual_machine_scale_set_instance_view
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetInstanceView
          end
          def purchase_plan
            Azure::Compute::Mgmt::V2017_12_01::Models::PurchasePlan
          end
          def virtual_machine_scale_set_list_result
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetListResult
          end
          def osdisk
            Azure::Compute::Mgmt::V2017_12_01::Models::OSDisk
          end
          def virtual_machine_scale_set_list_with_link_result
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetListWithLinkResult
          end
          def diagnostics_profile
            Azure::Compute::Mgmt::V2017_12_01::Models::DiagnosticsProfile
          end
          def virtual_machine_scale_set_sku_capacity
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetSkuCapacity
          end
          def run_command_input
            Azure::Compute::Mgmt::V2017_12_01::Models::RunCommandInput
          end
          def virtual_machine_scale_set_sku
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetSku
          end
          def operation_status_response
            Azure::Compute::Mgmt::V2017_12_01::Models::OperationStatusResponse
          end
          def virtual_machine_scale_set_list_skus_result
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetListSkusResult
          end
          def ssh_configuration
            Azure::Compute::Mgmt::V2017_12_01::Models::SshConfiguration
          end
          def virtual_machine_scale_set_vminstance_view
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVMInstanceView
          end
          def availability_set
            Azure::Compute::Mgmt::V2017_12_01::Models::AvailabilitySet
          end
          def availability_set_update
            Azure::Compute::Mgmt::V2017_12_01::Models::AvailabilitySetUpdate
          end
          def virtual_machine_extension_image
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineExtensionImage
          end
          def virtual_machine_image_resource
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineImageResource
          end
          def virtual_machine_extension
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineExtension
          end
          def virtual_machine_image
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineImage
          end
          def virtual_machine_capture_result
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineCaptureResult
          end
          def image_reference
            Azure::Compute::Mgmt::V2017_12_01::Models::ImageReference
          end
          def managed_disk_parameters
            Azure::Compute::Mgmt::V2017_12_01::Models::ManagedDiskParameters
          end
          def network_interface_reference
            Azure::Compute::Mgmt::V2017_12_01::Models::NetworkInterfaceReference
          end
          def virtual_machine
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachine
          end
          def virtual_machine_update
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineUpdate
          end
          def image
            Azure::Compute::Mgmt::V2017_12_01::Models::Image
          end
          def image_update
            Azure::Compute::Mgmt::V2017_12_01::Models::ImageUpdate
          end
          def virtual_machine_scale_set_ipconfiguration
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetIPConfiguration
          end
          def virtual_machine_scale_set_update_ipconfiguration
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateIPConfiguration
          end
          def virtual_machine_scale_set_network_configuration
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetNetworkConfiguration
          end
          def virtual_machine_scale_set_update_network_configuration
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdateNetworkConfiguration
          end
          def virtual_machine_scale_set_extension
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetExtension
          end
          def virtual_machine_scale_set
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSet
          end
          def virtual_machine_scale_set_update
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetUpdate
          end
          def virtual_machine_scale_set_vm
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetVM
          end
          def rolling_upgrade_status_info
            Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradeStatusInfo
          end
          def request_rate_by_interval_input
            Azure::Compute::Mgmt::V2017_12_01::Models::RequestRateByIntervalInput
          end
          def throttled_requests_input
            Azure::Compute::Mgmt::V2017_12_01::Models::ThrottledRequestsInput
          end
          def log_analytics_operation_result
            Azure::Compute::Mgmt::V2017_12_01::Models::LogAnalyticsOperationResult
          end
          def run_command_document
            Azure::Compute::Mgmt::V2017_12_01::Models::RunCommandDocument
          end
          def run_command_result
            Azure::Compute::Mgmt::V2017_12_01::Models::RunCommandResult
          end
          def status_level_types
            Azure::Compute::Mgmt::V2017_12_01::Models::StatusLevelTypes
          end
          def operating_system_types
            Azure::Compute::Mgmt::V2017_12_01::Models::OperatingSystemTypes
          end
          def virtual_machine_size_types
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineSizeTypes
          end
          def caching_types
            Azure::Compute::Mgmt::V2017_12_01::Models::CachingTypes
          end
          def disk_create_option_types
            Azure::Compute::Mgmt::V2017_12_01::Models::DiskCreateOptionTypes
          end
          def storage_account_types
            Azure::Compute::Mgmt::V2017_12_01::Models::StorageAccountTypes
          end
          def pass_names
            Azure::Compute::Mgmt::V2017_12_01::Models::PassNames
          end
          def component_names
            Azure::Compute::Mgmt::V2017_12_01::Models::ComponentNames
          end
          def setting_names
            Azure::Compute::Mgmt::V2017_12_01::Models::SettingNames
          end
          def protocol_types
            Azure::Compute::Mgmt::V2017_12_01::Models::ProtocolTypes
          end
          def resource_identity_type
            Azure::Compute::Mgmt::V2017_12_01::Models::ResourceIdentityType
          end
          def maintenance_operation_result_code_types
            Azure::Compute::Mgmt::V2017_12_01::Models::MaintenanceOperationResultCodeTypes
          end
          def upgrade_mode
            Azure::Compute::Mgmt::V2017_12_01::Models::UpgradeMode
          end
          def operating_system_state_types
            Azure::Compute::Mgmt::V2017_12_01::Models::OperatingSystemStateTypes
          end
          def ipversion
            Azure::Compute::Mgmt::V2017_12_01::Models::IPVersion
          end
          def virtual_machine_priority_types
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachinePriorityTypes
          end
          def virtual_machine_scale_set_sku_scale_type
            Azure::Compute::Mgmt::V2017_12_01::Models::VirtualMachineScaleSetSkuScaleType
          end
          def rolling_upgrade_status_code
            Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradeStatusCode
          end
          def rolling_upgrade_action_type
            Azure::Compute::Mgmt::V2017_12_01::Models::RollingUpgradeActionType
          end
          def interval_in_mins
            Azure::Compute::Mgmt::V2017_12_01::Models::IntervalInMins
          end
          def instance_view_types
            Azure::Compute::Mgmt::V2017_12_01::Models::InstanceViewTypes
          end
        end
      end
    end
  end
end
