# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2017_10_01
  module Models
    #
    # The definition of Azure Monitoring metrics list.
    #
    class OperationServiceSpecificationDefinition

      include MsRestAzure

      # @return [Array<OperationMetricSpecificationDefinition>] A list of Azure
      # Monitoring metrics definition.
      attr_accessor :metric_specifications


      #
      # Mapper for OperationServiceSpecificationDefinition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'OperationServiceSpecificationDefinition',
          type: {
            name: 'Composite',
            class_name: 'OperationServiceSpecificationDefinition',
            model_properties: {
              metric_specifications: {
                required: false,
                serialized_name: 'metricSpecifications',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'OperationMetricSpecificationDefinitionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'OperationMetricSpecificationDefinition'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
