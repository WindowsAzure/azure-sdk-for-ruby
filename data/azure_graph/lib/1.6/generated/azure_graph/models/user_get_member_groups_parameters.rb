# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Graph::V1_6
  module Models
    #
    # Request parameters for GetMemberGroups API call.
    #
    class UserGetMemberGroupsParameters

      include MsRestAzure

      # @return [Boolean] If true, only membership in security-enabled groups
      # should be checked. Otherwise, membership in all groups should be
      # checked.
      attr_accessor :security_enabled_only


      #
      # Mapper for UserGetMemberGroupsParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UserGetMemberGroupsParameters',
          type: {
            name: 'Composite',
            class_name: 'UserGetMemberGroupsParameters',
            model_properties: {
              security_enabled_only: {
                client_side_validation: true,
                required: true,
                serialized_name: 'securityEnabledOnly',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
