# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2016_06_01
  module Models
    #
    # Peering in a ExpressRouteCircuit resource
    #
    class ExpressRouteCircuitPeering < SubResource

      include MsRestAzure

      # @return [ExpressRouteCircuitPeeringType] Gets or sets PeeringType.
      # Possible values include: 'AzurePublicPeering', 'AzurePrivatePeering',
      # 'MicrosoftPeering'
      attr_accessor :peering_type

      # @return [ExpressRouteCircuitPeeringState] Gets or sets state of
      # Peering. Possible values include: 'Disabled', 'Enabled'
      attr_accessor :state

      # @return [Integer] Gets or sets the azure ASN
      attr_accessor :azure_asn

      # @return [Integer] Gets or sets the peer ASN
      attr_accessor :peer_asn

      # @return [String] Gets or sets the primary address prefix
      attr_accessor :primary_peer_address_prefix

      # @return [String] Gets or sets the secondary address prefix
      attr_accessor :secondary_peer_address_prefix

      # @return [String] Gets or sets the primary port
      attr_accessor :primary_azure_port

      # @return [String] Gets or sets the secondary port
      attr_accessor :secondary_azure_port

      # @return [String] Gets or sets the shared key
      attr_accessor :shared_key

      # @return [Integer] Gets or sets the vlan id
      attr_accessor :vlan_id

      # @return [ExpressRouteCircuitPeeringConfig] Gets or sets the mircosoft
      # peering config
      attr_accessor :microsoft_peering_config

      # @return [ExpressRouteCircuitStats] Gets or peering stats
      attr_accessor :stats

      # @return [String] Gets provisioning state of the PublicIP resource
      # Updating/Deleting/Failed
      attr_accessor :provisioning_state

      # @return [String] Gets or sets the GatewayManager Etag
      attr_accessor :gateway_manager_etag

      # @return [String] Gets whether the provider or the customer last
      # modified the peering
      attr_accessor :last_modified_by

      # @return [String] Gets name of the resource that is unique within a
      # resource group. This name can be used to access the resource
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated
      attr_accessor :etag


      #
      # Mapper for ExpressRouteCircuitPeering class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExpressRouteCircuitPeering',
          type: {
            name: 'Composite',
            class_name: 'ExpressRouteCircuitPeering',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              peering_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.peeringType',
                type: {
                  name: 'String'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.state',
                type: {
                  name: 'String'
                }
              },
              azure_asn: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.azureASN',
                type: {
                  name: 'Number'
                }
              },
              peer_asn: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.peerASN',
                type: {
                  name: 'Number'
                }
              },
              primary_peer_address_prefix: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.primaryPeerAddressPrefix',
                type: {
                  name: 'String'
                }
              },
              secondary_peer_address_prefix: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.secondaryPeerAddressPrefix',
                type: {
                  name: 'String'
                }
              },
              primary_azure_port: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.primaryAzurePort',
                type: {
                  name: 'String'
                }
              },
              secondary_azure_port: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.secondaryAzurePort',
                type: {
                  name: 'String'
                }
              },
              shared_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sharedKey',
                type: {
                  name: 'String'
                }
              },
              vlan_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.vlanId',
                type: {
                  name: 'Number'
                }
              },
              microsoft_peering_config: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.microsoftPeeringConfig',
                type: {
                  name: 'Composite',
                  class_name: 'ExpressRouteCircuitPeeringConfig'
                }
              },
              stats: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.stats',
                type: {
                  name: 'Composite',
                  class_name: 'ExpressRouteCircuitStats'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              gateway_manager_etag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.gatewayManagerEtag',
                type: {
                  name: 'String'
                }
              },
              last_modified_by: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.lastModifiedBy',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'etag',
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
