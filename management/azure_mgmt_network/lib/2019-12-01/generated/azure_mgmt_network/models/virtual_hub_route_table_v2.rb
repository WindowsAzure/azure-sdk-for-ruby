# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2019_12_01
  module Models
    #
    # VirtualHubRouteTableV2 Resource.
    #
    class VirtualHubRouteTableV2 < SubResource

      include MsRestAzure

      # @return [Array<VirtualHubRouteV2>] List of all routes.
      attr_accessor :routes

      # @return [Array<String>] List of all connections attached to this route
      # table v2.
      attr_accessor :attached_connections

      # @return [ProvisioningState] The provisioning state of the virtual hub
      # route table v2 resource. Possible values include: 'Succeeded',
      # 'Updating', 'Deleting', 'Failed'
      attr_accessor :provisioning_state

      # @return [String] The name of the resource that is unique within a
      # resource group. This name can be used to access the resource.
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for VirtualHubRouteTableV2 class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualHubRouteTableV2',
          type: {
            name: 'Composite',
            class_name: 'VirtualHubRouteTableV2',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              routes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.routes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'VirtualHubRouteV2ElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualHubRouteV2'
                      }
                  }
                }
              },
              attached_connections: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.attachedConnections',
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
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
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
