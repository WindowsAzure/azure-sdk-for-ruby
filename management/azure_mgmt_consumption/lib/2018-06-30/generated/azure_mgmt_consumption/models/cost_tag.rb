# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Consumption::Mgmt::V2018_06_30
  module Models
    #
    # A cost tag resource.
    #
    class CostTag < ProxyResource

      include MsRestAzure

      # @return [Array<CostTagProperties>] Cost tags.
      attr_accessor :cost_tags


      #
      # Mapper for CostTag class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CostTag',
          type: {
            name: 'Composite',
            class_name: 'CostTag',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              e_tag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'eTag',
                type: {
                  name: 'String'
                }
              },
              cost_tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.costTags',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'CostTagPropertiesElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CostTagProperties'
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
