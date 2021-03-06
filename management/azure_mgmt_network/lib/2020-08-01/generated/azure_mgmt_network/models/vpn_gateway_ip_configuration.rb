# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_08_01
  module Models
    #
    # IP Configuration of a VPN Gateway Resource.
    #
    class VpnGatewayIpConfiguration

      include MsRestAzure

      # @return [String] The identifier of the IP configuration for a VPN
      # Gateway.
      attr_accessor :id

      # @return [String] The public IP address of this IP configuration.
      attr_accessor :public_ip_address

      # @return [String] The private IP address of this IP configuration.
      attr_accessor :private_ip_address


      #
      # Mapper for VpnGatewayIpConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VpnGatewayIpConfiguration',
          type: {
            name: 'Composite',
            class_name: 'VpnGatewayIpConfiguration',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              public_ip_address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'publicIpAddress',
                type: {
                  name: 'String'
                }
              },
              private_ip_address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'privateIpAddress',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
