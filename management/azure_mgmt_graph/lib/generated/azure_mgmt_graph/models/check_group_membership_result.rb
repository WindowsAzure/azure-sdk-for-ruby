# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Graph
  module Models
    #
    # Server response for IsMemberOf API call
    #
    class CheckGroupMembershipResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [Boolean] True if the specified user, group, contact, or
      # service principal has either direct or transitive membership in the
      # specified group; otherwise, false.
      attr_accessor :value


      #
      # Mapper for CheckGroupMembershipResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CheckGroupMembershipResult',
          type: {
            name: 'Composite',
            class_name: 'CheckGroupMembershipResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
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
