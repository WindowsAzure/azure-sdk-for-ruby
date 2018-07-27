# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventHub::Mgmt::V2018_01_01_preview
  module Models
    #
    # SKU parameters supplied to the create namespace operation
    #
    class Sku

      include MsRestAzure

      # @return [SkuName] Name of this SKU. Possible values include: 'Basic',
      # 'Standard'
      attr_accessor :name

      # @return [SkuTier] The billing tier of this particular SKU. Possible
      # values include: 'Basic', 'Standard'
      attr_accessor :tier

      # @return [Integer] The Event Hubs throughput units, vaule should be 0 to
      # 20 throughput units.
      attr_accessor :capacity


      #
      # Mapper for Sku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Sku',
          type: {
            name: 'Composite',
            class_name: 'Sku',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              tier: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tier',
                type: {
                  name: 'String'
                }
              },
              capacity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'capacity',
                constraints: {
                  InclusiveMaximum: 20,
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
