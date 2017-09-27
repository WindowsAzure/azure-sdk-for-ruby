# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Scheduler
  module Models
    #
    # Model object.
    #
    #
    class JobAction

      include MsRestAzure

      include MsRest::JSONable
      # @return [JobActionType] Gets or sets the job action type. Possible
      # values include: 'Http', 'Https', 'StorageQueue', 'ServiceBusQueue',
      # 'ServiceBusTopic'
      attr_accessor :type

      # @return [HttpRequest] Gets or sets the http requests.
      attr_accessor :request

      # @return [StorageQueueMessage] Gets or sets the storage queue message.
      attr_accessor :queue_message

      # @return [ServiceBusQueueMessage] Gets or sets the service bus queue
      # message.
      attr_accessor :service_bus_queue_message

      # @return [ServiceBusTopicMessage] Gets or sets the service bus topic
      # message.
      attr_accessor :service_bus_topic_message

      # @return [RetryPolicy] Gets or sets the retry policy.
      attr_accessor :retry_policy

      # @return [JobErrorAction] Gets or sets the error action.
      attr_accessor :error_action


      #
      # Mapper for JobAction class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'JobAction',
          type: {
            name: 'Composite',
            class_name: 'JobAction',
            model_properties: {
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'Enum',
                  module: 'JobActionType'
                }
              },
              request: {
                required: false,
                serialized_name: 'request',
                type: {
                  name: 'Composite',
                  class_name: 'HttpRequest'
                }
              },
              queue_message: {
                required: false,
                serialized_name: 'queueMessage',
                type: {
                  name: 'Composite',
                  class_name: 'StorageQueueMessage'
                }
              },
              service_bus_queue_message: {
                required: false,
                serialized_name: 'serviceBusQueueMessage',
                type: {
                  name: 'Composite',
                  class_name: 'ServiceBusQueueMessage'
                }
              },
              service_bus_topic_message: {
                required: false,
                serialized_name: 'serviceBusTopicMessage',
                type: {
                  name: 'Composite',
                  class_name: 'ServiceBusTopicMessage'
                }
              },
              retry_policy: {
                required: false,
                serialized_name: 'retryPolicy',
                type: {
                  name: 'Composite',
                  class_name: 'RetryPolicy'
                }
              },
              error_action: {
                required: false,
                serialized_name: 'errorAction',
                type: {
                  name: 'Composite',
                  class_name: 'JobErrorAction'
                }
              }
            }
          }
        }
      end
    end
  end
end
