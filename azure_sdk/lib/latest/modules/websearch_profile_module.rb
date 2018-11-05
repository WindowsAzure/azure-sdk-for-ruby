# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_websearch'

module Azure::Profiles::Latest
  module WebSearch
    Web = Azure::CognitiveServices::WebSearch::V1_0::Web

    module Models
      RankingRankingGroup = Azure::CognitiveServices::WebSearch::V1_0::Models::RankingRankingGroup
      Identifiable = Azure::CognitiveServices::WebSearch::V1_0::Models::Identifiable
      WebWebAnswer = Azure::CognitiveServices::WebSearch::V1_0::Models::WebWebAnswer
      Error = Azure::CognitiveServices::WebSearch::V1_0::Models::Error
      Query = Azure::CognitiveServices::WebSearch::V1_0::Models::Query
      WebMetaTag = Azure::CognitiveServices::WebSearch::V1_0::Models::WebMetaTag
      SpellSuggestions = Azure::CognitiveServices::WebSearch::V1_0::Models::SpellSuggestions
      TimeZone = Azure::CognitiveServices::WebSearch::V1_0::Models::TimeZone
      CreativeWork = Azure::CognitiveServices::WebSearch::V1_0::Models::CreativeWork
      Images = Azure::CognitiveServices::WebSearch::V1_0::Models::Images
      RelatedSearchesRelatedSearchAnswer = Azure::CognitiveServices::WebSearch::V1_0::Models::RelatedSearchesRelatedSearchAnswer
      SafeSearch = Azure::CognitiveServices::WebSearch::V1_0::Models::SafeSearch
      TextFormat = Azure::CognitiveServices::WebSearch::V1_0::Models::TextFormat
      ErrorCode = Azure::CognitiveServices::WebSearch::V1_0::Models::ErrorCode
      Article = Azure::CognitiveServices::WebSearch::V1_0::Models::Article
      Freshness = Azure::CognitiveServices::WebSearch::V1_0::Models::Freshness
      Response = Azure::CognitiveServices::WebSearch::V1_0::Models::Response
      ImageObject = Azure::CognitiveServices::WebSearch::V1_0::Models::ImageObject
      Places = Azure::CognitiveServices::WebSearch::V1_0::Models::Places
      Intangible = Azure::CognitiveServices::WebSearch::V1_0::Models::Intangible
      MediaObject = Azure::CognitiveServices::WebSearch::V1_0::Models::MediaObject
      ErrorSubCode = Azure::CognitiveServices::WebSearch::V1_0::Models::ErrorSubCode
      StructuredValue = Azure::CognitiveServices::WebSearch::V1_0::Models::StructuredValue
      Videos = Azure::CognitiveServices::WebSearch::V1_0::Models::Videos
      AnswerType = Azure::CognitiveServices::WebSearch::V1_0::Models::AnswerType
      NewsArticle = Azure::CognitiveServices::WebSearch::V1_0::Models::NewsArticle
      News = Azure::CognitiveServices::WebSearch::V1_0::Models::News
      ErrorResponse = Azure::CognitiveServices::WebSearch::V1_0::Models::ErrorResponse
      ResponseBase = Azure::CognitiveServices::WebSearch::V1_0::Models::ResponseBase
      QueryContext = Azure::CognitiveServices::WebSearch::V1_0::Models::QueryContext
      VideoObject = Azure::CognitiveServices::WebSearch::V1_0::Models::VideoObject
      RankingRankingItem = Azure::CognitiveServices::WebSearch::V1_0::Models::RankingRankingItem
      WebPage = Azure::CognitiveServices::WebSearch::V1_0::Models::WebPage
      RankingRankingResponse = Azure::CognitiveServices::WebSearch::V1_0::Models::RankingRankingResponse
      SearchResponse = Azure::CognitiveServices::WebSearch::V1_0::Models::SearchResponse
      Computation = Azure::CognitiveServices::WebSearch::V1_0::Models::Computation
      SearchResultsAnswer = Azure::CognitiveServices::WebSearch::V1_0::Models::SearchResultsAnswer
      Answer = Azure::CognitiveServices::WebSearch::V1_0::Models::Answer
      Thing = Azure::CognitiveServices::WebSearch::V1_0::Models::Thing
      WebWebGrouping = Azure::CognitiveServices::WebSearch::V1_0::Models::WebWebGrouping
      TimeZoneTimeZoneInformation = Azure::CognitiveServices::WebSearch::V1_0::Models::TimeZoneTimeZoneInformation
    end

    class WebSearchDataClass
      attr_reader :web, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        @client_0 = Azure::CognitiveServices::WebSearch::V1_0::WebSearchClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @web = @client_0.web

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/WebSearch"
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
        def ranking_ranking_group
          Azure::CognitiveServices::WebSearch::V1_0::Models::RankingRankingGroup
        end
        def identifiable
          Azure::CognitiveServices::WebSearch::V1_0::Models::Identifiable
        end
        def web_web_answer
          Azure::CognitiveServices::WebSearch::V1_0::Models::WebWebAnswer
        end
        def error
          Azure::CognitiveServices::WebSearch::V1_0::Models::Error
        end
        def query
          Azure::CognitiveServices::WebSearch::V1_0::Models::Query
        end
        def web_meta_tag
          Azure::CognitiveServices::WebSearch::V1_0::Models::WebMetaTag
        end
        def spell_suggestions
          Azure::CognitiveServices::WebSearch::V1_0::Models::SpellSuggestions
        end
        def time_zone
          Azure::CognitiveServices::WebSearch::V1_0::Models::TimeZone
        end
        def creative_work
          Azure::CognitiveServices::WebSearch::V1_0::Models::CreativeWork
        end
        def images
          Azure::CognitiveServices::WebSearch::V1_0::Models::Images
        end
        def related_searches_related_search_answer
          Azure::CognitiveServices::WebSearch::V1_0::Models::RelatedSearchesRelatedSearchAnswer
        end
        def safe_search
          Azure::CognitiveServices::WebSearch::V1_0::Models::SafeSearch
        end
        def text_format
          Azure::CognitiveServices::WebSearch::V1_0::Models::TextFormat
        end
        def error_code
          Azure::CognitiveServices::WebSearch::V1_0::Models::ErrorCode
        end
        def article
          Azure::CognitiveServices::WebSearch::V1_0::Models::Article
        end
        def freshness
          Azure::CognitiveServices::WebSearch::V1_0::Models::Freshness
        end
        def response
          Azure::CognitiveServices::WebSearch::V1_0::Models::Response
        end
        def image_object
          Azure::CognitiveServices::WebSearch::V1_0::Models::ImageObject
        end
        def places
          Azure::CognitiveServices::WebSearch::V1_0::Models::Places
        end
        def intangible
          Azure::CognitiveServices::WebSearch::V1_0::Models::Intangible
        end
        def media_object
          Azure::CognitiveServices::WebSearch::V1_0::Models::MediaObject
        end
        def error_sub_code
          Azure::CognitiveServices::WebSearch::V1_0::Models::ErrorSubCode
        end
        def structured_value
          Azure::CognitiveServices::WebSearch::V1_0::Models::StructuredValue
        end
        def videos
          Azure::CognitiveServices::WebSearch::V1_0::Models::Videos
        end
        def answer_type
          Azure::CognitiveServices::WebSearch::V1_0::Models::AnswerType
        end
        def news_article
          Azure::CognitiveServices::WebSearch::V1_0::Models::NewsArticle
        end
        def news
          Azure::CognitiveServices::WebSearch::V1_0::Models::News
        end
        def error_response
          Azure::CognitiveServices::WebSearch::V1_0::Models::ErrorResponse
        end
        def response_base
          Azure::CognitiveServices::WebSearch::V1_0::Models::ResponseBase
        end
        def query_context
          Azure::CognitiveServices::WebSearch::V1_0::Models::QueryContext
        end
        def video_object
          Azure::CognitiveServices::WebSearch::V1_0::Models::VideoObject
        end
        def ranking_ranking_item
          Azure::CognitiveServices::WebSearch::V1_0::Models::RankingRankingItem
        end
        def web_page
          Azure::CognitiveServices::WebSearch::V1_0::Models::WebPage
        end
        def ranking_ranking_response
          Azure::CognitiveServices::WebSearch::V1_0::Models::RankingRankingResponse
        end
        def search_response
          Azure::CognitiveServices::WebSearch::V1_0::Models::SearchResponse
        end
        def computation
          Azure::CognitiveServices::WebSearch::V1_0::Models::Computation
        end
        def search_results_answer
          Azure::CognitiveServices::WebSearch::V1_0::Models::SearchResultsAnswer
        end
        def answer
          Azure::CognitiveServices::WebSearch::V1_0::Models::Answer
        end
        def thing
          Azure::CognitiveServices::WebSearch::V1_0::Models::Thing
        end
        def web_web_grouping
          Azure::CognitiveServices::WebSearch::V1_0::Models::WebWebGrouping
        end
        def time_zone_time_zone_information
          Azure::CognitiveServices::WebSearch::V1_0::Models::TimeZoneTimeZoneInformation
        end
      end
    end
  end
end
