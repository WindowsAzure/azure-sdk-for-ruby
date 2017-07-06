# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StreamAnalytics
  module Models
    #
    # Describes a Service Bus Topic data source.
    #
    class ServiceBusTopicOutputDataSource < OutputDataSource

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @type = "Microsoft.ServiceBus/Topic"
      end

      attr_accessor :type

      # @return [String] The namespace that is associated with the desired
      # Event Hub, Service Bus Queue, Service Bus Topic, etc. Required on PUT
      # (CreateOrReplace) requests.
      attr_accessor :service_bus_namespace

      # @return [String] The shared access policy name for the Event Hub,
      # Service Bus Queue, Service Bus Topic, etc. Required on PUT
      # (CreateOrReplace) requests.
      attr_accessor :shared_access_policy_name

      # @return [String] The shared access policy key for the specified shared
      # access policy. Required on PUT (CreateOrReplace) requests.
      attr_accessor :shared_access_policy_key

      # @return [String] The name of the Service Bus Topic. Required on PUT
      # (CreateOrReplace) requests.
      attr_accessor :topic_name

      # @return [Array<String>] A string array of the names of output columns
      # to be attached to Service Bus messages as custom properties.
      attr_accessor :property_columns


      #
      # Mapper for ServiceBusTopicOutputDataSource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Microsoft.ServiceBus/Topic',
          type: {
            name: 'Composite',
            class_name: 'ServiceBusTopicOutputDataSource',
            model_properties: {
              type: {
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              service_bus_namespace: {
                required: false,
                serialized_name: 'properties.serviceBusNamespace',
                type: {
                  name: 'String'
                }
              },
              shared_access_policy_name: {
                required: false,
                serialized_name: 'properties.sharedAccessPolicyName',
                type: {
                  name: 'String'
                }
              },
              shared_access_policy_key: {
                required: false,
                serialized_name: 'properties.sharedAccessPolicyKey',
                type: {
                  name: 'String'
                }
              },
              topic_name: {
                required: false,
                serialized_name: 'properties.topicName',
                type: {
                  name: 'String'
                }
              },
              property_columns: {
                required: false,
                serialized_name: 'properties.propertyColumns',
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
              }
            }
          }
        }
      end
    end
  end
end
