# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2019_12_01
  module Models
    #
    # Identity properties of the Api Management service resource.
    #
    class ApiManagementServiceIdentity

      include MsRestAzure

      # @return [ApimIdentityType] The type of identity used for the resource.
      # The type 'SystemAssigned, UserAssigned' includes both an implicitly
      # created identity and a set of user assigned identities. The type 'None'
      # will remove any identities from the service. Possible values include:
      # 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned',
      # 'None'
      attr_accessor :type

      # @return The principal id of the identity.
      attr_accessor :principal_id

      # @return The client tenant id of the identity.
      attr_accessor :tenant_id

      # @return [Hash{String => UserIdentityProperties}] The list of user
      # identities associated with the resource. The user identity
      # dictionary key references will be ARM resource ids in the form:
      # '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/
      # providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
      attr_accessor :user_assigned_identities


      #
      # Mapper for ApiManagementServiceIdentity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApiManagementServiceIdentity',
          type: {
            name: 'Composite',
            class_name: 'ApiManagementServiceIdentity',
            model_properties: {
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
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
              user_assigned_identities: {
                client_side_validation: true,
                required: false,
                serialized_name: 'userAssignedIdentities',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'UserIdentityPropertiesElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'UserIdentityProperties'
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
