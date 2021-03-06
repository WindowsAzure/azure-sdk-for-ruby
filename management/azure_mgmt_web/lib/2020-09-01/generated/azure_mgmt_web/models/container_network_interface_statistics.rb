# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2020_09_01
  module Models
    #
    # Model object.
    #
    #
    class ContainerNetworkInterfaceStatistics

      include MsRestAzure

      # @return [Integer]
      attr_accessor :rx_bytes

      # @return [Integer]
      attr_accessor :rx_packets

      # @return [Integer]
      attr_accessor :rx_errors

      # @return [Integer]
      attr_accessor :rx_dropped

      # @return [Integer]
      attr_accessor :tx_bytes

      # @return [Integer]
      attr_accessor :tx_packets

      # @return [Integer]
      attr_accessor :tx_errors

      # @return [Integer]
      attr_accessor :tx_dropped


      #
      # Mapper for ContainerNetworkInterfaceStatistics class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ContainerNetworkInterfaceStatistics',
          type: {
            name: 'Composite',
            class_name: 'ContainerNetworkInterfaceStatistics',
            model_properties: {
              rx_bytes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'rxBytes',
                type: {
                  name: 'Number'
                }
              },
              rx_packets: {
                client_side_validation: true,
                required: false,
                serialized_name: 'rxPackets',
                type: {
                  name: 'Number'
                }
              },
              rx_errors: {
                client_side_validation: true,
                required: false,
                serialized_name: 'rxErrors',
                type: {
                  name: 'Number'
                }
              },
              rx_dropped: {
                client_side_validation: true,
                required: false,
                serialized_name: 'rxDropped',
                type: {
                  name: 'Number'
                }
              },
              tx_bytes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'txBytes',
                type: {
                  name: 'Number'
                }
              },
              tx_packets: {
                client_side_validation: true,
                required: false,
                serialized_name: 'txPackets',
                type: {
                  name: 'Number'
                }
              },
              tx_errors: {
                client_side_validation: true,
                required: false,
                serialized_name: 'txErrors',
                type: {
                  name: 'Number'
                }
              },
              tx_dropped: {
                client_side_validation: true,
                required: false,
                serialized_name: 'txDropped',
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
