# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2019_05_01_preview
  module Models
    #
    # The Active Directory Object that will be used for authenticating the
    # token of a container registry.
    #
    class ActiveDirectoryObject

      include MsRestAzure

      # @return [String] The user/group/application object ID for Active
      # Directory Object that will be used for authenticating the token of a
      # container registry.
      attr_accessor :object_id

      # @return [String] The tenant ID of user/group/application object Active
      # Directory Object that will be used for authenticating the token of a
      # container registry.
      attr_accessor :tenant_id


      #
      # Mapper for ActiveDirectoryObject class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ActiveDirectoryObject',
          type: {
            name: 'Composite',
            class_name: 'ActiveDirectoryObject',
            model_properties: {
              object_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'objectId',
                type: {
                  name: 'String'
                }
              },
              tenant_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tenantId',
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
