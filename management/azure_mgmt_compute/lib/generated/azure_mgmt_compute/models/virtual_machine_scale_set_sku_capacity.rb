# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Describes scaling information of a sku.
    #
    class VirtualMachineScaleSetSkuCapacity

      include MsRestAzure

      include MsRest::JSONable
      # @return [Integer] The minimum capacity.
      attr_accessor :minimum

      # @return [Integer] The maximum capacity that can be set.
      attr_accessor :maximum

      # @return [Integer] The default capacity.
      attr_accessor :default_capacity

      # @return [VirtualMachineScaleSetSkuScaleType] The scale type applicable
      # to the sku. Possible values include: 'Automatic', 'None'
      attr_accessor :scale_type


      #
      # Mapper for VirtualMachineScaleSetSkuCapacity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualMachineScaleSetSkuCapacity',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSetSkuCapacity',
            model_properties: {
              minimum: {
                required: false,
                read_only: true,
                serialized_name: 'minimum',
                type: {
                  name: 'Number'
                }
              },
              maximum: {
                required: false,
                read_only: true,
                serialized_name: 'maximum',
                type: {
                  name: 'Number'
                }
              },
              default_capacity: {
                required: false,
                read_only: true,
                serialized_name: 'defaultCapacity',
                type: {
                  name: 'Number'
                }
              },
              scale_type: {
                required: false,
                read_only: true,
                serialized_name: 'scaleType',
                type: {
                  name: 'Enum',
                  module: 'VirtualMachineScaleSetSkuScaleType'
                }
              }
            }
          }
        }
      end
    end
  end
end
