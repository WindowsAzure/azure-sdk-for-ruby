# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageSync::Mgmt::V2018_04_02
  module Models
    #
    # Server Endpoint object.
    #
    class ServerEndpoint < Resource

      include MsRestAzure

      # @return [String] Server Local path.
      attr_accessor :server_local_path

      # @return [Enum] Cloud Tiering. Possible values include: 'on', 'off'
      attr_accessor :cloud_tiering

      # @return [Integer] Level of free space to be maintained by Cloud Tiering
      # if it is enabled.
      attr_accessor :volume_free_space_percent

      # @return [String] Friendly Name
      attr_accessor :friendly_name

      # @return [String] Server Resource Id.
      attr_accessor :server_resource_id

      # @return [String] ServerEndpoint Provisioning State
      attr_accessor :provisioning_state

      # @return [String] ServerEndpoint lastWorkflowId
      attr_accessor :last_workflow_id

      # @return [String] Resource Last Operation Name
      attr_accessor :last_operation_name

      # @return Sync Health Status
      attr_accessor :sync_status


      #
      # Mapper for ServerEndpoint class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServerEndpoint',
          type: {
            name: 'Composite',
            class_name: 'ServerEndpoint',
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
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              server_local_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.serverLocalPath',
                type: {
                  name: 'String'
                }
              },
              cloud_tiering: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.cloudTiering',
                type: {
                  name: 'String'
                }
              },
              volume_free_space_percent: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.volumeFreeSpacePercent',
                constraints: {
                  InclusiveMaximum: 100,
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              },
              friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.friendlyName',
                type: {
                  name: 'String'
                }
              },
              server_resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.serverResourceId',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              last_workflow_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.lastWorkflowId',
                type: {
                  name: 'String'
                }
              },
              last_operation_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.lastOperationName',
                type: {
                  name: 'String'
                }
              },
              sync_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.syncStatus',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
