# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_media_services'

module Azure::Profiles::Latest
  module MediaServices
    module Mgmt
      AccountFilters = Azure::MediaServices::Mgmt::V2018_07_01::AccountFilters
      Mediaservices = Azure::MediaServices::Mgmt::V2018_07_01::Mediaservices
      Assets = Azure::MediaServices::Mgmt::V2018_07_01::Assets
      AssetFilters = Azure::MediaServices::Mgmt::V2018_07_01::AssetFilters
      ContentKeyPolicies = Azure::MediaServices::Mgmt::V2018_07_01::ContentKeyPolicies
      Transforms = Azure::MediaServices::Mgmt::V2018_07_01::Transforms
      Jobs = Azure::MediaServices::Mgmt::V2018_07_01::Jobs
      StreamingPolicies = Azure::MediaServices::Mgmt::V2018_07_01::StreamingPolicies
      StreamingLocators = Azure::MediaServices::Mgmt::V2018_07_01::StreamingLocators
      LiveEvents = Azure::MediaServices::Mgmt::V2018_07_01::LiveEvents
      LiveOutputs = Azure::MediaServices::Mgmt::V2018_07_01::LiveOutputs
      StreamingEndpoints = Azure::MediaServices::Mgmt::V2018_07_01::StreamingEndpoints
      Operations = Azure::MediaServices::Mgmt::V2018_07_01::Operations
      Locations = Azure::MediaServices::Mgmt::V2018_07_01::Locations

      module Models
        CheckNameAvailabilityInput = Azure::MediaServices::Mgmt::V2018_07_01::Models::CheckNameAvailabilityInput
        Job = Azure::MediaServices::Mgmt::V2018_07_01::Models::Job
        OperationDisplay = Azure::MediaServices::Mgmt::V2018_07_01::Models::OperationDisplay
        Operation = Azure::MediaServices::Mgmt::V2018_07_01::Models::Operation
        ServiceSpecification = Azure::MediaServices::Mgmt::V2018_07_01::Models::ServiceSpecification
        OperationCollection = Azure::MediaServices::Mgmt::V2018_07_01::Models::OperationCollection
        ODataError = Azure::MediaServices::Mgmt::V2018_07_01::Models::ODataError
        Codec = Azure::MediaServices::Mgmt::V2018_07_01::Models::Codec
        PresentationTimeRange = Azure::MediaServices::Mgmt::V2018_07_01::Models::PresentationTimeRange
        ContentKeyPolicyProperties = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyProperties
        FirstQuality = Azure::MediaServices::Mgmt::V2018_07_01::Models::FirstQuality
        FilterTrackSelection = Azure::MediaServices::Mgmt::V2018_07_01::Models::FilterTrackSelection
        StreamingPolicyFairPlayConfiguration = Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingPolicyFairPlayConfiguration
        ContentKeyPolicyCollection = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyCollection
        AccountFilterCollection = Azure::MediaServices::Mgmt::V2018_07_01::Models::AccountFilterCollection
        Preset = Azure::MediaServices::Mgmt::V2018_07_01::Models::Preset
        FilterTrackPropertyCondition = Azure::MediaServices::Mgmt::V2018_07_01::Models::FilterTrackPropertyCondition
        StreamingPath = Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingPath
        MetricDimension = Azure::MediaServices::Mgmt::V2018_07_01::Models::MetricDimension
        StreamingLocatorContentKey = Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingLocatorContentKey
        ListContentKeysResponse = Azure::MediaServices::Mgmt::V2018_07_01::Models::ListContentKeysResponse
        Overlay = Azure::MediaServices::Mgmt::V2018_07_01::Models::Overlay
        EntityNameAvailabilityCheckOutput = Azure::MediaServices::Mgmt::V2018_07_01::Models::EntityNameAvailabilityCheckOutput
        CommonEncryptionCbcs = Azure::MediaServices::Mgmt::V2018_07_01::Models::CommonEncryptionCbcs
        SyncStorageKeysInput = Azure::MediaServices::Mgmt::V2018_07_01::Models::SyncStorageKeysInput
        CommonEncryptionCenc = Azure::MediaServices::Mgmt::V2018_07_01::Models::CommonEncryptionCenc
        LiveOutputListResult = Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveOutputListResult
        LiveEventEndpoint = Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventEndpoint
        AssetContainerSas = Azure::MediaServices::Mgmt::V2018_07_01::Models::AssetContainerSas
        StorageEncryptedAssetDecryptionData = Azure::MediaServices::Mgmt::V2018_07_01::Models::StorageEncryptedAssetDecryptionData
        Metric = Azure::MediaServices::Mgmt::V2018_07_01::Models::Metric
        ListStreamingLocatorsResponse = Azure::MediaServices::Mgmt::V2018_07_01::Models::ListStreamingLocatorsResponse
        MetricProperties = Azure::MediaServices::Mgmt::V2018_07_01::Models::MetricProperties
        StreamingPolicyPlayReadyConfiguration = Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingPolicyPlayReadyConfiguration
        ListContainerSasInput = Azure::MediaServices::Mgmt::V2018_07_01::Models::ListContainerSasInput
        ContentKeyPolicyPlayReadyExplicitAnalogTelevisionRestriction = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyPlayReadyExplicitAnalogTelevisionRestriction
        JobInput = Azure::MediaServices::Mgmt::V2018_07_01::Models::JobInput
        StreamingPolicyContentKeys = Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingPolicyContentKeys
        Hls = Azure::MediaServices::Mgmt::V2018_07_01::Models::Hls
        ContentKeyPolicyPlayReadyPlayRight = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyPlayReadyPlayRight
        EnvelopeEncryption = Azure::MediaServices::Mgmt::V2018_07_01::Models::EnvelopeEncryption
        ContentKeyPolicyPlayReadyLicense = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyPlayReadyLicense
        NoEncryption = Azure::MediaServices::Mgmt::V2018_07_01::Models::NoEncryption
        DefaultKey = Azure::MediaServices::Mgmt::V2018_07_01::Models::DefaultKey
        ContentKeyPolicyConfiguration = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyConfiguration
        EnabledProtocols = Azure::MediaServices::Mgmt::V2018_07_01::Models::EnabledProtocols
        TrackPropertyCondition = Azure::MediaServices::Mgmt::V2018_07_01::Models::TrackPropertyCondition
        CencDrmConfiguration = Azure::MediaServices::Mgmt::V2018_07_01::Models::CencDrmConfiguration
        TransformCollection = Azure::MediaServices::Mgmt::V2018_07_01::Models::TransformCollection
        CbcsDrmConfiguration = Azure::MediaServices::Mgmt::V2018_07_01::Models::CbcsDrmConfiguration
        StreamingPolicyCollection = Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingPolicyCollection
        JobError = Azure::MediaServices::Mgmt::V2018_07_01::Models::JobError
        Deinterlace = Azure::MediaServices::Mgmt::V2018_07_01::Models::Deinterlace
        StreamingLocatorCollection = Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingLocatorCollection
        Rectangle = Azure::MediaServices::Mgmt::V2018_07_01::Models::Rectangle
        IPRange = Azure::MediaServices::Mgmt::V2018_07_01::Models::IPRange
        MediaServiceCollection = Azure::MediaServices::Mgmt::V2018_07_01::Models::MediaServiceCollection
        AssetFileEncryptionMetadata = Azure::MediaServices::Mgmt::V2018_07_01::Models::AssetFileEncryptionMetadata
        Layer = Azure::MediaServices::Mgmt::V2018_07_01::Models::Layer
        StreamingPolicyWidevineConfiguration = Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingPolicyWidevineConfiguration
        StreamingEndpointListResult = Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingEndpointListResult
        AssetFilterCollection = Azure::MediaServices::Mgmt::V2018_07_01::Models::AssetFilterCollection
        StreamingEntityScaleUnit = Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingEntityScaleUnit
        StreamingPolicyContentKey = Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingPolicyContentKey
        StreamingEndpointAccessControl = Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingEndpointAccessControl
        ContentKeyPolicyRestriction = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyRestriction
        AkamaiAccessControl = Azure::MediaServices::Mgmt::V2018_07_01::Models::AkamaiAccessControl
        ContentKeyPolicyRestrictionTokenKey = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyRestrictionTokenKey
        AkamaiSignatureHeaderAuthenticationKey = Azure::MediaServices::Mgmt::V2018_07_01::Models::AkamaiSignatureHeaderAuthenticationKey
        ListPathsResponse = Azure::MediaServices::Mgmt::V2018_07_01::Models::ListPathsResponse
        OutputFile = Azure::MediaServices::Mgmt::V2018_07_01::Models::OutputFile
        JobErrorDetail = Azure::MediaServices::Mgmt::V2018_07_01::Models::JobErrorDetail
        LiveEventListResult = Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventListResult
        SubscriptionMediaServiceCollection = Azure::MediaServices::Mgmt::V2018_07_01::Models::SubscriptionMediaServiceCollection
        LiveEventActionInput = Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventActionInput
        AssetCollection = Azure::MediaServices::Mgmt::V2018_07_01::Models::AssetCollection
        CrossSiteAccessPolicies = Azure::MediaServices::Mgmt::V2018_07_01::Models::CrossSiteAccessPolicies
        ContentKeyPolicyTokenClaim = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyTokenClaim
        LiveEventEncoding = Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventEncoding
        JobCollection = Azure::MediaServices::Mgmt::V2018_07_01::Models::JobCollection
        LiveEventPreview = Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventPreview
        ContentKeyPolicyOption = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyOption
        LiveEventPreviewAccessControl = Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventPreviewAccessControl
        ContentKeyPolicyPlayReadyContentKeyLocation = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyPlayReadyContentKeyLocation
        LiveEventInput = Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventInput
        JobOutput = Azure::MediaServices::Mgmt::V2018_07_01::Models::JobOutput
        LiveEventInputAccessControl = Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventInputAccessControl
        TrackSelection = Azure::MediaServices::Mgmt::V2018_07_01::Models::TrackSelection
        IPAccessControl = Azure::MediaServices::Mgmt::V2018_07_01::Models::IPAccessControl
        AssetStreamingLocator = Azure::MediaServices::Mgmt::V2018_07_01::Models::AssetStreamingLocator
        TransformOutput = Azure::MediaServices::Mgmt::V2018_07_01::Models::TransformOutput
        AccountFilter = Azure::MediaServices::Mgmt::V2018_07_01::Models::AccountFilter
        MediaService = Azure::MediaServices::Mgmt::V2018_07_01::Models::MediaService
        SubscriptionMediaService = Azure::MediaServices::Mgmt::V2018_07_01::Models::SubscriptionMediaService
        Asset = Azure::MediaServices::Mgmt::V2018_07_01::Models::Asset
        AssetFilter = Azure::MediaServices::Mgmt::V2018_07_01::Models::AssetFilter
        ContentKeyPolicyPlayReadyContentEncryptionKeyFromHeader = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyPlayReadyContentEncryptionKeyFromHeader
        ContentKeyPolicyPlayReadyContentEncryptionKeyFromKeyIdentifier = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyPlayReadyContentEncryptionKeyFromKeyIdentifier
        ContentKeyPolicyOpenRestriction = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyOpenRestriction
        ContentKeyPolicyUnknownRestriction = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyUnknownRestriction
        ContentKeyPolicySymmetricTokenKey = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicySymmetricTokenKey
        ContentKeyPolicyRsaTokenKey = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyRsaTokenKey
        ContentKeyPolicyX509CertificateTokenKey = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyX509CertificateTokenKey
        ContentKeyPolicyTokenRestriction = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyTokenRestriction
        ContentKeyPolicyClearKeyConfiguration = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyClearKeyConfiguration
        ContentKeyPolicyUnknownConfiguration = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyUnknownConfiguration
        ContentKeyPolicyWidevineConfiguration = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyWidevineConfiguration
        ContentKeyPolicyPlayReadyConfiguration = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyPlayReadyConfiguration
        ContentKeyPolicyFairPlayConfiguration = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyFairPlayConfiguration
        ContentKeyPolicy = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicy
        Audio = Azure::MediaServices::Mgmt::V2018_07_01::Models::Audio
        AacAudio = Azure::MediaServices::Mgmt::V2018_07_01::Models::AacAudio
        AudioAnalyzerPreset = Azure::MediaServices::Mgmt::V2018_07_01::Models::AudioAnalyzerPreset
        AudioOverlay = Azure::MediaServices::Mgmt::V2018_07_01::Models::AudioOverlay
        CopyVideo = Azure::MediaServices::Mgmt::V2018_07_01::Models::CopyVideo
        Video = Azure::MediaServices::Mgmt::V2018_07_01::Models::Video
        ImageFormat = Azure::MediaServices::Mgmt::V2018_07_01::Models::ImageFormat
        JpgFormat = Azure::MediaServices::Mgmt::V2018_07_01::Models::JpgFormat
        TrackedResource = Azure::MediaServices::Mgmt::V2018_07_01::Models::TrackedResource
        PngFormat = Azure::MediaServices::Mgmt::V2018_07_01::Models::PngFormat
        ProxyResource = Azure::MediaServices::Mgmt::V2018_07_01::Models::ProxyResource
        VideoLayer = Azure::MediaServices::Mgmt::V2018_07_01::Models::VideoLayer
        CopyAudio = Azure::MediaServices::Mgmt::V2018_07_01::Models::CopyAudio
        H264Video = Azure::MediaServices::Mgmt::V2018_07_01::Models::H264Video
        H264Layer = Azure::MediaServices::Mgmt::V2018_07_01::Models::H264Layer
        JpgImage = Azure::MediaServices::Mgmt::V2018_07_01::Models::JpgImage
        JpgLayer = Azure::MediaServices::Mgmt::V2018_07_01::Models::JpgLayer
        Mp4Format = Azure::MediaServices::Mgmt::V2018_07_01::Models::Mp4Format
        MultiBitrateFormat = Azure::MediaServices::Mgmt::V2018_07_01::Models::MultiBitrateFormat
        PngImage = Azure::MediaServices::Mgmt::V2018_07_01::Models::PngImage
        PngLayer = Azure::MediaServices::Mgmt::V2018_07_01::Models::PngLayer
        StandardEncoderPreset = Azure::MediaServices::Mgmt::V2018_07_01::Models::StandardEncoderPreset
        BuiltInStandardEncoderPreset = Azure::MediaServices::Mgmt::V2018_07_01::Models::BuiltInStandardEncoderPreset
        TransportStreamFormat = Azure::MediaServices::Mgmt::V2018_07_01::Models::TransportStreamFormat
        VideoAnalyzerPreset = Azure::MediaServices::Mgmt::V2018_07_01::Models::VideoAnalyzerPreset
        Transform = Azure::MediaServices::Mgmt::V2018_07_01::Models::Transform
        VideoOverlay = Azure::MediaServices::Mgmt::V2018_07_01::Models::VideoOverlay
        JobInputs = Azure::MediaServices::Mgmt::V2018_07_01::Models::JobInputs
        JobInputClip = Azure::MediaServices::Mgmt::V2018_07_01::Models::JobInputClip
        JobInputHttp = Azure::MediaServices::Mgmt::V2018_07_01::Models::JobInputHttp
        JobOutputAsset = Azure::MediaServices::Mgmt::V2018_07_01::Models::JobOutputAsset
        StreamingLocator = Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingLocator
        LiveOutput = Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveOutput
        JobInputAsset = Azure::MediaServices::Mgmt::V2018_07_01::Models::JobInputAsset
        StreamingEndpoint = Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingEndpoint
        FilterTrackPropertyType = Azure::MediaServices::Mgmt::V2018_07_01::Models::FilterTrackPropertyType
        StreamingPolicy = Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingPolicy
        MetricUnit = Azure::MediaServices::Mgmt::V2018_07_01::Models::MetricUnit
        MetricAggregationType = Azure::MediaServices::Mgmt::V2018_07_01::Models::MetricAggregationType
        LiveEvent = Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEvent
        AssetStorageEncryptionFormat = Azure::MediaServices::Mgmt::V2018_07_01::Models::AssetStorageEncryptionFormat
        ContentKeyPolicyPlayReadyUnknownOutputPassingOption = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyPlayReadyUnknownOutputPassingOption
        FilterTrackPropertyCompareOperation = Azure::MediaServices::Mgmt::V2018_07_01::Models::FilterTrackPropertyCompareOperation
        AssetContainerPermission = Azure::MediaServices::Mgmt::V2018_07_01::Models::AssetContainerPermission
        ContentKeyPolicyRestrictionTokenType = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyRestrictionTokenType
        ContentKeyPolicyPlayReadyLicenseType = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyPlayReadyLicenseType
        ContentKeyPolicyPlayReadyContentType = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyPlayReadyContentType
        StretchMode = Azure::MediaServices::Mgmt::V2018_07_01::Models::StretchMode
        ContentKeyPolicyFairPlayRentalAndLeaseKeyType = Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyFairPlayRentalAndLeaseKeyType
        AacAudioProfile = Azure::MediaServices::Mgmt::V2018_07_01::Models::AacAudioProfile
        DeinterlaceMode = Azure::MediaServices::Mgmt::V2018_07_01::Models::DeinterlaceMode
        DeinterlaceParity = Azure::MediaServices::Mgmt::V2018_07_01::Models::DeinterlaceParity
        H264VideoProfile = Azure::MediaServices::Mgmt::V2018_07_01::Models::H264VideoProfile
        Rotation = Azure::MediaServices::Mgmt::V2018_07_01::Models::Rotation
        H264Complexity = Azure::MediaServices::Mgmt::V2018_07_01::Models::H264Complexity
        EntropyMode = Azure::MediaServices::Mgmt::V2018_07_01::Models::EntropyMode
        InsightsType = Azure::MediaServices::Mgmt::V2018_07_01::Models::InsightsType
        Provider = Azure::MediaServices::Mgmt::V2018_07_01::Models::Provider
        Priority = Azure::MediaServices::Mgmt::V2018_07_01::Models::Priority
        OnErrorType = Azure::MediaServices::Mgmt::V2018_07_01::Models::OnErrorType
        EncoderNamedPreset = Azure::MediaServices::Mgmt::V2018_07_01::Models::EncoderNamedPreset
        JobErrorCode = Azure::MediaServices::Mgmt::V2018_07_01::Models::JobErrorCode
        JobErrorCategory = Azure::MediaServices::Mgmt::V2018_07_01::Models::JobErrorCategory
        JobRetry = Azure::MediaServices::Mgmt::V2018_07_01::Models::JobRetry
        JobState = Azure::MediaServices::Mgmt::V2018_07_01::Models::JobState
        TrackPropertyCompareOperation = Azure::MediaServices::Mgmt::V2018_07_01::Models::TrackPropertyCompareOperation
        StreamingLocatorContentKeyType = Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingLocatorContentKeyType
        TrackPropertyType = Azure::MediaServices::Mgmt::V2018_07_01::Models::TrackPropertyType
        EncryptionScheme = Azure::MediaServices::Mgmt::V2018_07_01::Models::EncryptionScheme
        LiveOutputResourceState = Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveOutputResourceState
        StreamingPolicyStreamingProtocol = Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingPolicyStreamingProtocol
        LiveEventEncodingType = Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventEncodingType
        Filters = Azure::MediaServices::Mgmt::V2018_07_01::Models::Filters
        LiveEventInputProtocol = Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventInputProtocol
        ApiError = Azure::MediaServices::Mgmt::V2018_07_01::Models::ApiError
        LiveEventResourceState = Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventResourceState
        StreamOptionsFlag = Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamOptionsFlag
        StreamingEndpointResourceState = Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingEndpointResourceState
        Resource = Azure::MediaServices::Mgmt::V2018_07_01::Models::Resource
        Format = Azure::MediaServices::Mgmt::V2018_07_01::Models::Format
        Image = Azure::MediaServices::Mgmt::V2018_07_01::Models::Image
        Location = Azure::MediaServices::Mgmt::V2018_07_01::Models::Location
        StorageAccount = Azure::MediaServices::Mgmt::V2018_07_01::Models::StorageAccount
        StorageAccountType = Azure::MediaServices::Mgmt::V2018_07_01::Models::StorageAccountType
      end

      class MediaServicesManagementClass
        attr_reader :account_filters, :mediaservices, :assets, :asset_filters, :content_key_policies, :transforms, :jobs, :streaming_policies, :streaming_locators, :live_events, :live_outputs, :streaming_endpoints, :operations, :locations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::MediaServices::Mgmt::V2018_07_01::AzureMediaServices.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @account_filters = @client_0.account_filters
          @mediaservices = @client_0.mediaservices
          @assets = @client_0.assets
          @asset_filters = @client_0.asset_filters
          @content_key_policies = @client_0.content_key_policies
          @transforms = @client_0.transforms
          @jobs = @client_0.jobs
          @streaming_policies = @client_0.streaming_policies
          @streaming_locators = @client_0.streaming_locators
          @live_events = @client_0.live_events
          @live_outputs = @client_0.live_outputs
          @streaming_endpoints = @client_0.streaming_endpoints
          @operations = @client_0.operations
          @locations = @client_0.locations

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/MediaServices/Mgmt"
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
          def check_name_availability_input
            Azure::MediaServices::Mgmt::V2018_07_01::Models::CheckNameAvailabilityInput
          end
          def job
            Azure::MediaServices::Mgmt::V2018_07_01::Models::Job
          end
          def operation_display
            Azure::MediaServices::Mgmt::V2018_07_01::Models::OperationDisplay
          end
          def operation
            Azure::MediaServices::Mgmt::V2018_07_01::Models::Operation
          end
          def service_specification
            Azure::MediaServices::Mgmt::V2018_07_01::Models::ServiceSpecification
          end
          def operation_collection
            Azure::MediaServices::Mgmt::V2018_07_01::Models::OperationCollection
          end
          def odata_error
            Azure::MediaServices::Mgmt::V2018_07_01::Models::ODataError
          end
          def codec
            Azure::MediaServices::Mgmt::V2018_07_01::Models::Codec
          end
          def presentation_time_range
            Azure::MediaServices::Mgmt::V2018_07_01::Models::PresentationTimeRange
          end
          def content_key_policy_properties
            Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyProperties
          end
          def first_quality
            Azure::MediaServices::Mgmt::V2018_07_01::Models::FirstQuality
          end
          def filter_track_selection
            Azure::MediaServices::Mgmt::V2018_07_01::Models::FilterTrackSelection
          end
          def streaming_policy_fair_play_configuration
            Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingPolicyFairPlayConfiguration
          end
          def content_key_policy_collection
            Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyCollection
          end
          def account_filter_collection
            Azure::MediaServices::Mgmt::V2018_07_01::Models::AccountFilterCollection
          end
          def preset
            Azure::MediaServices::Mgmt::V2018_07_01::Models::Preset
          end
          def filter_track_property_condition
            Azure::MediaServices::Mgmt::V2018_07_01::Models::FilterTrackPropertyCondition
          end
          def streaming_path
            Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingPath
          end
          def metric_dimension
            Azure::MediaServices::Mgmt::V2018_07_01::Models::MetricDimension
          end
          def streaming_locator_content_key
            Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingLocatorContentKey
          end
          def list_content_keys_response
            Azure::MediaServices::Mgmt::V2018_07_01::Models::ListContentKeysResponse
          end
          def overlay
            Azure::MediaServices::Mgmt::V2018_07_01::Models::Overlay
          end
          def entity_name_availability_check_output
            Azure::MediaServices::Mgmt::V2018_07_01::Models::EntityNameAvailabilityCheckOutput
          end
          def common_encryption_cbcs
            Azure::MediaServices::Mgmt::V2018_07_01::Models::CommonEncryptionCbcs
          end
          def sync_storage_keys_input
            Azure::MediaServices::Mgmt::V2018_07_01::Models::SyncStorageKeysInput
          end
          def common_encryption_cenc
            Azure::MediaServices::Mgmt::V2018_07_01::Models::CommonEncryptionCenc
          end
          def live_output_list_result
            Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveOutputListResult
          end
          def live_event_endpoint
            Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventEndpoint
          end
          def asset_container_sas
            Azure::MediaServices::Mgmt::V2018_07_01::Models::AssetContainerSas
          end
          def storage_encrypted_asset_decryption_data
            Azure::MediaServices::Mgmt::V2018_07_01::Models::StorageEncryptedAssetDecryptionData
          end
          def metric
            Azure::MediaServices::Mgmt::V2018_07_01::Models::Metric
          end
          def list_streaming_locators_response
            Azure::MediaServices::Mgmt::V2018_07_01::Models::ListStreamingLocatorsResponse
          end
          def metric_properties
            Azure::MediaServices::Mgmt::V2018_07_01::Models::MetricProperties
          end
          def streaming_policy_play_ready_configuration
            Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingPolicyPlayReadyConfiguration
          end
          def list_container_sas_input
            Azure::MediaServices::Mgmt::V2018_07_01::Models::ListContainerSasInput
          end
          def content_key_policy_play_ready_explicit_analog_television_restriction
            Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyPlayReadyExplicitAnalogTelevisionRestriction
          end
          def job_input
            Azure::MediaServices::Mgmt::V2018_07_01::Models::JobInput
          end
          def streaming_policy_content_keys
            Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingPolicyContentKeys
          end
          def hls
            Azure::MediaServices::Mgmt::V2018_07_01::Models::Hls
          end
          def content_key_policy_play_ready_play_right
            Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyPlayReadyPlayRight
          end
          def envelope_encryption
            Azure::MediaServices::Mgmt::V2018_07_01::Models::EnvelopeEncryption
          end
          def content_key_policy_play_ready_license
            Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyPlayReadyLicense
          end
          def no_encryption
            Azure::MediaServices::Mgmt::V2018_07_01::Models::NoEncryption
          end
          def default_key
            Azure::MediaServices::Mgmt::V2018_07_01::Models::DefaultKey
          end
          def content_key_policy_configuration
            Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyConfiguration
          end
          def enabled_protocols
            Azure::MediaServices::Mgmt::V2018_07_01::Models::EnabledProtocols
          end
          def track_property_condition
            Azure::MediaServices::Mgmt::V2018_07_01::Models::TrackPropertyCondition
          end
          def cenc_drm_configuration
            Azure::MediaServices::Mgmt::V2018_07_01::Models::CencDrmConfiguration
          end
          def transform_collection
            Azure::MediaServices::Mgmt::V2018_07_01::Models::TransformCollection
          end
          def cbcs_drm_configuration
            Azure::MediaServices::Mgmt::V2018_07_01::Models::CbcsDrmConfiguration
          end
          def streaming_policy_collection
            Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingPolicyCollection
          end
          def job_error
            Azure::MediaServices::Mgmt::V2018_07_01::Models::JobError
          end
          def deinterlace
            Azure::MediaServices::Mgmt::V2018_07_01::Models::Deinterlace
          end
          def streaming_locator_collection
            Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingLocatorCollection
          end
          def rectangle
            Azure::MediaServices::Mgmt::V2018_07_01::Models::Rectangle
          end
          def iprange
            Azure::MediaServices::Mgmt::V2018_07_01::Models::IPRange
          end
          def media_service_collection
            Azure::MediaServices::Mgmt::V2018_07_01::Models::MediaServiceCollection
          end
          def asset_file_encryption_metadata
            Azure::MediaServices::Mgmt::V2018_07_01::Models::AssetFileEncryptionMetadata
          end
          def layer
            Azure::MediaServices::Mgmt::V2018_07_01::Models::Layer
          end
          def streaming_policy_widevine_configuration
            Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingPolicyWidevineConfiguration
          end
          def streaming_endpoint_list_result
            Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingEndpointListResult
          end
          def asset_filter_collection
            Azure::MediaServices::Mgmt::V2018_07_01::Models::AssetFilterCollection
          end
          def streaming_entity_scale_unit
            Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingEntityScaleUnit
          end
          def streaming_policy_content_key
            Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingPolicyContentKey
          end
          def streaming_endpoint_access_control
            Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingEndpointAccessControl
          end
          def content_key_policy_restriction
            Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyRestriction
          end
          def akamai_access_control
            Azure::MediaServices::Mgmt::V2018_07_01::Models::AkamaiAccessControl
          end
          def content_key_policy_restriction_token_key
            Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyRestrictionTokenKey
          end
          def akamai_signature_header_authentication_key
            Azure::MediaServices::Mgmt::V2018_07_01::Models::AkamaiSignatureHeaderAuthenticationKey
          end
          def list_paths_response
            Azure::MediaServices::Mgmt::V2018_07_01::Models::ListPathsResponse
          end
          def output_file
            Azure::MediaServices::Mgmt::V2018_07_01::Models::OutputFile
          end
          def job_error_detail
            Azure::MediaServices::Mgmt::V2018_07_01::Models::JobErrorDetail
          end
          def live_event_list_result
            Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventListResult
          end
          def subscription_media_service_collection
            Azure::MediaServices::Mgmt::V2018_07_01::Models::SubscriptionMediaServiceCollection
          end
          def live_event_action_input
            Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventActionInput
          end
          def asset_collection
            Azure::MediaServices::Mgmt::V2018_07_01::Models::AssetCollection
          end
          def cross_site_access_policies
            Azure::MediaServices::Mgmt::V2018_07_01::Models::CrossSiteAccessPolicies
          end
          def content_key_policy_token_claim
            Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyTokenClaim
          end
          def live_event_encoding
            Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventEncoding
          end
          def job_collection
            Azure::MediaServices::Mgmt::V2018_07_01::Models::JobCollection
          end
          def live_event_preview
            Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventPreview
          end
          def content_key_policy_option
            Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyOption
          end
          def live_event_preview_access_control
            Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventPreviewAccessControl
          end
          def content_key_policy_play_ready_content_key_location
            Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyPlayReadyContentKeyLocation
          end
          def live_event_input
            Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventInput
          end
          def job_output
            Azure::MediaServices::Mgmt::V2018_07_01::Models::JobOutput
          end
          def live_event_input_access_control
            Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventInputAccessControl
          end
          def track_selection
            Azure::MediaServices::Mgmt::V2018_07_01::Models::TrackSelection
          end
          def ipaccess_control
            Azure::MediaServices::Mgmt::V2018_07_01::Models::IPAccessControl
          end
          def asset_streaming_locator
            Azure::MediaServices::Mgmt::V2018_07_01::Models::AssetStreamingLocator
          end
          def transform_output
            Azure::MediaServices::Mgmt::V2018_07_01::Models::TransformOutput
          end
          def account_filter
            Azure::MediaServices::Mgmt::V2018_07_01::Models::AccountFilter
          end
          def media_service
            Azure::MediaServices::Mgmt::V2018_07_01::Models::MediaService
          end
          def subscription_media_service
            Azure::MediaServices::Mgmt::V2018_07_01::Models::SubscriptionMediaService
          end
          def asset
            Azure::MediaServices::Mgmt::V2018_07_01::Models::Asset
          end
          def asset_filter
            Azure::MediaServices::Mgmt::V2018_07_01::Models::AssetFilter
          end
          def content_key_policy_play_ready_content_encryption_key_from_header
            Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyPlayReadyContentEncryptionKeyFromHeader
          end
          def content_key_policy_play_ready_content_encryption_key_from_key_identifier
            Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyPlayReadyContentEncryptionKeyFromKeyIdentifier
          end
          def content_key_policy_open_restriction
            Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyOpenRestriction
          end
          def content_key_policy_unknown_restriction
            Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyUnknownRestriction
          end
          def content_key_policy_symmetric_token_key
            Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicySymmetricTokenKey
          end
          def content_key_policy_rsa_token_key
            Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyRsaTokenKey
          end
          def content_key_policy_x509_certificate_token_key
            Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyX509CertificateTokenKey
          end
          def content_key_policy_token_restriction
            Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyTokenRestriction
          end
          def content_key_policy_clear_key_configuration
            Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyClearKeyConfiguration
          end
          def content_key_policy_unknown_configuration
            Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyUnknownConfiguration
          end
          def content_key_policy_widevine_configuration
            Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyWidevineConfiguration
          end
          def content_key_policy_play_ready_configuration
            Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyPlayReadyConfiguration
          end
          def content_key_policy_fair_play_configuration
            Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyFairPlayConfiguration
          end
          def content_key_policy
            Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicy
          end
          def audio
            Azure::MediaServices::Mgmt::V2018_07_01::Models::Audio
          end
          def aac_audio
            Azure::MediaServices::Mgmt::V2018_07_01::Models::AacAudio
          end
          def audio_analyzer_preset
            Azure::MediaServices::Mgmt::V2018_07_01::Models::AudioAnalyzerPreset
          end
          def audio_overlay
            Azure::MediaServices::Mgmt::V2018_07_01::Models::AudioOverlay
          end
          def copy_video
            Azure::MediaServices::Mgmt::V2018_07_01::Models::CopyVideo
          end
          def video
            Azure::MediaServices::Mgmt::V2018_07_01::Models::Video
          end
          def image_format
            Azure::MediaServices::Mgmt::V2018_07_01::Models::ImageFormat
          end
          def jpg_format
            Azure::MediaServices::Mgmt::V2018_07_01::Models::JpgFormat
          end
          def tracked_resource
            Azure::MediaServices::Mgmt::V2018_07_01::Models::TrackedResource
          end
          def png_format
            Azure::MediaServices::Mgmt::V2018_07_01::Models::PngFormat
          end
          def proxy_resource
            Azure::MediaServices::Mgmt::V2018_07_01::Models::ProxyResource
          end
          def video_layer
            Azure::MediaServices::Mgmt::V2018_07_01::Models::VideoLayer
          end
          def copy_audio
            Azure::MediaServices::Mgmt::V2018_07_01::Models::CopyAudio
          end
          def h264_video
            Azure::MediaServices::Mgmt::V2018_07_01::Models::H264Video
          end
          def h264_layer
            Azure::MediaServices::Mgmt::V2018_07_01::Models::H264Layer
          end
          def jpg_image
            Azure::MediaServices::Mgmt::V2018_07_01::Models::JpgImage
          end
          def jpg_layer
            Azure::MediaServices::Mgmt::V2018_07_01::Models::JpgLayer
          end
          def mp4_format
            Azure::MediaServices::Mgmt::V2018_07_01::Models::Mp4Format
          end
          def multi_bitrate_format
            Azure::MediaServices::Mgmt::V2018_07_01::Models::MultiBitrateFormat
          end
          def png_image
            Azure::MediaServices::Mgmt::V2018_07_01::Models::PngImage
          end
          def png_layer
            Azure::MediaServices::Mgmt::V2018_07_01::Models::PngLayer
          end
          def standard_encoder_preset
            Azure::MediaServices::Mgmt::V2018_07_01::Models::StandardEncoderPreset
          end
          def built_in_standard_encoder_preset
            Azure::MediaServices::Mgmt::V2018_07_01::Models::BuiltInStandardEncoderPreset
          end
          def transport_stream_format
            Azure::MediaServices::Mgmt::V2018_07_01::Models::TransportStreamFormat
          end
          def video_analyzer_preset
            Azure::MediaServices::Mgmt::V2018_07_01::Models::VideoAnalyzerPreset
          end
          def transform
            Azure::MediaServices::Mgmt::V2018_07_01::Models::Transform
          end
          def video_overlay
            Azure::MediaServices::Mgmt::V2018_07_01::Models::VideoOverlay
          end
          def job_inputs
            Azure::MediaServices::Mgmt::V2018_07_01::Models::JobInputs
          end
          def job_input_clip
            Azure::MediaServices::Mgmt::V2018_07_01::Models::JobInputClip
          end
          def job_input_http
            Azure::MediaServices::Mgmt::V2018_07_01::Models::JobInputHttp
          end
          def job_output_asset
            Azure::MediaServices::Mgmt::V2018_07_01::Models::JobOutputAsset
          end
          def streaming_locator
            Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingLocator
          end
          def live_output
            Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveOutput
          end
          def job_input_asset
            Azure::MediaServices::Mgmt::V2018_07_01::Models::JobInputAsset
          end
          def streaming_endpoint
            Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingEndpoint
          end
          def filter_track_property_type
            Azure::MediaServices::Mgmt::V2018_07_01::Models::FilterTrackPropertyType
          end
          def streaming_policy
            Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingPolicy
          end
          def metric_unit
            Azure::MediaServices::Mgmt::V2018_07_01::Models::MetricUnit
          end
          def metric_aggregation_type
            Azure::MediaServices::Mgmt::V2018_07_01::Models::MetricAggregationType
          end
          def live_event
            Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEvent
          end
          def asset_storage_encryption_format
            Azure::MediaServices::Mgmt::V2018_07_01::Models::AssetStorageEncryptionFormat
          end
          def content_key_policy_play_ready_unknown_output_passing_option
            Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyPlayReadyUnknownOutputPassingOption
          end
          def filter_track_property_compare_operation
            Azure::MediaServices::Mgmt::V2018_07_01::Models::FilterTrackPropertyCompareOperation
          end
          def asset_container_permission
            Azure::MediaServices::Mgmt::V2018_07_01::Models::AssetContainerPermission
          end
          def content_key_policy_restriction_token_type
            Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyRestrictionTokenType
          end
          def content_key_policy_play_ready_license_type
            Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyPlayReadyLicenseType
          end
          def content_key_policy_play_ready_content_type
            Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyPlayReadyContentType
          end
          def stretch_mode
            Azure::MediaServices::Mgmt::V2018_07_01::Models::StretchMode
          end
          def content_key_policy_fair_play_rental_and_lease_key_type
            Azure::MediaServices::Mgmt::V2018_07_01::Models::ContentKeyPolicyFairPlayRentalAndLeaseKeyType
          end
          def aac_audio_profile
            Azure::MediaServices::Mgmt::V2018_07_01::Models::AacAudioProfile
          end
          def deinterlace_mode
            Azure::MediaServices::Mgmt::V2018_07_01::Models::DeinterlaceMode
          end
          def deinterlace_parity
            Azure::MediaServices::Mgmt::V2018_07_01::Models::DeinterlaceParity
          end
          def h264_video_profile
            Azure::MediaServices::Mgmt::V2018_07_01::Models::H264VideoProfile
          end
          def rotation
            Azure::MediaServices::Mgmt::V2018_07_01::Models::Rotation
          end
          def h264_complexity
            Azure::MediaServices::Mgmt::V2018_07_01::Models::H264Complexity
          end
          def entropy_mode
            Azure::MediaServices::Mgmt::V2018_07_01::Models::EntropyMode
          end
          def insights_type
            Azure::MediaServices::Mgmt::V2018_07_01::Models::InsightsType
          end
          def provider
            Azure::MediaServices::Mgmt::V2018_07_01::Models::Provider
          end
          def priority
            Azure::MediaServices::Mgmt::V2018_07_01::Models::Priority
          end
          def on_error_type
            Azure::MediaServices::Mgmt::V2018_07_01::Models::OnErrorType
          end
          def encoder_named_preset
            Azure::MediaServices::Mgmt::V2018_07_01::Models::EncoderNamedPreset
          end
          def job_error_code
            Azure::MediaServices::Mgmt::V2018_07_01::Models::JobErrorCode
          end
          def job_error_category
            Azure::MediaServices::Mgmt::V2018_07_01::Models::JobErrorCategory
          end
          def job_retry
            Azure::MediaServices::Mgmt::V2018_07_01::Models::JobRetry
          end
          def job_state
            Azure::MediaServices::Mgmt::V2018_07_01::Models::JobState
          end
          def track_property_compare_operation
            Azure::MediaServices::Mgmt::V2018_07_01::Models::TrackPropertyCompareOperation
          end
          def streaming_locator_content_key_type
            Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingLocatorContentKeyType
          end
          def track_property_type
            Azure::MediaServices::Mgmt::V2018_07_01::Models::TrackPropertyType
          end
          def encryption_scheme
            Azure::MediaServices::Mgmt::V2018_07_01::Models::EncryptionScheme
          end
          def live_output_resource_state
            Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveOutputResourceState
          end
          def streaming_policy_streaming_protocol
            Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingPolicyStreamingProtocol
          end
          def live_event_encoding_type
            Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventEncodingType
          end
          def filters
            Azure::MediaServices::Mgmt::V2018_07_01::Models::Filters
          end
          def live_event_input_protocol
            Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventInputProtocol
          end
          def api_error
            Azure::MediaServices::Mgmt::V2018_07_01::Models::ApiError
          end
          def live_event_resource_state
            Azure::MediaServices::Mgmt::V2018_07_01::Models::LiveEventResourceState
          end
          def stream_options_flag
            Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamOptionsFlag
          end
          def streaming_endpoint_resource_state
            Azure::MediaServices::Mgmt::V2018_07_01::Models::StreamingEndpointResourceState
          end
          def resource
            Azure::MediaServices::Mgmt::V2018_07_01::Models::Resource
          end
          def format
            Azure::MediaServices::Mgmt::V2018_07_01::Models::Format
          end
          def image
            Azure::MediaServices::Mgmt::V2018_07_01::Models::Image
          end
          def location
            Azure::MediaServices::Mgmt::V2018_07_01::Models::Location
          end
          def storage_account
            Azure::MediaServices::Mgmt::V2018_07_01::Models::StorageAccount
          end
          def storage_account_type
            Azure::MediaServices::Mgmt::V2018_07_01::Models::StorageAccountType
          end
        end
      end
    end
  end
end
