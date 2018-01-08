# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Graph::Mgmt::V1_6
  module Models
    #
    # Specifies an OAuth 2.0 permission scope or an app role that an
    # application requires. The resourceAccess property of the
    # RequiredResourceAccess type is a collection of ResourceAccess.
    #
    class ResourceAccess

      include MsRestAzure

      # @return Unmatched properties from the message are deserialized this
      # collection
      attr_accessor :additional_properties

      # @return [String] The unique identifier for one of the OAuth2Permission
      # or AppRole instances that the resource application exposes.
      attr_accessor :id

      # @return [String] Specifies whether the id property references an
      # OAuth2Permission or an AppRole. Possible values are "scope" or "role".
      attr_accessor :type


      #
      # Mapper for ResourceAccess class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ResourceAccess',
          type: {
            name: 'Composite',
            class_name: 'ResourceAccess',
            model_properties: {
              additional_properties: {
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              id: {
                required: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
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
