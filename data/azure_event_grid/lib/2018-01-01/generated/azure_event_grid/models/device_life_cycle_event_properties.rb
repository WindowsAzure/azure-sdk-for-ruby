# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::V2018_01_01
  module Models
    #
    # Schema of the Data property of an EventGridEvent for a device life cycle
    # event (DeviceCreated, DeviceDeleted).
    #
    class DeviceLifeCycleEventProperties

      include MsRestAzure

      # @return [String] The unique identifier of the device. This
      # case-sensitive string can be up to 128 characters long, and supports
      # ASCII 7-bit alphanumeric characters plus the following special
      # characters: - : . + % _ &#35; * ? ! ( ) , = @ ; $ '.
      attr_accessor :device_id

      # @return [String] Name of the IoT Hub where the device was created or
      # deleted.
      attr_accessor :hub_name

      # @return [String] The event type specified for this operation by the IoT
      # Hub.
      attr_accessor :op_type

      # @return [String] The ISO8601 timestamp of the operation.
      attr_accessor :operation_timestamp

      # @return [DeviceTwinInfo] Information about the device twin, which is
      # the cloud represenation of application device metadata.
      attr_accessor :twin


      #
      # Mapper for DeviceLifeCycleEventProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DeviceLifeCycleEventProperties',
          type: {
            name: 'Composite',
            class_name: 'DeviceLifeCycleEventProperties',
            model_properties: {
              device_id: {
                required: false,
                serialized_name: 'deviceId',
                type: {
                  name: 'String'
                }
              },
              hub_name: {
                required: false,
                serialized_name: 'hubName',
                type: {
                  name: 'String'
                }
              },
              op_type: {
                required: false,
                serialized_name: 'opType',
                type: {
                  name: 'String'
                }
              },
              operation_timestamp: {
                required: false,
                serialized_name: 'operationTimestamp',
                type: {
                  name: 'String'
                }
              },
              twin: {
                required: false,
                serialized_name: 'twin',
                type: {
                  name: 'Composite',
                  class_name: 'DeviceTwinInfo'
                }
              }
            }
          }
        }
      end
    end
  end
end
