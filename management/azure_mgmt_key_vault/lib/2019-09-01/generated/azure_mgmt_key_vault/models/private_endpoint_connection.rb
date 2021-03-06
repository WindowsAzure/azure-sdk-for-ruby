# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::Mgmt::V2019_09_01
  module Models
    #
    # Private endpoint connection resource.
    #
    class PrivateEndpointConnection < Resource

      include MsRestAzure

      # @return [PrivateEndpoint] Properties of the private endpoint object.
      attr_accessor :private_endpoint

      # @return [PrivateLinkServiceConnectionState] Approval state of the
      # private link connection.
      attr_accessor :private_link_service_connection_state

      # @return [PrivateEndpointConnectionProvisioningState] Provisioning state
      # of the private endpoint connection. Possible values include:
      # 'Succeeded', 'Creating', 'Updating', 'Deleting', 'Failed',
      # 'Disconnected'
      attr_accessor :provisioning_state


      #
      # Mapper for PrivateEndpointConnection class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PrivateEndpointConnection',
          type: {
            name: 'Composite',
            class_name: 'PrivateEndpointConnection',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
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
                read_only: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                read_only: true,
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
              private_endpoint: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.privateEndpoint',
                type: {
                  name: 'Composite',
                  class_name: 'PrivateEndpoint'
                }
              },
              private_link_service_connection_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.privateLinkServiceConnectionState',
                type: {
                  name: 'Composite',
                  class_name: 'PrivateLinkServiceConnectionState'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.provisioningState',
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
