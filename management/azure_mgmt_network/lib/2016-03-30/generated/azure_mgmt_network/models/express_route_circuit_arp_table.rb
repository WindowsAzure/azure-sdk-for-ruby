# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2016_03_30
  module Models
    #
    # The arp table associated with the ExpressRouteCircuit
    #
    class ExpressRouteCircuitArpTable

      include MsRestAzure

      # @return [Integer] Age.
      attr_accessor :age

      # @return [String] Interface.
      attr_accessor :interface

      # @return [String] Gets ipAddress.
      attr_accessor :ip_address

      # @return [String] Gets macAddress.
      attr_accessor :mac_address


      #
      # Mapper for ExpressRouteCircuitArpTable class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExpressRouteCircuitArpTable',
          type: {
            name: 'Composite',
            class_name: 'ExpressRouteCircuitArpTable',
            model_properties: {
              age: {
                client_side_validation: true,
                required: false,
                serialized_name: 'age',
                type: {
                  name: 'Number'
                }
              },
              interface: {
                client_side_validation: true,
                required: false,
                serialized_name: 'interface',
                type: {
                  name: 'String'
                }
              },
              ip_address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ipAddress',
                type: {
                  name: 'String'
                }
              },
              mac_address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'macAddress',
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
