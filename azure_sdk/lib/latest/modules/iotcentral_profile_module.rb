# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_iot_central'

module Azure::Profiles::Latest
  module IotCentral
    module Mgmt
      Apps = Azure::IotCentral::Mgmt::V2018_09_01::Apps
      Operations = Azure::IotCentral::Mgmt::V2018_09_01::Operations

      module Models
        OperationDisplay = Azure::IotCentral::Mgmt::V2018_09_01::Models::OperationDisplay
        AppSkuInfo = Azure::IotCentral::Mgmt::V2018_09_01::Models::AppSkuInfo
        Operation = Azure::IotCentral::Mgmt::V2018_09_01::Models::Operation
        AppPatch = Azure::IotCentral::Mgmt::V2018_09_01::Models::AppPatch
        OperationListResult = Azure::IotCentral::Mgmt::V2018_09_01::Models::OperationListResult
        CloudErrorBody = Azure::IotCentral::Mgmt::V2018_09_01::Models::CloudErrorBody
        OperationInputs = Azure::IotCentral::Mgmt::V2018_09_01::Models::OperationInputs
        AppListResult = Azure::IotCentral::Mgmt::V2018_09_01::Models::AppListResult
        AppAvailabilityInfo = Azure::IotCentral::Mgmt::V2018_09_01::Models::AppAvailabilityInfo
        Resource = Azure::IotCentral::Mgmt::V2018_09_01::Models::Resource
        AppTemplateLocations = Azure::IotCentral::Mgmt::V2018_09_01::Models::AppTemplateLocations
        AppTemplatesResult = Azure::IotCentral::Mgmt::V2018_09_01::Models::AppTemplatesResult
        AppTemplate = Azure::IotCentral::Mgmt::V2018_09_01::Models::AppTemplate
        App = Azure::IotCentral::Mgmt::V2018_09_01::Models::App
        AppSku = Azure::IotCentral::Mgmt::V2018_09_01::Models::AppSku
      end

      class IotCentralManagementClass
        attr_reader :apps, :operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::IotCentral::Mgmt::V2018_09_01::IotCentralClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @apps = @client_0.apps
          @operations = @client_0.operations

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/IotCentral/Mgmt"
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
          def operation_display
            Azure::IotCentral::Mgmt::V2018_09_01::Models::OperationDisplay
          end
          def app_sku_info
            Azure::IotCentral::Mgmt::V2018_09_01::Models::AppSkuInfo
          end
          def operation
            Azure::IotCentral::Mgmt::V2018_09_01::Models::Operation
          end
          def app_patch
            Azure::IotCentral::Mgmt::V2018_09_01::Models::AppPatch
          end
          def operation_list_result
            Azure::IotCentral::Mgmt::V2018_09_01::Models::OperationListResult
          end
          def cloud_error_body
            Azure::IotCentral::Mgmt::V2018_09_01::Models::CloudErrorBody
          end
          def operation_inputs
            Azure::IotCentral::Mgmt::V2018_09_01::Models::OperationInputs
          end
          def app_list_result
            Azure::IotCentral::Mgmt::V2018_09_01::Models::AppListResult
          end
          def app_availability_info
            Azure::IotCentral::Mgmt::V2018_09_01::Models::AppAvailabilityInfo
          end
          def resource
            Azure::IotCentral::Mgmt::V2018_09_01::Models::Resource
          end
          def app_template_locations
            Azure::IotCentral::Mgmt::V2018_09_01::Models::AppTemplateLocations
          end
          def app_templates_result
            Azure::IotCentral::Mgmt::V2018_09_01::Models::AppTemplatesResult
          end
          def app_template
            Azure::IotCentral::Mgmt::V2018_09_01::Models::AppTemplate
          end
          def app
            Azure::IotCentral::Mgmt::V2018_09_01::Models::App
          end
          def app_sku
            Azure::IotCentral::Mgmt::V2018_09_01::Models::AppSku
          end
        end
      end
    end
  end
end
