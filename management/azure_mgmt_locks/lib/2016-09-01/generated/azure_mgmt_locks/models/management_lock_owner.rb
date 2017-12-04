# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Locks::Mgmt::V2016_09_01
  module Models
    #
    # Lock owner properties.
    #
    class ManagementLockOwner

      include MsRestAzure

      # @return [String] The application ID of the lock owner.
      attr_accessor :application_id


      #
      # Mapper for ManagementLockOwner class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagementLockOwner',
          type: {
            name: 'Composite',
            class_name: 'ManagementLockOwner',
            model_properties: {
              application_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'applicationId',
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
