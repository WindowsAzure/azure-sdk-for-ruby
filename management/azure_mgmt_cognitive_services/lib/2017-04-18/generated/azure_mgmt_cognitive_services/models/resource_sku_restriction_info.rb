# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Mgmt::V2017_04_18
  module Models
    #
    # Model object.
    #
    #
    class ResourceSkuRestrictionInfo

      include MsRestAzure

      # @return [Array<String>] Locations where the SKU is restricted
      attr_accessor :locations

      # @return [Array<String>] List of availability zones where the SKU is
      # restricted.
      attr_accessor :zones


      #
      # Mapper for ResourceSkuRestrictionInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResourceSkuRestrictionInfo',
          type: {
            name: 'Composite',
            class_name: 'ResourceSkuRestrictionInfo',
            model_properties: {
              locations: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'locations',
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
              zones: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'zones',
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
              }
            }
          }
        }
      end
    end
  end
end
