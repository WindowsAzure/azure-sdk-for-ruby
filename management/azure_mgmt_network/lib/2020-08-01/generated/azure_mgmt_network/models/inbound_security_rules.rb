# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_08_01
  module Models
    #
    # Properties of the Inbound Security Rules resource.
    #
    class InboundSecurityRules

      include MsRestAzure

      # @return [InboundSecurityRulesProtocol] Protocol. This should be either
      # TCP or UDP. Possible values include: 'TCP', 'UDP'
      attr_accessor :protocol

      # @return [String] The CIDR or source IP range. Only /30, /31 and /32 Ip
      # ranges are allowed.
      attr_accessor :source_address_prefix

      # @return [Integer] NVA port ranges to be opened up. One needs to provide
      # specific ports.
      attr_accessor :destination_port_range


      #
      # Mapper for InboundSecurityRules class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'InboundSecurityRules',
          type: {
            name: 'Composite',
            class_name: 'InboundSecurityRules',
            model_properties: {
              protocol: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protocol',
                type: {
                  name: 'String'
                }
              },
              source_address_prefix: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceAddressPrefix',
                type: {
                  name: 'String'
                }
              },
              destination_port_range: {
                client_side_validation: true,
                required: false,
                serialized_name: 'destinationPortRange',
                constraints: {
                  InclusiveMaximum: 65535,
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
