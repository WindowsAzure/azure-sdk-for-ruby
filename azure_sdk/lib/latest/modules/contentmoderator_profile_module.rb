# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_contentmoderator'

module Azure::Profiles::Latest
  module ContentModerator
    ListManagementTermLists = Azure::CognitiveServices::ContentModerator::V1_0::ListManagementTermLists
    ListManagementImage = Azure::CognitiveServices::ContentModerator::V1_0::ListManagementImage
    ListManagementTerm = Azure::CognitiveServices::ContentModerator::V1_0::ListManagementTerm
    Reviews = Azure::CognitiveServices::ContentModerator::V1_0::Reviews
    ImageModeration = Azure::CognitiveServices::ContentModerator::V1_0::ImageModeration
    TextModeration = Azure::CognitiveServices::ContentModerator::V1_0::TextModeration
    ListManagementImageLists = Azure::CognitiveServices::ContentModerator::V1_0::ListManagementImageLists

    module Models
      ImageAdditionalInfoItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::ImageAdditionalInfoItem
      ImageIds = Azure::CognitiveServices::ContentModerator::V1_0::Models::ImageIds
      Frames = Azure::CognitiveServices::ContentModerator::V1_0::Models::Frames
      TermsInList = Azure::CognitiveServices::ContentModerator::V1_0::Models::TermsInList
      ClassificationCategory2 = Azure::CognitiveServices::ContentModerator::V1_0::Models::ClassificationCategory2
      Face = Azure::CognitiveServices::ContentModerator::V1_0::Models::Face
      TermsData = Azure::CognitiveServices::ContentModerator::V1_0::Models::TermsData
      JobListResult = Azure::CognitiveServices::ContentModerator::V1_0::Models::JobListResult
      TermsPaging = Azure::CognitiveServices::ContentModerator::V1_0::Models::TermsPaging
      Classification = Azure::CognitiveServices::ContentModerator::V1_0::Models::Classification
      IPA = Azure::CognitiveServices::ContentModerator::V1_0::Models::IPA
      Review = Azure::CognitiveServices::ContentModerator::V1_0::Models::Review
      JobExecutionReportDetails = Azure::CognitiveServices::ContentModerator::V1_0::Models::JobExecutionReportDetails
      DetectedTerms = Azure::CognitiveServices::ContentModerator::V1_0::Models::DetectedTerms
      Candidate = Azure::CognitiveServices::ContentModerator::V1_0::Models::Candidate
      JobId = Azure::CognitiveServices::ContentModerator::V1_0::Models::JobId
      Evaluate = Azure::CognitiveServices::ContentModerator::V1_0::Models::Evaluate
      MatchResponse = Azure::CognitiveServices::ContentModerator::V1_0::Models::MatchResponse
      APIError = Azure::CognitiveServices::ContentModerator::V1_0::Models::APIError
      Terms = Azure::CognitiveServices::ContentModerator::V1_0::Models::Terms
      ImageList = Azure::CognitiveServices::ContentModerator::V1_0::Models::ImageList
      RefreshIndex = Azure::CognitiveServices::ContentModerator::V1_0::Models::RefreshIndex
      TranscriptModerationBodyItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::TranscriptModerationBodyItem
      Email = Azure::CognitiveServices::ContentModerator::V1_0::Models::Email
      CreateVideoReviewsBodyItemVideoFramesItemReviewerResultTagsItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateVideoReviewsBodyItemVideoFramesItemReviewerResultTagsItem
      ClassificationCategory3 = Azure::CognitiveServices::ContentModerator::V1_0::Models::ClassificationCategory3
      TranscriptModerationBodyItemTermsItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::TranscriptModerationBodyItemTermsItem
      SSN = Azure::CognitiveServices::ContentModerator::V1_0::Models::SSN
      CreateVideoReviewsBodyItemVideoFramesItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateVideoReviewsBodyItemVideoFramesItem
      Frame = Azure::CognitiveServices::ContentModerator::V1_0::Models::Frame
      CreateVideoReviewsBodyItemMetadataItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateVideoReviewsBodyItemMetadataItem
      FoundFaces = Azure::CognitiveServices::ContentModerator::V1_0::Models::FoundFaces
      CreateVideoReviewsBodyItemVideoFramesItemMetadataItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateVideoReviewsBodyItemVideoFramesItemMetadataItem
      Match = Azure::CognitiveServices::ContentModerator::V1_0::Models::Match
      Body = Azure::CognitiveServices::ContentModerator::V1_0::Models::Body
      PII = Azure::CognitiveServices::ContentModerator::V1_0::Models::PII
      TermList = Azure::CognitiveServices::ContentModerator::V1_0::Models::TermList
      ClassificationCategory1 = Azure::CognitiveServices::ContentModerator::V1_0::Models::ClassificationCategory1
      CreateVideoReviewsBodyItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateVideoReviewsBodyItem
      Phone = Azure::CognitiveServices::ContentModerator::V1_0::Models::Phone
      Error = Azure::CognitiveServices::ContentModerator::V1_0::Models::Error
      OCR = Azure::CognitiveServices::ContentModerator::V1_0::Models::OCR
      VideoFrameBodyItemMetadataItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::VideoFrameBodyItemMetadataItem
      VideoFrameBodyItemReviewerResultTagsItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::VideoFrameBodyItemReviewerResultTagsItem
      VideoFrameBodyItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::VideoFrameBodyItem
      KeyValuePair = Azure::CognitiveServices::ContentModerator::V1_0::Models::KeyValuePair
      CreateReviewBodyItemMetadataItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateReviewBodyItemMetadataItem
      Screen = Azure::CognitiveServices::ContentModerator::V1_0::Models::Screen
      CreateReviewBodyItem = Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateReviewBodyItem
      Content = Azure::CognitiveServices::ContentModerator::V1_0::Models::Content
      DetectedLanguage = Azure::CognitiveServices::ContentModerator::V1_0::Models::DetectedLanguage
      Job = Azure::CognitiveServices::ContentModerator::V1_0::Models::Job
      ImageUrl = Azure::CognitiveServices::ContentModerator::V1_0::Models::ImageUrl
      Image = Azure::CognitiveServices::ContentModerator::V1_0::Models::Image
      Tag = Azure::CognitiveServices::ContentModerator::V1_0::Models::Tag
      Address = Azure::CognitiveServices::ContentModerator::V1_0::Models::Address
      Status = Azure::CognitiveServices::ContentModerator::V1_0::Models::Status
    end

    class ContentModeratorDataClass
      attr_reader :list_management_term_lists, :list_management_image, :list_management_term, :reviews, :image_moderation, :text_moderation, :list_management_image_lists, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        @client_0 = Azure::CognitiveServices::ContentModerator::V1_0::ContentModeratorClient.new(configurable.credentials, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @list_management_term_lists = @client_0.list_management_term_lists
        @list_management_image = @client_0.list_management_image
        @list_management_term = @client_0.list_management_term
        @reviews = @client_0.reviews
        @image_moderation = @client_0.image_moderation
        @text_moderation = @client_0.text_moderation
        @list_management_image_lists = @client_0.list_management_image_lists

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/ContentModerator"
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
        def image_additional_info_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::ImageAdditionalInfoItem
        end
        def image_ids
          Azure::CognitiveServices::ContentModerator::V1_0::Models::ImageIds
        end
        def frames
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Frames
        end
        def terms_in_list
          Azure::CognitiveServices::ContentModerator::V1_0::Models::TermsInList
        end
        def classification_category2
          Azure::CognitiveServices::ContentModerator::V1_0::Models::ClassificationCategory2
        end
        def face
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Face
        end
        def terms_data
          Azure::CognitiveServices::ContentModerator::V1_0::Models::TermsData
        end
        def job_list_result
          Azure::CognitiveServices::ContentModerator::V1_0::Models::JobListResult
        end
        def terms_paging
          Azure::CognitiveServices::ContentModerator::V1_0::Models::TermsPaging
        end
        def classification
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Classification
        end
        def ipa
          Azure::CognitiveServices::ContentModerator::V1_0::Models::IPA
        end
        def review
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Review
        end
        def job_execution_report_details
          Azure::CognitiveServices::ContentModerator::V1_0::Models::JobExecutionReportDetails
        end
        def detected_terms
          Azure::CognitiveServices::ContentModerator::V1_0::Models::DetectedTerms
        end
        def candidate
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Candidate
        end
        def job_id
          Azure::CognitiveServices::ContentModerator::V1_0::Models::JobId
        end
        def evaluate
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Evaluate
        end
        def match_response
          Azure::CognitiveServices::ContentModerator::V1_0::Models::MatchResponse
        end
        def apierror
          Azure::CognitiveServices::ContentModerator::V1_0::Models::APIError
        end
        def terms
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Terms
        end
        def image_list
          Azure::CognitiveServices::ContentModerator::V1_0::Models::ImageList
        end
        def refresh_index
          Azure::CognitiveServices::ContentModerator::V1_0::Models::RefreshIndex
        end
        def transcript_moderation_body_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::TranscriptModerationBodyItem
        end
        def email
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Email
        end
        def create_video_reviews_body_item_video_frames_item_reviewer_result_tags_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateVideoReviewsBodyItemVideoFramesItemReviewerResultTagsItem
        end
        def classification_category3
          Azure::CognitiveServices::ContentModerator::V1_0::Models::ClassificationCategory3
        end
        def transcript_moderation_body_item_terms_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::TranscriptModerationBodyItemTermsItem
        end
        def ssn
          Azure::CognitiveServices::ContentModerator::V1_0::Models::SSN
        end
        def create_video_reviews_body_item_video_frames_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateVideoReviewsBodyItemVideoFramesItem
        end
        def frame
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Frame
        end
        def create_video_reviews_body_item_metadata_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateVideoReviewsBodyItemMetadataItem
        end
        def found_faces
          Azure::CognitiveServices::ContentModerator::V1_0::Models::FoundFaces
        end
        def create_video_reviews_body_item_video_frames_item_metadata_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateVideoReviewsBodyItemVideoFramesItemMetadataItem
        end
        def match
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Match
        end
        def body
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Body
        end
        def pii
          Azure::CognitiveServices::ContentModerator::V1_0::Models::PII
        end
        def term_list
          Azure::CognitiveServices::ContentModerator::V1_0::Models::TermList
        end
        def classification_category1
          Azure::CognitiveServices::ContentModerator::V1_0::Models::ClassificationCategory1
        end
        def create_video_reviews_body_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateVideoReviewsBodyItem
        end
        def phone
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Phone
        end
        def error
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Error
        end
        def ocr
          Azure::CognitiveServices::ContentModerator::V1_0::Models::OCR
        end
        def video_frame_body_item_metadata_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::VideoFrameBodyItemMetadataItem
        end
        def video_frame_body_item_reviewer_result_tags_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::VideoFrameBodyItemReviewerResultTagsItem
        end
        def video_frame_body_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::VideoFrameBodyItem
        end
        def key_value_pair
          Azure::CognitiveServices::ContentModerator::V1_0::Models::KeyValuePair
        end
        def create_review_body_item_metadata_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateReviewBodyItemMetadataItem
        end
        def screen
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Screen
        end
        def create_review_body_item
          Azure::CognitiveServices::ContentModerator::V1_0::Models::CreateReviewBodyItem
        end
        def content
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Content
        end
        def detected_language
          Azure::CognitiveServices::ContentModerator::V1_0::Models::DetectedLanguage
        end
        def job
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Job
        end
        def image_url
          Azure::CognitiveServices::ContentModerator::V1_0::Models::ImageUrl
        end
        def image
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Image
        end
        def tag
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Tag
        end
        def address
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Address
        end
        def status
          Azure::CognitiveServices::ContentModerator::V1_0::Models::Status
        end
      end
    end
  end
end
