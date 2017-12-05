# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CustomerInsights::Mgmt::V2017_04_26
  module Models
    #
    # The definition of the prediction distribution.
    #
    class PredictionDistributionDefinition

      include MsRestAzure

      # @return [Integer] Total positive in the distribution.
      attr_accessor :total_positives

      # @return [Integer] Total negatives in the distribution.
      attr_accessor :total_negatives

      # @return [Array<PredictionDistributionDefinitionDistributionsItem>]
      # Distributions of the prediction.
      attr_accessor :distributions


      #
      # Mapper for PredictionDistributionDefinition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PredictionDistributionDefinition',
          type: {
            name: 'Composite',
            class_name: 'PredictionDistributionDefinition',
            model_properties: {
              total_positives: {
                client_side_validation: true,
                required: false,
                serialized_name: 'totalPositives',
                type: {
                  name: 'Number'
                }
              },
              total_negatives: {
                client_side_validation: true,
                required: false,
                serialized_name: 'totalNegatives',
                type: {
                  name: 'Number'
                }
              },
              distributions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'distributions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'PredictionDistributionDefinitionDistributionsItemElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PredictionDistributionDefinitionDistributionsItem'
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
