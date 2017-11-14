# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Automation::Mgmt::V2015_10_31
  module Models
    #
    # Definition of the Dsc Compilation job.
    #
    class DscCompilationJob

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Gets the id of the resource.
      attr_accessor :id

      # @return [DscConfigurationAssociationProperty] Gets or sets the
      # configuration.
      attr_accessor :configuration

      # @return [String] Gets the compilation job started by.
      attr_accessor :started_by

      # @return Gets the id of the job.
      attr_accessor :job_id

      # @return [DateTime] Gets the creation time of the job.
      attr_accessor :creation_time

      # @return [JobStatus] Gets or sets the status of the job. Possible values
      # include: 'New', 'Activating', 'Running', 'Completed', 'Failed',
      # 'Stopped', 'Blocked', 'Suspended', 'Disconnected', 'Suspending',
      # 'Stopping', 'Resuming', 'Removing'
      attr_accessor :status

      # @return [String] Gets or sets the status details of the job.
      attr_accessor :status_details

      # @return [DateTime] Gets the start time of the job.
      attr_accessor :start_time

      # @return [DateTime] Gets the end time of the job.
      attr_accessor :end_time

      # @return [String] Gets the exception of the job.
      attr_accessor :exception

      # @return [DateTime] Gets the last modified time of the job.
      attr_accessor :last_modified_time

      # @return [DateTime] Gets the last status modified time of the job.
      attr_accessor :last_status_modified_time

      # @return [Hash{String => String}] Gets or sets the parameters of the
      # job.
      attr_accessor :parameters


      #
      # Mapper for DscCompilationJob class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DscCompilationJob',
          type: {
            name: 'Composite',
            class_name: 'DscCompilationJob',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.configuration',
                type: {
                  name: 'Composite',
                  class_name: 'DscConfigurationAssociationProperty'
                }
              },
              started_by: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.startedBy',
                type: {
                  name: 'String'
                }
              },
              job_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.jobId',
                type: {
                  name: 'String'
                }
              },
              creation_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.creationTime',
                type: {
                  name: 'DateTime'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.status',
                type: {
                  name: 'String'
                }
              },
              status_details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.statusDetails',
                type: {
                  name: 'String'
                }
              },
              start_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.endTime',
                type: {
                  name: 'DateTime'
                }
              },
              exception: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.exception',
                type: {
                  name: 'String'
                }
              },
              last_modified_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.lastModifiedTime',
                type: {
                  name: 'DateTime'
                }
              },
              last_status_modified_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.lastStatusModifiedTime',
                type: {
                  name: 'DateTime'
                }
              },
              parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.parameters',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
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
