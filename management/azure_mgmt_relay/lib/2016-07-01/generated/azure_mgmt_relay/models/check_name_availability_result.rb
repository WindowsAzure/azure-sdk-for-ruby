# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Relay::Mgmt::V2016_07_01
  module Models
    #
    # Description of a Check Name availability request properties.
    #
    class CheckNameAvailabilityResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [Boolean] Value indicating namespace is availability, true if
      # the namespace is available; otherwise, false.
      attr_accessor :name_available

      # @return [UnavailableReason] The reason for unavailability of a
      # namespace. Possible values include: 'None', 'InvalidName',
      # 'SubscriptionIsDisabled', 'NameInUse', 'NameInLockdown',
      # 'TooManyNamespaceInCurrentSubscription'
      attr_accessor :reason

      # @return [String] The detailed info regarding the reason associated with
      # the namespace.
      attr_accessor :message


      #
      # Mapper for CheckNameAvailabilityResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CheckNameAvailabilityResult',
          type: {
            name: 'Composite',
            class_name: 'CheckNameAvailabilityResult',
            model_properties: {
              name_available: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nameAvailable',
                type: {
                  name: 'Boolean'
                }
              },
              reason: {
                client_side_validation: true,
                required: false,
                serialized_name: 'reason',
                type: {
                  name: 'Enum',
                  module: 'UnavailableReason'
                }
              },
              message: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'message',
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
