# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2015_06_15
  module Models
    #
    # Resource Id.
    #
    class VirtualMachineCaptureResult < SubResource

      include MsRestAzure

      include MsRest::JSONable
      # @return Operation output data (raw JSON)
      attr_accessor :output


      #
      # Mapper for VirtualMachineCaptureResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualMachineCaptureResult',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineCaptureResult',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              output: {
                client_side_validation: true,
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
