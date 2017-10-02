# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ServiceBus
  module Models
    #
    # Single item in List or Get Event Hub operation
    #
    class Eventhub < Resource

      include MsRestAzure

      # @return [Array<String>] Current number of shards on the Event Hub.
      attr_accessor :partition_ids

      # @return [DateTime] Exact time the Event Hub was created.
      attr_accessor :created_at

      # @return [DateTime] The exact time the message was updated.
      attr_accessor :updated_at

      # @return [Integer] Number of days to retain the events for this Event
      # Hub, value should be 1 to 7 days
      attr_accessor :message_retention_in_days

      # @return [Integer] Number of partitions created for the Event Hub,
      # allowed values are from 1 to 32 partitions.
      attr_accessor :partition_count

      # @return [EntityStatus] Enumerates the possible values for the status of
      # the Event Hub. Possible values include: 'Active', 'Disabled',
      # 'Restoring', 'SendDisabled', 'ReceiveDisabled', 'Creating', 'Deleting',
      # 'Renaming', 'Unknown'
      attr_accessor :status

      # @return [CaptureDescription] Properties of capture description
      attr_accessor :capture_description


      #
      # Mapper for Eventhub class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Eventhub',
          type: {
            name: 'Composite',
            class_name: 'Eventhub',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              partition_ids: {
                required: false,
                read_only: true,
                serialized_name: 'properties.partitionIds',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              created_at: {
                required: false,
                read_only: true,
                serialized_name: 'properties.createdAt',
                type: {
                  name: 'DateTime'
                }
              },
              updated_at: {
                required: false,
                read_only: true,
                serialized_name: 'properties.updatedAt',
                type: {
                  name: 'DateTime'
                }
              },
              message_retention_in_days: {
                required: false,
                serialized_name: 'properties.messageRetentionInDays',
                constraints: {
                  InclusiveMaximum: 7,
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              },
              partition_count: {
                required: false,
                serialized_name: 'properties.partitionCount',
                constraints: {
                  InclusiveMaximum: 32,
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              },
              status: {
                required: false,
                serialized_name: 'properties.status',
                type: {
                  name: 'Enum',
                  module: 'EntityStatus'
                }
              },
              capture_description: {
                required: false,
                serialized_name: 'properties.captureDescription',
                type: {
                  name: 'Composite',
                  class_name: 'CaptureDescription'
                }
              }
            }
          }
        }
      end
    end
  end
end
