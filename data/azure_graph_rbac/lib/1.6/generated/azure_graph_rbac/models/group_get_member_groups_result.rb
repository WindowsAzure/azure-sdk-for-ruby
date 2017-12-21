# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::GraphRbac::V1_6
  module Models
    #
    # Server response for GetMemberGroups API call.
    #
    class GroupGetMemberGroupsResult

      include MsRestAzure

      # @return [Array<String>] A collection of group IDs of which the group is
      # a member.
      attr_accessor :value


      #
      # Mapper for GroupGetMemberGroupsResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GroupGetMemberGroupsResult',
          type: {
            name: 'Composite',
            class_name: 'GroupGetMemberGroupsResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
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
