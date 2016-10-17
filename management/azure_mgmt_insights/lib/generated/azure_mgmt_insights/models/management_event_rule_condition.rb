# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Insights
  module Models
    #
    # A management event rule condition.
    #
    class ManagementEventRuleCondition < RuleCondition

      include MsRestAzure


      def initialize
        @odata.type = "Microsoft.Azure.Management.Insights.Models.ManagementEventRuleCondition"
      end

      attr_accessor :odata.type

      # @return [RuleDataSource] the resource from which the rule collects its
      # data.
      attr_accessor :data_source

      # @return [ManagementEventAggregationCondition] the aggregation
      # condition.
      attr_accessor :aggregation


      #
      # Mapper for ManagementEventRuleCondition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Microsoft.Azure.Management.Insights.Models.ManagementEventRuleCondition',
          type: {
            name: 'Composite',
            class_name: 'ManagementEventRuleCondition',
            model_properties: {
              odata.type: {
                required: true,
                serialized_name: 'odata.type',
                type: {
                  name: 'String'
                }
              },
              data_source: {
                required: false,
                serialized_name: 'dataSource',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'odata.type',
                  uber_parent: 'RuleDataSource',
                  class_name: 'RuleDataSource'
                }
              },
              aggregation: {
                required: false,
                serialized_name: 'aggregation',
                type: {
                  name: 'Composite',
                  class_name: 'ManagementEventAggregationCondition'
                }
              }
            }
          }
        }
      end
    end
  end
end
