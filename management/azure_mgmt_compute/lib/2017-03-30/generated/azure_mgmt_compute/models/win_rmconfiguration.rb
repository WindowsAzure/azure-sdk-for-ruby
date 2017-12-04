# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2017_03_30
  module Models
    #
    # Describes Windows Remote Management configuration of the VM
    #
    class WinRMConfiguration

      include MsRestAzure

      # @return [Array<WinRMListener>] The list of Windows Remote Management
      # listeners
      attr_accessor :listeners


      #
      # Mapper for WinRMConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'WinRMConfiguration',
          type: {
            name: 'Composite',
            class_name: 'WinRMConfiguration',
            model_properties: {
              listeners: {
                client_side_validation: true,
                required: false,
                serialized_name: 'listeners',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'WinRMListenerElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'WinRMListener'
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
