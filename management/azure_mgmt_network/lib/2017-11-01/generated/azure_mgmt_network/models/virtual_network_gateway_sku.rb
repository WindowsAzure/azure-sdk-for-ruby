# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2017_11_01
  module Models
    #
    # VirtualNetworkGatewaySku details
    #
    class VirtualNetworkGatewaySku

      include MsRestAzure

      # @return [VirtualNetworkGatewaySkuName] Gateway SKU name. Possible
      # values include: 'Basic', 'HighPerformance', 'Standard',
      # 'UltraPerformance', 'VpnGw1', 'VpnGw2', 'VpnGw3'
      attr_accessor :name

      # @return [VirtualNetworkGatewaySkuTier] Gateway SKU tier. Possible
      # values include: 'Basic', 'HighPerformance', 'Standard',
      # 'UltraPerformance', 'VpnGw1', 'VpnGw2', 'VpnGw3'
      attr_accessor :tier

      # @return [Integer] The capacity.
      attr_accessor :capacity


      #
      # Mapper for VirtualNetworkGatewaySku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualNetworkGatewaySku',
          type: {
            name: 'Composite',
            class_name: 'VirtualNetworkGatewaySku',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              tier: {
                required: false,
                serialized_name: 'tier',
                type: {
                  name: 'String'
                }
              },
              capacity: {
                required: false,
                serialized_name: 'capacity',
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
