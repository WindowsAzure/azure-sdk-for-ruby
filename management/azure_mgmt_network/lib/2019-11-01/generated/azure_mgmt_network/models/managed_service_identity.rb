# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2019_11_01
  module Models
    #
    # Identity for the resource.
    #
    class ManagedServiceIdentity

      include MsRestAzure

      # @return [String] The principal id of the system assigned identity. This
      # property will only be provided for a system assigned identity.
      attr_accessor :principal_id

      # @return [String] The tenant id of the system assigned identity. This
      # property will only be provided for a system assigned identity.
      attr_accessor :tenant_id

      # @return [ResourceIdentityType] The type of identity used for the
      # resource. The type 'SystemAssigned, UserAssigned' includes both an
      # implicitly created identity and a set of user assigned identities. The
      # type 'None' will remove any identities from the virtual machine.
      # Possible values include: 'SystemAssigned', 'UserAssigned',
      # 'SystemAssigned, UserAssigned', 'None'
      attr_accessor :type

      # @return [Hash{String =>
      # ManagedServiceIdentityUserAssignedIdentitiesValue}] The list of user
      # identities associated with resource. The user identity dictionary key
      # references will be ARM resource ids in the form:
      # '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
      attr_accessor :user_assigned_identities


      #
      # Mapper for ManagedServiceIdentity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagedServiceIdentity',
          type: {
            name: 'Composite',
            class_name: 'ManagedServiceIdentity',
            model_properties: {
              principal_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'principalId',
                type: {
                  name: 'String'
                }
              },
              tenant_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'tenantId',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'Enum',
                  module: 'ResourceIdentityType'
                }
              },
              user_assigned_identities: {
                client_side_validation: true,
                required: false,
                serialized_name: 'userAssignedIdentities',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ManagedServiceIdentityUserAssignedIdentitiesValueElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ManagedServiceIdentityUserAssignedIdentitiesValue'
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
