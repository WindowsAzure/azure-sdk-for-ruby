# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Resource Id.
    #
    class VirtualMachineCaptureResult < MsRestAzure::SubResource

      include MsRestAzure

      # @return Operation output data (raw JSON)
      attr_accessor :output


      #
      # Mapper for VirtualMachineCaptureResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualMachineCaptureResult',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineCaptureResult',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              output: {
                required: false,
                serialized_name: 'properties.output',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
