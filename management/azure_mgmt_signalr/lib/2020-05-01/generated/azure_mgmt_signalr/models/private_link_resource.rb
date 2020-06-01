# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Signalr::Mgmt::V2020_05_01
  module Models
    #
    # Private link resource
    #
    class PrivateLinkResource < ProxyResource

      include MsRestAzure

      # @return [String] Group Id of the private link resource
      attr_accessor :group_id

      # @return [Array<String>] Required members of the private link resource
      attr_accessor :required_members

      # @return [Array<String>] Required private DNS zone names
      attr_accessor :required_zone_names


      #
      # Mapper for PrivateLinkResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PrivateLinkResource',
          type: {
            name: 'Composite',
            class_name: 'PrivateLinkResource',
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
              group_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.groupId',
                type: {
                  name: 'String'
                }
              },
              required_members: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.requiredMembers',
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
              required_zone_names: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.requiredZoneNames',
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
              }
            }
          }
        }
      end
    end
  end
end
