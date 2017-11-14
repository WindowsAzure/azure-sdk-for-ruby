# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2014_04_01
  module Models
    #
    # Represents the response to a list recommended elastic pool request.
    #
    class RecommendedElasticPoolListResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<RecommendedElasticPool>] The list of recommended elastic
      # pools hosted in the server.
      attr_accessor :value


      #
      # Mapper for RecommendedElasticPoolListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RecommendedElasticPoolListResult',
          type: {
            name: 'Composite',
            class_name: 'RecommendedElasticPoolListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'RecommendedElasticPoolElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RecommendedElasticPool'
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
