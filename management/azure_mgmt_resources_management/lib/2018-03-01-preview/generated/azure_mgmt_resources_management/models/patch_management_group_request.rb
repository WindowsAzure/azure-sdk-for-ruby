# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ResourcesManagement::Mgmt::V2018_03_01_preview
  module Models
    #
    # Management group patch parameters.
    #
    class PatchManagementGroupRequest

      include MsRestAzure

      # @return [String] The friendly name of the management group.
      attr_accessor :display_name

      # @return [String] (Optional) The fully qualified ID for the parent
      # management group.  For example,
      # /providers/Microsoft.Management/managementGroups/0000000-0000-0000-0000-000000000000
      attr_accessor :parent_id


      #
      # Mapper for PatchManagementGroupRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PatchManagementGroupRequest',
          type: {
            name: 'Composite',
            class_name: 'PatchManagementGroupRequest',
            model_properties: {
              display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              parent_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'parentId',
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
