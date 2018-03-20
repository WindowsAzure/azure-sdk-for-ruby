# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2016_10_10
  module Models
    #
    # Response of the CheckNameAvailability operation.
    #
    class ApiManagementServiceNameAvailabilityResult

      include MsRestAzure

      # @return [Boolean] True if the name is available and can be used to
      # create a new API Management service; otherwise false.
      attr_accessor :name_available

      # @return [String] If reason == invalid, provide the user with the reason
      # why the given name is invalid, and provide the resource naming
      # requirements so that the user can select a valid name. If reason ==
      # AlreadyExists, explain that <resourceName> is already in use, and
      # direct them to select a different name.
      attr_accessor :message

      # @return [NameAvailabilityReason] Invalid indicates the name provided
      # does not match the resource provider’s naming requirements (incorrect
      # length, unsupported characters, etc.)  AlreadyExists indicates that the
      # name is already in use and is therefore unavailable. Possible values
      # include: 'Valid', 'Invalid', 'AlreadyExists'
      attr_accessor :reason


      #
      # Mapper for ApiManagementServiceNameAvailabilityResult class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApiManagementServiceNameAvailabilityResult',
          type: {
            name: 'Composite',
            class_name: 'ApiManagementServiceNameAvailabilityResult',
            model_properties: {
              name_available: {
                client_side_validation: true,
                required: true,
                serialized_name: 'nameAvailable',
                type: {
                  name: 'Boolean'
                }
              },
              message: {
                client_side_validation: true,
                required: false,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              reason: {
                client_side_validation: true,
                required: false,
                serialized_name: 'reason',
                type: {
                  name: 'Enum',
                  module: 'NameAvailabilityReason'
                }
              }
            }
          }
        }
      end
    end
  end
end
