# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServices::Mgmt::V2016_06_01
  module Models
    #
    # Information of the private link resource.
    #
    class PrivateLinkResource

      include MsRestAzure

      # @return [String] e.g. f9ad6492-33d4-4690-9999-6bfd52a0d081 (Backup) or
      # f9ad6492-33d4-4690-9999-6bfd52a0d082 (SiteRecovery)
      attr_accessor :group_id

      # @return [Array<String>] [backup-ecs1, backup-prot1, backup-prot1b,
      # backup-prot1c, backup-id1]
      attr_accessor :required_members

      # @return [Array<String>] The private link resource Private link DNS zone
      # name.
      attr_accessor :required_zone_names

      # @return [String] Fully qualified identifier of the resource.
      attr_accessor :id

      # @return [String] Name of the resource.
      attr_accessor :name

      # @return [String] e.g.
      # Microsoft.RecoveryServices/vaults/privateLinkResources
      attr_accessor :type


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
              group_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.groupId',
                type: {
                  name: 'String'
                }
              },
              required_members: {
                client_side_validation: true,
                required: false,
                read_only: true,
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
                read_only: true,
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
              },
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
              }
            }
          }
        }
      end
    end
  end
end
