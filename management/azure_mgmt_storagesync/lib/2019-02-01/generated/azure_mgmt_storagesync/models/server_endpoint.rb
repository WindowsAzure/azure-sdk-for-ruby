# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageSync::Mgmt::V2019_02_01
  module Models
    #
    # Server Endpoint object.
    #
    class ServerEndpoint < ProxyResource

      include MsRestAzure

      # @return [String] Server Local path.
      attr_accessor :server_local_path

      # @return [Enum] Cloud Tiering. Possible values include: 'on', 'off'
      attr_accessor :cloud_tiering

      # @return [Integer] Level of free space to be maintained by Cloud Tiering
      # if it is enabled.
      attr_accessor :volume_free_space_percent

      # @return [Integer] Tier files older than days.
      attr_accessor :tier_files_older_than_days

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

      # @return [ServerEndpointSyncStatus] Server Endpoint sync status
      attr_accessor :sync_status

      # @return [Enum] Offline data transfer. Possible values include: 'on',
      # 'off'
      attr_accessor :offline_data_transfer

      # @return [String] Offline data transfer storage account resource ID
      attr_accessor :offline_data_transfer_storage_account_resource_id

      # @return [String] Offline data transfer storage account tenant ID
      attr_accessor :offline_data_transfer_storage_account_tenant_id

      # @return [String] Offline data transfer share name
      attr_accessor :offline_data_transfer_share_name


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
              tier_files_older_than_days: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.tierFilesOlderThanDays',
                constraints: {
                  InclusiveMaximum: 2147483647,
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
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              last_workflow_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.lastWorkflowId',
                type: {
                  name: 'String'
                }
              },
              last_operation_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.lastOperationName',
                type: {
                  name: 'String'
                }
              },
              sync_status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.syncStatus',
                type: {
                  name: 'Composite',
                  class_name: 'ServerEndpointSyncStatus'
                }
              },
              offline_data_transfer: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.offlineDataTransfer',
                type: {
                  name: 'String'
                }
              },
              offline_data_transfer_storage_account_resource_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.offlineDataTransferStorageAccountResourceId',
                type: {
                  name: 'String'
                }
              },
              offline_data_transfer_storage_account_tenant_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.offlineDataTransferStorageAccountTenantId',
                type: {
                  name: 'String'
                }
              },
              offline_data_transfer_share_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.offlineDataTransferShareName',
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
