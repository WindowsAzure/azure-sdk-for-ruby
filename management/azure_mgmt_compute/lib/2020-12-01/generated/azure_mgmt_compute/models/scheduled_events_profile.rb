# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2020_12_01
  module Models
    #
    # Model object.
    #
    #
    class ScheduledEventsProfile

      include MsRestAzure

      # @return [TerminateNotificationProfile] Specifies Terminate Scheduled
      # Event related configurations.
      attr_accessor :terminate_notification_profile


      #
      # Mapper for ScheduledEventsProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ScheduledEventsProfile',
          type: {
            name: 'Composite',
            class_name: 'ScheduledEventsProfile',
            model_properties: {
              terminate_notification_profile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'terminateNotificationProfile',
                type: {
                  name: 'Composite',
                  class_name: 'TerminateNotificationProfile'
                }
              }
            }
          }
        }
      end
    end
  end
end
