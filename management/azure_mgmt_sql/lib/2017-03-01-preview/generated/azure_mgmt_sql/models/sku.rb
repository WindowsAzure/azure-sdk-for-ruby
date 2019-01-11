# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2017_03_01_preview
  module Models
    #
    # The resource model definition representing SKU
    #
    class Sku

      include MsRestAzure

      # @return [String] The name of the SKU. Ex - P3. It is typically a
      # letter+number code
      attr_accessor :name

      # @return [String] This field is required to be implemented by the
      # Resource Provider if the service has more than one tier, but is not
      # required on a PUT.
      attr_accessor :tier

      # @return [String] The SKU size. When the name field is the combination
      # of tier and some other value, this would be the standalone code.
      attr_accessor :size

      # @return [String] If the service has different generations of hardware,
      # for the same SKU, then that can be captured here.
      attr_accessor :family

      # @return [Integer] If the SKU supports scale out/in then the capacity
      # integer should be included. If scale out/in is not possible for the
      # resource this may be omitted.
      attr_accessor :capacity


      #
      # Mapper for Sku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Sku',
          type: {
            name: 'Composite',
            class_name: 'Sku',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              tier: {
                required: false,
                serialized_name: 'tier',
                type: {
                  name: 'String'
                }
              },
              size: {
                required: false,
                serialized_name: 'size',
                type: {
                  name: 'String'
                }
              },
              family: {
                required: false,
                serialized_name: 'family',
                type: {
                  name: 'String'
                }
              },
              capacity: {
                required: false,
                serialized_name: 'capacity',
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
