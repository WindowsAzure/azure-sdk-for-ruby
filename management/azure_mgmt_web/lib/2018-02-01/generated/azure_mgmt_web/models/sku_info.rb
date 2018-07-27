# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2018_02_01
  module Models
    #
    # SKU discovery information.
    #
    class SkuInfo

      include MsRestAzure

      # @return [String] Resource type that this SKU applies to.
      attr_accessor :resource_type

      # @return [SkuDescription] Name and tier of the SKU.
      attr_accessor :sku

      # @return [SkuCapacity] Min, max, and default scale values of the SKU.
      attr_accessor :capacity


      #
      # Mapper for SkuInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SkuInfo',
          type: {
            name: 'Composite',
            class_name: 'SkuInfo',
            model_properties: {
              resource_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resourceType',
                type: {
                  name: 'String'
                }
              },
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'SkuDescription'
                }
              },
              capacity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'capacity',
                type: {
                  name: 'Composite',
                  class_name: 'SkuCapacity'
                }
              }
            }
          }
        }
      end
    end
  end
end
