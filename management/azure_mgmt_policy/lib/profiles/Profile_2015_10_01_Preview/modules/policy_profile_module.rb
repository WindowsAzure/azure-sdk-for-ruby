# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_policy'

module Azure::Profiles::PolicyModule::Management::Profile_2015_10_01_Preview
  module Policy
    PolicyAssignments = Azure::ARM::Policy::Api_2015_10_01_preview::PolicyAssignments
    PolicyDefinitions = Azure::ARM::Policy::Api_2015_10_01_preview::PolicyDefinitions

    module Models
      PolicyAssignment = Azure::ARM::Policy::Api_2015_10_01_preview::Models::PolicyAssignment
      PolicyDefinition = Azure::ARM::Policy::Api_2015_10_01_preview::Models::PolicyDefinition
      PolicyAssignmentListResult = Azure::ARM::Policy::Api_2015_10_01_preview::Models::PolicyAssignmentListResult
      PolicyDefinitionListResult = Azure::ARM::Policy::Api_2015_10_01_preview::Models::PolicyDefinitionListResult
      PolicyType = Azure::ARM::Policy::Api_2015_10_01_preview::Models::PolicyType
    end

    #
    # Policy
    #
    class PolicyClass
      attr_accessor :policy_assignments, :policy_definitions, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::Policy::Api_2015_10_01_preview::PolicyClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.policy_assignments = Azure::ARM::Policy::Api_2015_10_01_preview::PolicyAssignments.new(client)
        self.policy_definitions = Azure::ARM::Policy::Api_2015_10_01_preview::PolicyDefinitions.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2015-10-01-preview'
            client = Azure::ARM::Policy::Api_2015_10_01_preview::PolicyClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def policy_assignment
          Azure::ARM::Policy::Api_2015_10_01_preview::Models::PolicyAssignment
        end
        def policy_definition
          Azure::ARM::Policy::Api_2015_10_01_preview::Models::PolicyDefinition
        end
        def policy_assignment_list_result
          Azure::ARM::Policy::Api_2015_10_01_preview::Models::PolicyAssignmentListResult
        end
        def policy_definition_list_result
          Azure::ARM::Policy::Api_2015_10_01_preview::Models::PolicyDefinitionListResult
        end
        def policy_type
          Azure::ARM::Policy::Api_2015_10_01_preview::Models::PolicyType
        end
      end
    end
  end
end
