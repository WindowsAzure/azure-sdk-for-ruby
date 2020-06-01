# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Signalr::Mgmt::V2020_05_01
  module Models
    #
    # Network ACLs for SignalR
    #
    class SignalRNetworkACLs

      include MsRestAzure

      # @return [ACLAction] Default action when no other rule matches. Possible
      # values include: 'Allow', 'Deny'
      attr_accessor :default_action

      # @return [NetworkACL] ACL for requests from public network
      attr_accessor :public_network

      # @return [Array<PrivateEndpointACL>] ACLs for requests from private
      # endpoints
      attr_accessor :private_endpoints


      #
      # Mapper for SignalRNetworkACLs class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SignalRNetworkACLs',
          type: {
            name: 'Composite',
            class_name: 'SignalRNetworkACLs',
            model_properties: {
              default_action: {
                client_side_validation: true,
                required: false,
                serialized_name: 'defaultAction',
                type: {
                  name: 'String'
                }
              },
              public_network: {
                client_side_validation: true,
                required: false,
                serialized_name: 'publicNetwork',
                type: {
                  name: 'Composite',
                  class_name: 'NetworkACL'
                }
              },
              private_endpoints: {
                client_side_validation: true,
                required: false,
                serialized_name: 'privateEndpoints',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'PrivateEndpointACLElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PrivateEndpointACL'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
