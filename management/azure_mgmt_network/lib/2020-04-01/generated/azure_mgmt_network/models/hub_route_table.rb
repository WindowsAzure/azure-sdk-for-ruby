# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_04_01
  module Models
    #
    # RouteTable resource in a virtual hub.
    #
    class HubRouteTable < SubResource

      include MsRestAzure

      # @return [Array<HubRoute>] List of all routes.
      attr_accessor :routes

      # @return [Array<String>] List of labels associated with this route
      # table.
      attr_accessor :labels

      # @return [Array<SubResource>] List of all connections associated with
      # this route table.
      attr_accessor :associated_connections

      # @return [Array<SubResource>] List of all connections that advertise to
      # this route table.
      attr_accessor :propagating_connections

      # @return [ProvisioningState] The provisioning state of the RouteTable
      # resource. Possible values include: 'Succeeded', 'Updating', 'Deleting',
      # 'Failed'
      attr_accessor :provisioning_state

      # @return [String] The name of the resource that is unique within a
      # resource group. This name can be used to access the resource.
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag

      # @return [String] Resource type.
      attr_accessor :type


      #
      # Mapper for HubRouteTable class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HubRouteTable',
          type: {
            name: 'Composite',
            class_name: 'HubRouteTable',
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
                      serialized_name: 'HubRouteElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'HubRoute'
                      }
                  }
                }
              },
              labels: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.labels',
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
              associated_connections: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.associatedConnections',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SubResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SubResource'
                      }
                  }
                }
              },
              propagating_connections: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.propagatingConnections',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SubResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SubResource'
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
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
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
