# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2016_12_01
  module Models
    #
    # Specifies the peering configuration.
    #
    class ExpressRouteCircuitPeeringConfig

      include MsRestAzure

      # @return [Array<String>] The reference of AdvertisedPublicPrefixes.
      attr_accessor :advertised_public_prefixes

      # @return [ExpressRouteCircuitPeeringAdvertisedPublicPrefixState]
      # AdvertisedPublicPrefixState of the Peering resource. Possible values
      # are 'NotConfigured', 'Configuring', 'Configured', and
      # 'ValidationNeeded'. Possible values include: 'NotConfigured',
      # 'Configuring', 'Configured', 'ValidationNeeded'
      attr_accessor :advertised_public_prefixes_state

      # @return [Integer] The CustomerASN of the peering.
      attr_accessor :customer_asn

      # @return [String] The RoutingRegistryName of the configuration.
      attr_accessor :routing_registry_name


      #
      # Mapper for ExpressRouteCircuitPeeringConfig class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExpressRouteCircuitPeeringConfig',
          type: {
            name: 'Composite',
            class_name: 'ExpressRouteCircuitPeeringConfig',
            model_properties: {
              advertised_public_prefixes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'advertisedPublicPrefixes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              advertised_public_prefixes_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'advertisedPublicPrefixesState',
                type: {
                  name: 'String'
                }
              },
              customer_asn: {
                client_side_validation: true,
                required: false,
                serialized_name: 'customerASN',
                type: {
                  name: 'Number'
                }
              },
              routing_registry_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'routingRegistryName',
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
