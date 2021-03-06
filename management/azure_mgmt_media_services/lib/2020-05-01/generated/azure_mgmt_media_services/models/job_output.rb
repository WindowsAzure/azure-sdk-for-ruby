# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2020_05_01
  module Models
    #
    # Describes all the properties of a JobOutput.
    #
    class JobOutput

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["#Microsoft.Media.JobOutputAsset"] = "JobOutputAsset"

      def initialize
        @odatatype = "JobOutput"
      end

      attr_accessor :odatatype

      # @return [JobError] If the JobOutput is in the Error state, it contains
      # the details of the error.
      attr_accessor :error

      # @return [JobState] Describes the state of the JobOutput. Possible
      # values include: 'Canceled', 'Canceling', 'Error', 'Finished',
      # 'Processing', 'Queued', 'Scheduled'
      attr_accessor :state

      # @return [Integer] If the JobOutput is in a Processing state, this
      # contains the Job completion percentage. The value is an estimate and
      # not intended to be used to predict Job completion times. To determine
      # if the JobOutput is complete, use the State property.
      attr_accessor :progress

      # @return [String] A label that is assigned to a JobOutput in order to
      # help uniquely identify it. This is useful when your Transform has more
      # than one TransformOutput, whereby your Job has more than one JobOutput.
      # In such cases, when you submit the Job, you will add two or more
      # JobOutputs, in the same order as TransformOutputs in the Transform.
      # Subsequently, when you retrieve the Job, either through events or on a
      # GET request, you can use the label to easily identify the JobOutput. If
      # a label is not provided, a default value of
      # '{presetName}_{outputIndex}' will be used, where the preset name is the
      # name of the preset in the corresponding TransformOutput and the output
      # index is the relative index of the this JobOutput within the Job. Note
      # that this index is the same as the relative index of the corresponding
      # TransformOutput within its Transform.
      attr_accessor :label

      # @return [DateTime] The UTC date and time at which this Job Output began
      # processing.
      attr_accessor :start_time

      # @return [DateTime] The UTC date and time at which this Job Output
      # finished processing.
      attr_accessor :end_time


      #
      # Mapper for JobOutput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'JobOutput',
          type: {
            name: 'Composite',
            polymorphic_discriminator: '@odata.type',
            uber_parent: 'JobOutput',
            class_name: 'JobOutput',
            model_properties: {
              error: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'error',
                type: {
                  name: 'Composite',
                  class_name: 'JobError'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'state',
                type: {
                  name: 'String'
                }
              },
              progress: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'progress',
                type: {
                  name: 'Number'
                }
              },
              label: {
                client_side_validation: true,
                required: false,
                serialized_name: 'label',
                type: {
                  name: 'String'
                }
              },
              start_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'endTime',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
