# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_billing'

module Azure::Profiles::Latest
  module Billing
    module Mgmt
      EnrollmentAccounts = Azure::Billing::Mgmt::V2018_03_01_preview::EnrollmentAccounts
      BillingPeriods = Azure::Billing::Mgmt::V2018_03_01_preview::BillingPeriods
      Invoices = Azure::Billing::Mgmt::V2018_03_01_preview::Invoices
      Operations = Azure::Billing::Mgmt::V2018_03_01_preview::Operations

      module Models
        DownloadUrl = Azure::Billing::Mgmt::V2018_03_01_preview::Models::DownloadUrl
        InvoicesListResult = Azure::Billing::Mgmt::V2018_03_01_preview::Models::InvoicesListResult
        BillingPeriodsListResult = Azure::Billing::Mgmt::V2018_03_01_preview::Models::BillingPeriodsListResult
        ErrorDetails = Azure::Billing::Mgmt::V2018_03_01_preview::Models::ErrorDetails
        EnrollmentAccount = Azure::Billing::Mgmt::V2018_03_01_preview::Models::EnrollmentAccount
        BillingPeriod = Azure::Billing::Mgmt::V2018_03_01_preview::Models::BillingPeriod
        EnrollmentAccountListResult = Azure::Billing::Mgmt::V2018_03_01_preview::Models::EnrollmentAccountListResult
        Resource = Azure::Billing::Mgmt::V2018_03_01_preview::Models::Resource
        Invoice = Azure::Billing::Mgmt::V2018_03_01_preview::Models::Invoice
        OperationDisplay = Azure::Billing::Mgmt::V2018_03_01_preview::Models::OperationDisplay
        Operation = Azure::Billing::Mgmt::V2018_03_01_preview::Models::Operation
        ErrorResponse = Azure::Billing::Mgmt::V2018_03_01_preview::Models::ErrorResponse
        OperationListResult = Azure::Billing::Mgmt::V2018_03_01_preview::Models::OperationListResult
      end

      class BillingManagementClass
        attr_reader :enrollment_accounts, :billing_periods, :invoices, :operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Billing::Mgmt::V2018_03_01_preview::BillingManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @enrollment_accounts = @client_0.enrollment_accounts
          @billing_periods = @client_0.billing_periods
          @invoices = @client_0.invoices
          @operations = @client_0.operations

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Billing/Mgmt"
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
          def download_url
            Azure::Billing::Mgmt::V2018_03_01_preview::Models::DownloadUrl
          end
          def invoices_list_result
            Azure::Billing::Mgmt::V2018_03_01_preview::Models::InvoicesListResult
          end
          def billing_periods_list_result
            Azure::Billing::Mgmt::V2018_03_01_preview::Models::BillingPeriodsListResult
          end
          def error_details
            Azure::Billing::Mgmt::V2018_03_01_preview::Models::ErrorDetails
          end
          def enrollment_account
            Azure::Billing::Mgmt::V2018_03_01_preview::Models::EnrollmentAccount
          end
          def billing_period
            Azure::Billing::Mgmt::V2018_03_01_preview::Models::BillingPeriod
          end
          def enrollment_account_list_result
            Azure::Billing::Mgmt::V2018_03_01_preview::Models::EnrollmentAccountListResult
          end
          def resource
            Azure::Billing::Mgmt::V2018_03_01_preview::Models::Resource
          end
          def invoice
            Azure::Billing::Mgmt::V2018_03_01_preview::Models::Invoice
          end
          def operation_display
            Azure::Billing::Mgmt::V2018_03_01_preview::Models::OperationDisplay
          end
          def operation
            Azure::Billing::Mgmt::V2018_03_01_preview::Models::Operation
          end
          def error_response
            Azure::Billing::Mgmt::V2018_03_01_preview::Models::ErrorResponse
          end
          def operation_list_result
            Azure::Billing::Mgmt::V2018_03_01_preview::Models::OperationListResult
          end
        end
      end
    end
  end
end
