# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_consumption'

module Azure::Profiles::Latest
  module Consumption
    module Mgmt
      ReservationsDetails = Azure::Consumption::Mgmt::V2018_06_30::ReservationsDetails
      ReservationRecommendations = Azure::Consumption::Mgmt::V2018_06_30::ReservationRecommendations
      Budgets = Azure::Consumption::Mgmt::V2018_06_30::Budgets
      PriceSheet = Azure::Consumption::Mgmt::V2018_06_30::PriceSheet
      CostTags = Azure::Consumption::Mgmt::V2018_06_30::CostTags
      Forecasts = Azure::Consumption::Mgmt::V2018_06_30::Forecasts
      Operations = Azure::Consumption::Mgmt::V2018_06_30::Operations
      Tags = Azure::Consumption::Mgmt::V2018_06_30::Tags
      UsageDetails = Azure::Consumption::Mgmt::V2018_06_30::UsageDetails
      Marketplaces = Azure::Consumption::Mgmt::V2018_06_30::Marketplaces
      Balances = Azure::Consumption::Mgmt::V2018_06_30::Balances
      ReservationsSummaries = Azure::Consumption::Mgmt::V2018_06_30::ReservationsSummaries

      module Models
        ErrorResponse = Azure::Consumption::Mgmt::V2018_06_30::Models::ErrorResponse
        ProxyResource = Azure::Consumption::Mgmt::V2018_06_30::Models::ProxyResource
        Notification = Azure::Consumption::Mgmt::V2018_06_30::Models::Notification
        MeterDetails = Azure::Consumption::Mgmt::V2018_06_30::Models::MeterDetails
        CurrentSpend = Azure::Consumption::Mgmt::V2018_06_30::Models::CurrentSpend
        UsageDetailsListResult = Azure::Consumption::Mgmt::V2018_06_30::Models::UsageDetailsListResult
        BudgetTimePeriod = Azure::Consumption::Mgmt::V2018_06_30::Models::BudgetTimePeriod
        MarketplacesListResult = Azure::Consumption::Mgmt::V2018_06_30::Models::MarketplacesListResult
        Filters = Azure::Consumption::Mgmt::V2018_06_30::Models::Filters
        BalancePropertiesAdjustmentDetailsItem = Azure::Consumption::Mgmt::V2018_06_30::Models::BalancePropertiesAdjustmentDetailsItem
        ReservationRecommendation = Azure::Consumption::Mgmt::V2018_06_30::Models::ReservationRecommendation
        BudgetsListResult = Azure::Consumption::Mgmt::V2018_06_30::Models::BudgetsListResult
        CostTagProperties = Azure::Consumption::Mgmt::V2018_06_30::Models::CostTagProperties
        BalancePropertiesNewPurchasesDetailsItem = Azure::Consumption::Mgmt::V2018_06_30::Models::BalancePropertiesNewPurchasesDetailsItem
        QueryOptions = Azure::Consumption::Mgmt::V2018_06_30::Models::QueryOptions
        ReservationSummariesListResult = Azure::Consumption::Mgmt::V2018_06_30::Models::ReservationSummariesListResult
        PriceSheetProperties = Azure::Consumption::Mgmt::V2018_06_30::Models::PriceSheetProperties
        ReservationRecommendationsListResult = Azure::Consumption::Mgmt::V2018_06_30::Models::ReservationRecommendationsListResult
        ForecastPropertiesConfidenceLevelsItem = Azure::Consumption::Mgmt::V2018_06_30::Models::ForecastPropertiesConfidenceLevelsItem
        ResourceAttributes = Azure::Consumption::Mgmt::V2018_06_30::Models::ResourceAttributes
        ReservationDetailsListResult = Azure::Consumption::Mgmt::V2018_06_30::Models::ReservationDetailsListResult
        ForecastsListResult = Azure::Consumption::Mgmt::V2018_06_30::Models::ForecastsListResult
        UsageDetail = Azure::Consumption::Mgmt::V2018_06_30::Models::UsageDetail
        Marketplace = Azure::Consumption::Mgmt::V2018_06_30::Models::Marketplace
        Balance = Azure::Consumption::Mgmt::V2018_06_30::Models::Balance
        ErrorDetails = Azure::Consumption::Mgmt::V2018_06_30::Models::ErrorDetails
        ReservationSummary = Azure::Consumption::Mgmt::V2018_06_30::Models::ReservationSummary
        TagsResult = Azure::Consumption::Mgmt::V2018_06_30::Models::TagsResult
        Tag = Azure::Consumption::Mgmt::V2018_06_30::Models::Tag
        Resource = Azure::Consumption::Mgmt::V2018_06_30::Models::Resource
        PriceSheetResult = Azure::Consumption::Mgmt::V2018_06_30::Models::PriceSheetResult
        Budget = Azure::Consumption::Mgmt::V2018_06_30::Models::Budget
        Forecast = Azure::Consumption::Mgmt::V2018_06_30::Models::Forecast
        BillingFrequency = Azure::Consumption::Mgmt::V2018_06_30::Models::BillingFrequency
        TimeGrainType = Azure::Consumption::Mgmt::V2018_06_30::Models::TimeGrainType
        CostTag = Azure::Consumption::Mgmt::V2018_06_30::Models::CostTag
        ReservationDetail = Azure::Consumption::Mgmt::V2018_06_30::Models::ReservationDetail
        OperationDisplay = Azure::Consumption::Mgmt::V2018_06_30::Models::OperationDisplay
        OperatorType = Azure::Consumption::Mgmt::V2018_06_30::Models::OperatorType
        Operation = Azure::Consumption::Mgmt::V2018_06_30::Models::Operation
        ChargeType = Azure::Consumption::Mgmt::V2018_06_30::Models::ChargeType
        OperationListResult = Azure::Consumption::Mgmt::V2018_06_30::Models::OperationListResult
        Grain = Azure::Consumption::Mgmt::V2018_06_30::Models::Grain
        CategoryType = Azure::Consumption::Mgmt::V2018_06_30::Models::CategoryType
        Bound = Azure::Consumption::Mgmt::V2018_06_30::Models::Bound
        Datagrain = Azure::Consumption::Mgmt::V2018_06_30::Models::Datagrain
      end

      class ConsumptionManagementClass
        attr_reader :reservations_details, :reservation_recommendations, :budgets, :price_sheet, :cost_tags, :forecasts, :operations, :tags, :usage_details, :marketplaces, :balances, :reservations_summaries, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Consumption::Mgmt::V2018_06_30::ConsumptionManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @reservations_details = @client_0.reservations_details
          @reservation_recommendations = @client_0.reservation_recommendations
          @budgets = @client_0.budgets
          @price_sheet = @client_0.price_sheet
          @cost_tags = @client_0.cost_tags
          @forecasts = @client_0.forecasts
          @operations = @client_0.operations
          @tags = @client_0.tags
          @usage_details = @client_0.usage_details
          @marketplaces = @client_0.marketplaces
          @balances = @client_0.balances
          @reservations_summaries = @client_0.reservations_summaries

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Consumption/Mgmt"
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
            Azure::Consumption::Mgmt::V2018_06_30::Models::ErrorResponse
          end
          def proxy_resource
            Azure::Consumption::Mgmt::V2018_06_30::Models::ProxyResource
          end
          def notification
            Azure::Consumption::Mgmt::V2018_06_30::Models::Notification
          end
          def meter_details
            Azure::Consumption::Mgmt::V2018_06_30::Models::MeterDetails
          end
          def current_spend
            Azure::Consumption::Mgmt::V2018_06_30::Models::CurrentSpend
          end
          def usage_details_list_result
            Azure::Consumption::Mgmt::V2018_06_30::Models::UsageDetailsListResult
          end
          def budget_time_period
            Azure::Consumption::Mgmt::V2018_06_30::Models::BudgetTimePeriod
          end
          def marketplaces_list_result
            Azure::Consumption::Mgmt::V2018_06_30::Models::MarketplacesListResult
          end
          def filters
            Azure::Consumption::Mgmt::V2018_06_30::Models::Filters
          end
          def balance_properties_adjustment_details_item
            Azure::Consumption::Mgmt::V2018_06_30::Models::BalancePropertiesAdjustmentDetailsItem
          end
          def reservation_recommendation
            Azure::Consumption::Mgmt::V2018_06_30::Models::ReservationRecommendation
          end
          def budgets_list_result
            Azure::Consumption::Mgmt::V2018_06_30::Models::BudgetsListResult
          end
          def cost_tag_properties
            Azure::Consumption::Mgmt::V2018_06_30::Models::CostTagProperties
          end
          def balance_properties_new_purchases_details_item
            Azure::Consumption::Mgmt::V2018_06_30::Models::BalancePropertiesNewPurchasesDetailsItem
          end
          def query_options
            Azure::Consumption::Mgmt::V2018_06_30::Models::QueryOptions
          end
          def reservation_summaries_list_result
            Azure::Consumption::Mgmt::V2018_06_30::Models::ReservationSummariesListResult
          end
          def price_sheet_properties
            Azure::Consumption::Mgmt::V2018_06_30::Models::PriceSheetProperties
          end
          def reservation_recommendations_list_result
            Azure::Consumption::Mgmt::V2018_06_30::Models::ReservationRecommendationsListResult
          end
          def forecast_properties_confidence_levels_item
            Azure::Consumption::Mgmt::V2018_06_30::Models::ForecastPropertiesConfidenceLevelsItem
          end
          def resource_attributes
            Azure::Consumption::Mgmt::V2018_06_30::Models::ResourceAttributes
          end
          def reservation_details_list_result
            Azure::Consumption::Mgmt::V2018_06_30::Models::ReservationDetailsListResult
          end
          def forecasts_list_result
            Azure::Consumption::Mgmt::V2018_06_30::Models::ForecastsListResult
          end
          def usage_detail
            Azure::Consumption::Mgmt::V2018_06_30::Models::UsageDetail
          end
          def marketplace
            Azure::Consumption::Mgmt::V2018_06_30::Models::Marketplace
          end
          def balance
            Azure::Consumption::Mgmt::V2018_06_30::Models::Balance
          end
          def error_details
            Azure::Consumption::Mgmt::V2018_06_30::Models::ErrorDetails
          end
          def reservation_summary
            Azure::Consumption::Mgmt::V2018_06_30::Models::ReservationSummary
          end
          def tags_result
            Azure::Consumption::Mgmt::V2018_06_30::Models::TagsResult
          end
          def tag
            Azure::Consumption::Mgmt::V2018_06_30::Models::Tag
          end
          def resource
            Azure::Consumption::Mgmt::V2018_06_30::Models::Resource
          end
          def price_sheet_result
            Azure::Consumption::Mgmt::V2018_06_30::Models::PriceSheetResult
          end
          def budget
            Azure::Consumption::Mgmt::V2018_06_30::Models::Budget
          end
          def forecast
            Azure::Consumption::Mgmt::V2018_06_30::Models::Forecast
          end
          def billing_frequency
            Azure::Consumption::Mgmt::V2018_06_30::Models::BillingFrequency
          end
          def time_grain_type
            Azure::Consumption::Mgmt::V2018_06_30::Models::TimeGrainType
          end
          def cost_tag
            Azure::Consumption::Mgmt::V2018_06_30::Models::CostTag
          end
          def reservation_detail
            Azure::Consumption::Mgmt::V2018_06_30::Models::ReservationDetail
          end
          def operation_display
            Azure::Consumption::Mgmt::V2018_06_30::Models::OperationDisplay
          end
          def operator_type
            Azure::Consumption::Mgmt::V2018_06_30::Models::OperatorType
          end
          def operation
            Azure::Consumption::Mgmt::V2018_06_30::Models::Operation
          end
          def charge_type
            Azure::Consumption::Mgmt::V2018_06_30::Models::ChargeType
          end
          def operation_list_result
            Azure::Consumption::Mgmt::V2018_06_30::Models::OperationListResult
          end
          def grain
            Azure::Consumption::Mgmt::V2018_06_30::Models::Grain
          end
          def category_type
            Azure::Consumption::Mgmt::V2018_06_30::Models::CategoryType
          end
          def bound
            Azure::Consumption::Mgmt::V2018_06_30::Models::Bound
          end
          def datagrain
            Azure::Consumption::Mgmt::V2018_06_30::Models::Datagrain
          end
        end
      end
    end
  end
end
