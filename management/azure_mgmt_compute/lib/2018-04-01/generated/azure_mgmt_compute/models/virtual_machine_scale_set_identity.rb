# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2018_04_01
  module Models
    #
    # Identity for the virtual machine scale set.
    #
    class VirtualMachineScaleSetIdentity

      include MsRestAzure

      # @return [String] The principal id of virtual machine scale set
      # identity. This property will only be provided for a system assigned
      # identity.
      attr_accessor :principal_id

      # @return [String] The tenant id associated with the virtual machine
      # scale set. This property will only be provided for a system assigned
      # identity.
      attr_accessor :tenant_id

      # @return [ResourceIdentityType] The type of identity used for the
      # virtual machine scale set. The type 'SystemAssigned, UserAssigned'
      # includes both an implicitly created identity and a set of user assigned
      # identities. The type 'None' will remove any identities from the virtual
      # machine scale set. Possible values include: 'SystemAssigned',
      # 'UserAssigned', 'SystemAssigned, UserAssigned', 'None'
      attr_accessor :type

      # @return [Array<String>] The list of user identities associated with the
      # virtual machine scale set. The user identity references will be ARM
      # resource ids in the form:
      # '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/identities/{identityName}'.
      attr_accessor :identity_ids


      #
      # Mapper for VirtualMachineScaleSetIdentity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualMachineScaleSetIdentity',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSetIdentity',
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
              identity_ids: {
                client_side_validation: true,
                required: false,
                serialized_name: 'identityIds',
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
