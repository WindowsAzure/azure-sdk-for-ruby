# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2020_09_01
  module Models
    #
    # Model object.
    #
    #
    class WafRankingsResponseDataItem

      include MsRestAzure

      # @return [Array<String>]
      attr_accessor :group_values

      # @return [Array<WafRankingsResponseDataItemMetricsItem>]
      attr_accessor :metrics


      #
      # Mapper for WafRankingsResponseDataItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'WafRankingsResponse_dataItem',
          type: {
            name: 'Composite',
            class_name: 'WafRankingsResponseDataItem',
            model_properties: {
              group_values: {
                client_side_validation: true,
                required: false,
                serialized_name: 'groupValues',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              metrics: {
                client_side_validation: true,
                required: false,
                serialized_name: 'metrics',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'WafRankingsResponseDataItemMetricsItemElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'WafRankingsResponseDataItemMetricsItem'
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
