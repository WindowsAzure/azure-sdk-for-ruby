# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2019_01_01
  module Models
    #
    # Information about the storage blob based dead letter destination.
    #
    class StorageBlobDeadLetterDestination < DeadLetterDestination

      include MsRestAzure


      def initialize
        @endpointType = "StorageBlob"
      end

      attr_accessor :endpointType

      # @return [String] The Azure Resource ID of the storage account that is
      # the destination of the deadletter events. For example:
      # /subscriptions/{AzureSubscriptionId}/resourceGroups/{ResourceGroupName}/providers/microsoft.Storage/storageAccounts/{StorageAccountName}
      attr_accessor :resource_id

      # @return [String] The name of the Storage blob container that is the
      # destination of the deadletter events
      attr_accessor :blob_container_name


      #
      # Mapper for StorageBlobDeadLetterDestination class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'StorageBlob',
          type: {
            name: 'Composite',
            class_name: 'StorageBlobDeadLetterDestination',
            model_properties: {
              endpointType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'endpointType',
                type: {
                  name: 'String'
                }
              },
              resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.resourceId',
                type: {
                  name: 'String'
                }
              },
              blob_container_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.blobContainerName',
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
