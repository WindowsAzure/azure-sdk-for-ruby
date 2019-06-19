# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2016_06_01
  module Models
    #
    # The workflow run action.
    #
    class WorkflowRunAction < SubResource

      include MsRestAzure

      # @return [DateTime] Gets the start time.
      attr_accessor :start_time

      # @return [DateTime] Gets the end time.
      attr_accessor :end_time

      # @return [WorkflowStatus] Gets the status. Possible values include:
      # 'NotSpecified', 'Paused', 'Running', 'Waiting', 'Succeeded', 'Skipped',
      # 'Suspended', 'Cancelled', 'Failed', 'Faulted', 'TimedOut', 'Aborted',
      # 'Ignored'
      attr_accessor :status

      # @return [String] Gets the code.
      attr_accessor :code

      # @return Gets the error.
      attr_accessor :error

      # @return [String] Gets the tracking id.
      attr_accessor :tracking_id

      # @return [Correlation] The correlation properties.
      attr_accessor :correlation

      # @return [ContentLink] Gets the link to inputs.
      attr_accessor :inputs_link

      # @return [ContentLink] Gets the link to outputs.
      attr_accessor :outputs_link

      # @return Gets the tracked properties.
      attr_accessor :tracked_properties

      # @return [Array<RetryHistory>] Gets the retry histories.
      attr_accessor :retry_history

      # @return [String] Gets the workflow run action name.
      attr_accessor :name

      # @return [String] Gets the workflow run action type.
      attr_accessor :type


      #
      # Mapper for WorkflowRunAction class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'WorkflowRunAction',
          type: {
            name: 'Composite',
            class_name: 'WorkflowRunAction',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              start_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.endTime',
                type: {
                  name: 'DateTime'
                }
              },
              status: {
                required: false,
                read_only: true,
                serialized_name: 'properties.status',
                type: {
                  name: 'Enum',
                  module: 'WorkflowStatus'
                }
              },
              code: {
                required: false,
                read_only: true,
                serialized_name: 'properties.code',
                type: {
                  name: 'String'
                }
              },
              error: {
                required: false,
                read_only: true,
                serialized_name: 'properties.error',
                type: {
                  name: 'Object'
                }
              },
              tracking_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.trackingId',
                type: {
                  name: 'String'
                }
              },
              correlation: {
                required: false,
                serialized_name: 'properties.correlation',
                type: {
                  name: 'Composite',
                  class_name: 'Correlation'
                }
              },
              inputs_link: {
                required: false,
                read_only: true,
                serialized_name: 'properties.inputsLink',
                type: {
                  name: 'Composite',
                  class_name: 'ContentLink'
                }
              },
              outputs_link: {
                required: false,
                read_only: true,
                serialized_name: 'properties.outputsLink',
                type: {
                  name: 'Composite',
                  class_name: 'ContentLink'
                }
              },
              tracked_properties: {
                required: false,
                read_only: true,
                serialized_name: 'properties.trackedProperties',
                type: {
                  name: 'Object'
                }
              },
              retry_history: {
                required: false,
                serialized_name: 'properties.retryHistory',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'RetryHistoryElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RetryHistory'
                      }
                  }
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
              }
            }
          }
        }
      end
    end
  end
end
