# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2020_10_15_preview
  module Models
    #
    # The identity information with the event subscription.
    #
    class EventSubscriptionIdentity

      include MsRestAzure

      # @return [EventSubscriptionIdentityType] The type of managed identity
      # used. The type 'SystemAssigned, UserAssigned' includes both an
      # implicitly created identity and a set of user-assigned identities. The
      # type 'None' will remove any identity. Possible values include:
      # 'SystemAssigned', 'UserAssigned'
      attr_accessor :type

      # @return [String] The user identity associated with the resource.
      attr_accessor :user_assigned_identity


      #
      # Mapper for EventSubscriptionIdentity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EventSubscriptionIdentity',
          type: {
            name: 'Composite',
            class_name: 'EventSubscriptionIdentity',
            model_properties: {
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              user_assigned_identity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'userAssignedIdentity',
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
