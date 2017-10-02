# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs
  module Models
    #
    # Configuration for public IP address sharing.
    #
    class SubnetSharedPublicIpAddressConfiguration

      include MsRestAzure

      # @return [Array<Port>] Backend ports that virtual machines on this
      # subnet are allowed to expose
      attr_accessor :allowed_ports


      #
      # Mapper for SubnetSharedPublicIpAddressConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SubnetSharedPublicIpAddressConfiguration',
          type: {
            name: 'Composite',
            class_name: 'SubnetSharedPublicIpAddressConfiguration',
            model_properties: {
              allowed_ports: {
                required: false,
                serialized_name: 'allowedPorts',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'PortElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Port'
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
