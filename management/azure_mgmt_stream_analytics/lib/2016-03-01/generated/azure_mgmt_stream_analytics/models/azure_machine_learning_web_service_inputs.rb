# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StreamAnalytics::Mgmt::V2016_03_01
  module Models
    #
    # The inputs for the Azure Machine Learning web service endpoint.
    #
    class AzureMachineLearningWebServiceInputs

      include MsRestAzure

      # @return [String] The name of the input. This is the name provided while
      # authoring the endpoint.
      attr_accessor :name

      # @return [Array<AzureMachineLearningWebServiceInputColumn>] A list of
      # input columns for the Azure Machine Learning web service endpoint.
      attr_accessor :column_names


      #
      # Mapper for AzureMachineLearningWebServiceInputs class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AzureMachineLearningWebServiceInputs',
          type: {
            name: 'Composite',
            class_name: 'AzureMachineLearningWebServiceInputs',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              column_names: {
                required: false,
                serialized_name: 'columnNames',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'AzureMachineLearningWebServiceInputColumnElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AzureMachineLearningWebServiceInputColumn'
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
