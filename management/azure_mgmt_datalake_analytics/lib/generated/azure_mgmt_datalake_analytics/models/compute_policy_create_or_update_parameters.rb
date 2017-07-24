# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DataLakeAnalytics
  module Models
    #
    # The parameters used to create a new compute policy.
    #
    class ComputePolicyCreateOrUpdateParameters
      # @return The AAD object identifier for the entity to create a policy
      # for.
      attr_accessor :object_id

      # @return [AADObjectType] The type of AAD object the object identifier
      # refers to. Possible values include: 'User', 'Group', 'ServicePrincipal'
      attr_accessor :object_type

      # @return [Integer] The maximum degree of parallelism per job this user
      # can use to submit jobs. This property, the min priority per job
      # property, or both must be passed.
      attr_accessor :max_degree_of_parallelism_per_job

      # @return [Integer] The minimum priority per job this user can use to
      # submit jobs. This property, the max degree of parallelism per job
      # property, or both must be passed.
      attr_accessor :min_priority_per_job


      #
      # Mapper for ComputePolicyCreateOrUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ComputePolicyCreateOrUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'ComputePolicyCreateOrUpdateParameters',
            model_properties: {
              object_id: {
                required: true,
                serialized_name: 'properties.objectId',
                type: {
                  name: 'String'
                }
              },
              object_type: {
                required: true,
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
