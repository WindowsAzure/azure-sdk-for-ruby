# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10
  module Models
    #
    # Failover details for a replication protected item.
    #
    class FailoverReplicationProtectedItemDetails

      include MsRestAzure

      # @return [String] The name.
      attr_accessor :name

      # @return [String] The friendly name.
      attr_accessor :friendly_name

      # @return [String] The test Vm name.
      attr_accessor :test_vm_name

      # @return [String] The test Vm friendly name.
      attr_accessor :test_vm_friendly_name

      # @return [String] The network connection status.
      attr_accessor :network_connection_status

      # @return [String] The network friendly name.
      attr_accessor :network_friendly_name

      # @return [String] The network subnet.
      attr_accessor :subnet

      # @return [String] The recovery point Id.
      attr_accessor :recovery_point_id

      # @return [DateTime] The recovery point time.
      attr_accessor :recovery_point_time


      #
      # Mapper for FailoverReplicationProtectedItemDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FailoverReplicationProtectedItemDetails',
          type: {
            name: 'Composite',
            class_name: 'FailoverReplicationProtectedItemDetails',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'friendlyName',
                type: {
                  name: 'String'
                }
              },
              test_vm_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'testVmName',
                type: {
                  name: 'String'
                }
              },
              test_vm_friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'testVmFriendlyName',
                type: {
                  name: 'String'
                }
              },
              network_connection_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'networkConnectionStatus',
                type: {
                  name: 'String'
                }
              },
              network_friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'networkFriendlyName',
                type: {
                  name: 'String'
                }
              },
              subnet: {
                client_side_validation: true,
                required: false,
                serialized_name: 'subnet',
                type: {
                  name: 'String'
                }
              },
              recovery_point_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recoveryPointId',
                type: {
                  name: 'String'
                }
              },
              recovery_point_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recoveryPointTime',
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
