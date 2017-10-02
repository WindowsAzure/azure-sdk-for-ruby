# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs
  module Models
    #
    # Properties of a network port.
    #
    class PortFragment

      include MsRestAzure

      # @return [TransportProtocol] Protocol type of the port. Possible values
      # include: 'Tcp', 'Udp'
      attr_accessor :transport_protocol

      # @return [Integer] Backend port of the target virtual machine.
      attr_accessor :backend_port


      #
      # Mapper for PortFragment class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'PortFragment',
          type: {
            name: 'Composite',
            class_name: 'PortFragment',
            model_properties: {
              transport_protocol: {
                required: false,
                serialized_name: 'transportProtocol',
                type: {
                  name: 'String'
                }
              },
              backend_port: {
                required: false,
                serialized_name: 'backendPort',
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
