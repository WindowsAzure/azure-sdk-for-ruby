# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2015_05_01_preview
  module Models
    #
    # Contains ServiceProviderProperties in an ExpressRouteCircuit
    #
    class ExpressRouteCircuitServiceProviderProperties

      include MsRestAzure

      # @return [String] Gets or sets serviceProviderName.
      attr_accessor :service_provider_name

      # @return [String] Gets or sets peering location.
      attr_accessor :peering_location

      # @return [Integer] Gets or sets BandwidthInMbps.
      attr_accessor :bandwidth_in_mbps


      #
      # Mapper for ExpressRouteCircuitServiceProviderProperties class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ExpressRouteCircuitServiceProviderProperties',
          type: {
            name: 'Composite',
            class_name: 'ExpressRouteCircuitServiceProviderProperties',
            model_properties: {
              service_provider_name: {
                required: false,
                serialized_name: 'serviceProviderName',
                type: {
                  name: 'String'
                }
              },
              peering_location: {
                required: false,
                serialized_name: 'peeringLocation',
                type: {
                  name: 'String'
                }
              },
              bandwidth_in_mbps: {
                required: false,
                serialized_name: 'bandwidthInMbps',
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
