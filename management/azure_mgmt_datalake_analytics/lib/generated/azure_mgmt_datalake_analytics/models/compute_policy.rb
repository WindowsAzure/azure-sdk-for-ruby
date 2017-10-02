# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DataLakeAnalytics
  module Models
    #
    # The parameters used to create a new compute policy.
    #
    class ComputePolicy

      include MsRestAzure

      # @return [String] The name of the compute policy
      attr_accessor :name

      # @return The AAD object identifier for the entity to create a policy
      # for.
      attr_accessor :object_id

      # @return [AADObjectType] The type of AAD object the object identifier
      # refers to. Possible values include: 'User', 'Group', 'ServicePrincipal'
      attr_accessor :object_type

      # @return [Integer] The maximum degree of parallelism per job this user
      # can use to submit jobs.
      attr_accessor :max_degree_of_parallelism_per_job

      # @return [Integer] The minimum priority per job this user can use to
      # submit jobs.
      attr_accessor :min_priority_per_job


      #
      # Mapper for ComputePolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ComputePolicy',
          type: {
            name: 'Composite',
            class_name: 'ComputePolicy',
            model_properties: {
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              object_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.objectId',
                type: {
                  name: 'String'
                }
              },
              object_type: {
                required: false,
                read_only: true,
                serialized_name: 'properties.objectType',
                type: {
                  name: 'String'
                }
              },
              max_degree_of_parallelism_per_job: {
                required: false,
                serialized_name: 'properties.maxDegreeOfParallelismPerJob',
                constraints: {
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              },
              min_priority_per_job: {
                required: false,
                serialized_name: 'properties.minPriorityPerJob',
                constraints: {
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
