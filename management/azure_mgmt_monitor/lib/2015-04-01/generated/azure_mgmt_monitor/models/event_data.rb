# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2015_04_01
  module Models
    #
    # The Azure event log entries are of type EventData
    #
    class EventData

      include MsRestAzure

      # @return [SenderAuthorization] The sender authorization information.
      attr_accessor :authorization

      # @return [Hash{String => String}] key value pairs to identify ARM
      # permissions.
      attr_accessor :claims

      # @return [String] the email address of the user who has performed the
      # operation, the UPN claim or SPN claim based on availability.
      attr_accessor :caller

      # @return [String] the description of the event.
      attr_accessor :description

      # @return [String] the Id of this event as required by ARM for RBAC. It
      # contains the EventDataID and a timestamp information.
      attr_accessor :id

      # @return [String] the event data Id. This is a unique identifier for an
      # event.
      attr_accessor :event_data_id

      # @return [String] the correlation Id, usually a GUID in the string
      # format. The correlation Id is shared among the events that belong to
      # the same uber operation.
      attr_accessor :correlation_id

      # @return [LocalizableString] the event name. This value should not be
      # confused with OperationName. For practical purposes, OperationName
      # might be more appealing to end users.
      attr_accessor :event_name

      # @return [LocalizableString] the event category.
      attr_accessor :category

      # @return [HttpRequestInfo] the HTTP request info. Usually includes the
      # 'clientRequestId', 'clientIpAddress' (IP address of the user who
      # initiated the event) and 'method' (HTTP method e.g. PUT).
      attr_accessor :http_request

      # @return [EventLevel] the event level. Possible values include:
      # 'Critical', 'Error', 'Warning', 'Informational', 'Verbose'
      attr_accessor :level

      # @return [String] the resource group name of the impacted resource.
      attr_accessor :resource_group_name

      # @return [LocalizableString] the resource provider name of the impacted
      # resource.
      attr_accessor :resource_provider_name

      # @return [String] the resource uri that uniquely identifies the resource
      # that caused this event.
      attr_accessor :resource_id

      # @return [LocalizableString] the resource type
      attr_accessor :resource_type

      # @return [String] It is usually a GUID shared among the events
      # corresponding to single operation. This value should not be confused
      # with EventName.
      attr_accessor :operation_id

      # @return [LocalizableString] the operation name.
      attr_accessor :operation_name

      # @return [Hash{String => String}] the set of <Key, Value> pairs (usually
      # a Dictionary<String, String>) that includes details about the event.
      attr_accessor :properties

      # @return [LocalizableString] a string describing the status of the
      # operation. Some typical values are: Started, In progress, Succeeded,
      # Failed, Resolved.
      attr_accessor :status

      # @return [LocalizableString] the event sub status. Most of the time,
      # when included, this captures the HTTP status code of the REST call.
      # Common values are: OK (HTTP Status Code: 200), Created (HTTP Status
      # Code: 201), Accepted (HTTP Status Code: 202), No Content (HTTP Status
      # Code: 204), Bad Request(HTTP Status Code: 400), Not Found (HTTP Status
      # Code: 404), Conflict (HTTP Status Code: 409), Internal Server Error
      # (HTTP Status Code: 500), Service Unavailable (HTTP Status Code:503),
      # Gateway Timeout (HTTP Status Code: 504)
      attr_accessor :sub_status

      # @return [DateTime] the timestamp of when the event was generated by the
      # Azure service processing the request corresponding the event. It in ISO
      # 8601 format.
      attr_accessor :event_timestamp

      # @return [DateTime] the timestamp of when the event became available for
      # querying via this API. It is in ISO 8601 format. This value should not
      # be confused eventTimestamp. As there might be a delay between the
      # occurrence time of the event, and the time that the event is submitted
      # to the Azure logging infrastructure.
      attr_accessor :submission_timestamp

      # @return [String] the Azure subscription Id usually a GUID.
      attr_accessor :subscription_id

      # @return [String] the Azure tenant Id
      attr_accessor :tenant_id


      #
      # Mapper for EventData class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EventData',
          type: {
            name: 'Composite',
            class_name: 'EventData',
            model_properties: {
              authorization: {
                required: false,
                read_only: true,
                serialized_name: 'authorization',
                type: {
                  name: 'Composite',
                  class_name: 'SenderAuthorization'
                }
              },
              claims: {
                required: false,
                read_only: true,
                serialized_name: 'claims',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              caller: {
                required: false,
                read_only: true,
                serialized_name: 'caller',
                type: {
                  name: 'String'
                }
              },
              description: {
                required: false,
                read_only: true,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              event_data_id: {
                required: false,
                read_only: true,
                serialized_name: 'eventDataId',
                type: {
                  name: 'String'
                }
              },
              correlation_id: {
                required: false,
                read_only: true,
                serialized_name: 'correlationId',
                type: {
                  name: 'String'
                }
              },
              event_name: {
                required: false,
                read_only: true,
                serialized_name: 'eventName',
                type: {
                  name: 'Composite',
                  class_name: 'LocalizableString'
                }
              },
              category: {
                required: false,
                read_only: true,
                serialized_name: 'category',
                type: {
                  name: 'Composite',
                  class_name: 'LocalizableString'
                }
              },
              http_request: {
                required: false,
                read_only: true,
                serialized_name: 'httpRequest',
                type: {
                  name: 'Composite',
                  class_name: 'HttpRequestInfo'
                }
              },
              level: {
                required: false,
                read_only: true,
                serialized_name: 'level',
                type: {
                  name: 'Enum',
                  module: 'EventLevel'
                }
              },
              resource_group_name: {
                required: false,
                read_only: true,
                serialized_name: 'resourceGroupName',
                type: {
                  name: 'String'
                }
              },
              resource_provider_name: {
                required: false,
                read_only: true,
                serialized_name: 'resourceProviderName',
                type: {
                  name: 'Composite',
                  class_name: 'LocalizableString'
                }
              },
              resource_id: {
                required: false,
                read_only: true,
                serialized_name: 'resourceId',
                type: {
                  name: 'String'
                }
              },
              resource_type: {
                required: false,
                read_only: true,
                serialized_name: 'resourceType',
                type: {
                  name: 'Composite',
                  class_name: 'LocalizableString'
                }
              },
              operation_id: {
                required: false,
                read_only: true,
                serialized_name: 'operationId',
                type: {
                  name: 'String'
                }
              },
              operation_name: {
                required: false,
                read_only: true,
                serialized_name: 'operationName',
                type: {
                  name: 'Composite',
                  class_name: 'LocalizableString'
                }
              },
              properties: {
                required: false,
                read_only: true,
                serialized_name: 'properties',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              status: {
                required: false,
                read_only: true,
                serialized_name: 'status',
                type: {
                  name: 'Composite',
                  class_name: 'LocalizableString'
                }
              },
              sub_status: {
                required: false,
                read_only: true,
                serialized_name: 'subStatus',
                type: {
                  name: 'Composite',
                  class_name: 'LocalizableString'
                }
              },
              event_timestamp: {
                required: false,
                read_only: true,
                serialized_name: 'eventTimestamp',
                type: {
                  name: 'DateTime'
                }
              },
              submission_timestamp: {
                required: false,
                read_only: true,
                serialized_name: 'submissionTimestamp',
                type: {
                  name: 'DateTime'
                }
              },
              subscription_id: {
                required: false,
                read_only: true,
                serialized_name: 'subscriptionId',
                type: {
                  name: 'String'
                }
              },
              tenant_id: {
                required: false,
                read_only: true,
                serialized_name: 'tenantId',
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
