# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2019_12_01
  module Models
    #
    # VirtualHub Resource.
    #
    class VirtualHub < Resource

      include MsRestAzure

      # @return [SubResource] The VirtualWAN to which the VirtualHub belongs.
      attr_accessor :virtual_wan

      # @return [SubResource] The VpnGateway associated with this VirtualHub.
      attr_accessor :vpn_gateway

      # @return [SubResource] The P2SVpnGateway associated with this
      # VirtualHub.
      attr_accessor :p2svpn_gateway

      # @return [SubResource] The expressRouteGateway associated with this
      # VirtualHub.
      attr_accessor :express_route_gateway

      # @return [SubResource] The azureFirewall associated with this
      # VirtualHub.
      attr_accessor :azure_firewall

      # @return [Array<HubVirtualNetworkConnection>] List of all vnet
      # connections with this VirtualHub.
      attr_accessor :virtual_network_connections

      # @return [String] Address-prefix for this VirtualHub.
      attr_accessor :address_prefix

      # @return [VirtualHubRouteTable] The routeTable associated with this
      # virtual hub.
      attr_accessor :route_table

      # @return [ProvisioningState] The provisioning state of the virtual hub
      # resource. Possible values include: 'Succeeded', 'Updating', 'Deleting',
      # 'Failed'
      attr_accessor :provisioning_state

      # @return [String] The Security Provider name.
      attr_accessor :security_provider_name

      # @return [Array<VirtualHubRouteTableV2>] List of all virtual hub route
      # table v2s associated with this VirtualHub.
      attr_accessor :virtual_hub_route_table_v2s

      # @return [String] The sku of this VirtualHub.
      attr_accessor :sku

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for VirtualHub class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualHub',
          type: {
            name: 'Composite',
            class_name: 'VirtualHub',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              virtual_wan: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.virtualWan',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              vpn_gateway: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.vpnGateway',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              p2svpn_gateway: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.p2SVpnGateway',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              express_route_gateway: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.expressRouteGateway',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              azure_firewall: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.azureFirewall',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              virtual_network_connections: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.virtualNetworkConnections',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'HubVirtualNetworkConnectionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'HubVirtualNetworkConnection'
                      }
                  }
                }
              },
              address_prefix: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.addressPrefix',
                type: {
                  name: 'String'
                }
              },
              route_table: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.routeTable',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualHubRouteTable'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              security_provider_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.securityProviderName',
                type: {
                  name: 'String'
                }
              },
              virtual_hub_route_table_v2s: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.virtualHubRouteTableV2s',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'VirtualHubRouteTableV2ElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualHubRouteTableV2'
                      }
                  }
                }
              },
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sku',
                type: {
                  name: 'String'
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
                read_only: true,
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
