# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ResourcesManagement::Mgmt::V2017_08_31_preview
  module Models
    #
    # The unique identifier (ID) of a management group.
    #
    class ManagementGroupRecursiveChildInfo

      include MsRestAzure

      # @return [Enum] Managment Group Recursive Child Info. Possible values
      # include: 'Enrollment', 'Department', 'Account', 'Subscription'
      attr_accessor :child_type

      # @return [String] The ID of the child resource (management group or
      # subscription). E.g.
      # /providers/Microsoft.Management/managementGroups/40000000-0000-0000-0000-000000000000
      attr_accessor :child_id

      # @return [String] The friendly name of the child resource.
      attr_accessor :display_name

      # @return (Optional) The AAD Tenant ID associated with the child
      # resource.
      attr_accessor :tenant_id

      # @return [Array<ManagementGroupRecursiveChildInfo>] The list of
      # children.
      attr_accessor :children


      #
      # Mapper for ManagementGroupRecursiveChildInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ManagementGroupRecursiveChildInfo',
          type: {
            name: 'Composite',
            class_name: 'ManagementGroupRecursiveChildInfo',
            model_properties: {
              child_type: {
                required: false,
                serialized_name: 'childType',
                type: {
                  name: 'String'
                }
              },
              child_id: {
                required: false,
                serialized_name: 'childId',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                required: false,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              tenant_id: {
                required: false,
                serialized_name: 'tenantId',
                type: {
                  name: 'String'
                }
              },
              children: {
                required: false,
                serialized_name: 'children',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ManagementGroupRecursiveChildInfoElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ManagementGroupRecursiveChildInfo'
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
