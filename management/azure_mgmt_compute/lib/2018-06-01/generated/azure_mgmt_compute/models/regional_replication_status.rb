# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2018_06_01
  module Models
    #
    # This is the regional replication status.
    #
    class RegionalReplicationStatus

      include MsRestAzure

      # @return [String] The region where the gallery image version is
      # published to.
      attr_accessor :region

      # @return [ReplicationState] This is the regional replication state.
      # Possible values include: 'Unknown', 'Replicating', 'Completed',
      # 'Failed'
      attr_accessor :state

      # @return [String] The details of the replication status.
      attr_accessor :details

      # @return [Integer] It indicates progress of the replication job.
      attr_accessor :progress


      #
      # Mapper for RegionalReplicationStatus class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RegionalReplicationStatus',
          type: {
            name: 'Composite',
            class_name: 'RegionalReplicationStatus',
            model_properties: {
              region: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'region',
                type: {
                  name: 'String'
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
              details: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'details',
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
              }
            }
          }
        }
      end
    end
  end
end
