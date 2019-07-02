# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2018_09_15
  module Models
    #
    # The contents of a shutdown notification. Webhooks can use this type to
    # deserialize the request body when they get notified of an imminent
    # shutdown.
    #
    class ShutdownNotificationContent

      include MsRestAzure

      # @return [String] The URL to skip auto-shutdown.
      attr_accessor :skip_url

      # @return [String] The URL to delay shutdown by 60 minutes.
      attr_accessor :delay_url60

      # @return [String] The URL to delay shutdown by 2 hours.
      attr_accessor :delay_url120

      # @return [String] The virtual machine to be shut down.
      attr_accessor :vm_name

      # @return [String] The GUID for the virtual machine to be shut down.
      attr_accessor :guid

      # @return [String] The owner of the virtual machine.
      attr_accessor :owner

      # @return [String] The URL of the virtual machine.
      attr_accessor :vm_url

      # @return [String] Minutes remaining until shutdown
      attr_accessor :minutes_until_shutdown

      # @return [String] The event for which a notification will be sent.
      attr_accessor :event_type

      # @return [String] The text for the notification.
      attr_accessor :text

      # @return [String] The subscription ID for the schedule.
      attr_accessor :subscription_id

      # @return [String] The resource group name for the schedule.
      attr_accessor :resource_group_name

      # @return [String] The lab for the schedule.
      attr_accessor :lab_name


      #
      # Mapper for ShutdownNotificationContent class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ShutdownNotificationContent',
          type: {
            name: 'Composite',
            class_name: 'ShutdownNotificationContent',
            model_properties: {
              skip_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'skipUrl',
                type: {
                  name: 'String'
                }
              },
              delay_url60: {
                client_side_validation: true,
                required: false,
                serialized_name: 'delayUrl60',
                type: {
                  name: 'String'
                }
              },
              delay_url120: {
                client_side_validation: true,
                required: false,
                serialized_name: 'delayUrl120',
                type: {
                  name: 'String'
                }
              },
              vm_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vmName',
                type: {
                  name: 'String'
                }
              },
              guid: {
                client_side_validation: true,
                required: false,
                serialized_name: 'guid',
                type: {
                  name: 'String'
                }
              },
              owner: {
                client_side_validation: true,
                required: false,
                serialized_name: 'owner',
                type: {
                  name: 'String'
                }
              },
              vm_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vmUrl',
                type: {
                  name: 'String'
                }
              },
              minutes_until_shutdown: {
                client_side_validation: true,
                required: false,
                serialized_name: 'minutesUntilShutdown',
                type: {
                  name: 'String'
                }
              },
              event_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'eventType',
                type: {
                  name: 'String'
                }
              },
              text: {
                client_side_validation: true,
                required: false,
                serialized_name: 'text',
                type: {
                  name: 'String'
                }
              },
              subscription_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'subscriptionId',
                type: {
                  name: 'String'
                }
              },
              resource_group_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resourceGroupName',
                type: {
                  name: 'String'
                }
              },
              lab_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'labName',
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
