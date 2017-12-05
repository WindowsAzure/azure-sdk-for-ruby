# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Model class for event details of a HyperVReplica E2A event.
    #
    class HyperVReplicaAzureEventDetails < EventProviderSpecificDetails

      include MsRestAzure


      def initialize
        @instanceType = "HyperVReplicaAzure"
      end

      attr_accessor :instanceType

      # @return [String] The container friendly name.
      attr_accessor :container_name

      # @return [String] The fabric friendly name.
      attr_accessor :fabric_name

      # @return [String] The remote container name.
      attr_accessor :remote_container_name


      #
      # Mapper for HyperVReplicaAzureEventDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HyperVReplicaAzure',
          type: {
            name: 'Composite',
            class_name: 'HyperVReplicaAzureEventDetails',
            model_properties: {
              instanceType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'instanceType',
                type: {
                  name: 'String'
                }
              },
              container_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'containerName',
                type: {
                  name: 'String'
                }
              },
              fabric_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fabricName',
                type: {
                  name: 'String'
                }
              },
              remote_container_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'remoteContainerName',
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
