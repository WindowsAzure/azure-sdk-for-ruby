# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_websearch'

module Azure::Profiles::Latest
  module WebSearch
    Web = Azure::CognitiveServices::WebSearch::V1_0::Web

    module Models
      Intangible = Azure::CognitiveServices::WebSearch::V1_0::Models::Intangible
      ErrorCode = Azure::CognitiveServices::WebSearch::V1_0::Models::ErrorCode
      MediaObject = Azure::CognitiveServices::WebSearch::V1_0::Models::MediaObject
      StructuredValue = Azure::CognitiveServices::WebSearch::V1_0::Models::StructuredValue
      Videos = Azure::CognitiveServices::WebSearch::V1_0::Models::Videos
      Images = Azure::CognitiveServices::WebSearch::V1_0::Models::Images
      AnswerType = Azure::CognitiveServices::WebSearch::V1_0::Models::AnswerType
      Response = Azure::CognitiveServices::WebSearch::V1_0::Models::Response
      ResponseBase = Azure::CognitiveServices::WebSearch::V1_0::Models::ResponseBase
      RankingRankingGroup = Azure::CognitiveServices::WebSearch::V1_0::Models::RankingRankingGroup
      NewsArticle = Azure::CognitiveServices::WebSearch::V1_0::Models::NewsArticle
      WebWebGrouping = Azure::CognitiveServices::WebSearch::V1_0::Models::WebWebGrouping
      WebPage = Azure::CognitiveServices::WebSearch::V1_0::Models::WebPage
      VideoObject = Azure::CognitiveServices::WebSearch::V1_0::Models::VideoObject
      SearchResponse = Azure::CognitiveServices::WebSearch::V1_0::Models::SearchResponse
      SearchResultsAnswer = Azure::CognitiveServices::WebSearch::V1_0::Models::SearchResultsAnswer
      Identifiable = Azure::CognitiveServices::WebSearch::V1_0::Models::Identifiable
      Answer = Azure::CognitiveServices::WebSearch::V1_0::Models::Answer
      Thing = Azure::CognitiveServices::WebSearch::V1_0::Models::Thing
      CreativeWork = Azure::CognitiveServices::WebSearch::V1_0::Models::CreativeWork
      Query = Azure::CognitiveServices::WebSearch::V1_0::Models::Query
      WebMetaTag = Azure::CognitiveServices::WebSearch::V1_0::Models::WebMetaTag
      TimeZoneTimeZoneInformation = Azure::CognitiveServices::WebSearch::V1_0::Models::TimeZoneTimeZoneInformation
      Computation = Azure::CognitiveServices::WebSearch::V1_0::Models::Computation
      QueryContext = Azure::CognitiveServices::WebSearch::V1_0::Models::QueryContext
      RankingRankingResponse = Azure::CognitiveServices::WebSearch::V1_0::Models::RankingRankingResponse
      TimeZone = Azure::CognitiveServices::WebSearch::V1_0::Models::TimeZone
      ErrorSubCode = Azure::CognitiveServices::WebSearch::V1_0::Models::ErrorSubCode
      WebWebAnswer = Azure::CognitiveServices::WebSearch::V1_0::Models::WebWebAnswer
      RankingRankingItem = Azure::CognitiveServices::WebSearch::V1_0::Models::RankingRankingItem
      SpellSuggestions = Azure::CognitiveServices::WebSearch::V1_0::Models::SpellSuggestions
      Article = Azure::CognitiveServices::WebSearch::V1_0::Models::Article
      ErrorResponse = Azure::CognitiveServices::WebSearch::V1_0::Models::ErrorResponse
      TextFormat = Azure::CognitiveServices::WebSearch::V1_0::Models::TextFormat
      RelatedSearchesRelatedSearchAnswer = Azure::CognitiveServices::WebSearch::V1_0::Models::RelatedSearchesRelatedSearchAnswer
      News = Azure::CognitiveServices::WebSearch::V1_0::Models::News
      SafeSearch = Azure::CognitiveServices::WebSearch::V1_0::Models::SafeSearch
      Freshness = Azure::CognitiveServices::WebSearch::V1_0::Models::Freshness
      ImageObject = Azure::CognitiveServices::WebSearch::V1_0::Models::ImageObject
      Places = Azure::CognitiveServices::WebSearch::V1_0::Models::Places
      Error = Azure::CognitiveServices::WebSearch::V1_0::Models::Error
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
        def intangible
          Azure::CognitiveServices::WebSearch::V1_0::Models::Intangible
        end
        def error_code
          Azure::CognitiveServices::WebSearch::V1_0::Models::ErrorCode
        end
        def media_object
          Azure::CognitiveServices::WebSearch::V1_0::Models::MediaObject
        end
        def structured_value
          Azure::CognitiveServices::WebSearch::V1_0::Models::StructuredValue
        end
        def videos
          Azure::CognitiveServices::WebSearch::V1_0::Models::Videos
        end
        def images
          Azure::CognitiveServices::WebSearch::V1_0::Models::Images
        end
        def answer_type
          Azure::CognitiveServices::WebSearch::V1_0::Models::AnswerType
        end
        def response
          Azure::CognitiveServices::WebSearch::V1_0::Models::Response
        end
        def response_base
          Azure::CognitiveServices::WebSearch::V1_0::Models::ResponseBase
        end
        def ranking_ranking_group
          Azure::CognitiveServices::WebSearch::V1_0::Models::RankingRankingGroup
        end
        def news_article
          Azure::CognitiveServices::WebSearch::V1_0::Models::NewsArticle
        end
        def web_web_grouping
          Azure::CognitiveServices::WebSearch::V1_0::Models::WebWebGrouping
        end
        def web_page
          Azure::CognitiveServices::WebSearch::V1_0::Models::WebPage
        end
        def video_object
          Azure::CognitiveServices::WebSearch::V1_0::Models::VideoObject
        end
        def search_response
          Azure::CognitiveServices::WebSearch::V1_0::Models::SearchResponse
        end
        def search_results_answer
          Azure::CognitiveServices::WebSearch::V1_0::Models::SearchResultsAnswer
        end
        def identifiable
          Azure::CognitiveServices::WebSearch::V1_0::Models::Identifiable
        end
        def answer
          Azure::CognitiveServices::WebSearch::V1_0::Models::Answer
        end
        def thing
          Azure::CognitiveServices::WebSearch::V1_0::Models::Thing
        end
        def creative_work
          Azure::CognitiveServices::WebSearch::V1_0::Models::CreativeWork
        end
        def query
          Azure::CognitiveServices::WebSearch::V1_0::Models::Query
        end
        def web_meta_tag
          Azure::CognitiveServices::WebSearch::V1_0::Models::WebMetaTag
        end
        def time_zone_time_zone_information
          Azure::CognitiveServices::WebSearch::V1_0::Models::TimeZoneTimeZoneInformation
        end
        def computation
          Azure::CognitiveServices::WebSearch::V1_0::Models::Computation
        end
        def query_context
          Azure::CognitiveServices::WebSearch::V1_0::Models::QueryContext
        end
        def ranking_ranking_response
          Azure::CognitiveServices::WebSearch::V1_0::Models::RankingRankingResponse
        end
        def time_zone
          Azure::CognitiveServices::WebSearch::V1_0::Models::TimeZone
        end
        def error_sub_code
          Azure::CognitiveServices::WebSearch::V1_0::Models::ErrorSubCode
        end
        def web_web_answer
          Azure::CognitiveServices::WebSearch::V1_0::Models::WebWebAnswer
        end
        def ranking_ranking_item
          Azure::CognitiveServices::WebSearch::V1_0::Models::RankingRankingItem
        end
        def spell_suggestions
          Azure::CognitiveServices::WebSearch::V1_0::Models::SpellSuggestions
        end
        def article
          Azure::CognitiveServices::WebSearch::V1_0::Models::Article
        end
        def error_response
          Azure::CognitiveServices::WebSearch::V1_0::Models::ErrorResponse
        end
        def text_format
          Azure::CognitiveServices::WebSearch::V1_0::Models::TextFormat
        end
        def related_searches_related_search_answer
          Azure::CognitiveServices::WebSearch::V1_0::Models::RelatedSearchesRelatedSearchAnswer
        end
        def news
          Azure::CognitiveServices::WebSearch::V1_0::Models::News
        end
        def safe_search
          Azure::CognitiveServices::WebSearch::V1_0::Models::SafeSearch
        end
        def freshness
          Azure::CognitiveServices::WebSearch::V1_0::Models::Freshness
        end
        def image_object
          Azure::CognitiveServices::WebSearch::V1_0::Models::ImageObject
        end
        def places
          Azure::CognitiveServices::WebSearch::V1_0::Models::Places
        end
        def error
          Azure::CognitiveServices::WebSearch::V1_0::Models::Error
        end
      end
    end
  end
end
