# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2017_03_01_preview
  module Models
    #
    # The target that a job execution is executed on.
    #
    class JobExecutionTarget

      include MsRestAzure

      # @return [JobTargetType] The type of the target. Possible values
      # include: 'TargetGroup', 'SqlDatabase', 'SqlElasticPool', 'SqlShardMap',
      # 'SqlServer'
      attr_accessor :type

      # @return [String] The server name.
      attr_accessor :server_name

      # @return [String] The database name.
      attr_accessor :database_name


      #
      # Mapper for JobExecutionTarget class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'JobExecutionTarget',
          type: {
            name: 'Composite',
            class_name: 'JobExecutionTarget',
            model_properties: {
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              server_name: {
                required: false,
                read_only: true,
                serialized_name: 'serverName',
                type: {
                  name: 'String'
                }
              },
              database_name: {
                required: false,
                read_only: true,
                serialized_name: 'databaseName',
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