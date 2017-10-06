# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ServiceFabric
  module Models
    #
    # Diagnostics storage account config
    #
    class DiagnosticsStorageAccountConfig

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Diagnostics storage account name
      attr_accessor :storage_account_name

      # @return [String] Protected Diagnostics storage key name
      attr_accessor :protected_account_key_name

      # @return [String] Diagnostics storage account blob endpoint
      attr_accessor :blob_endpoint

      # @return [String] Diagnostics storage account queue endpoint
      attr_accessor :queue_endpoint

      # @return [String] Diagnostics storage account table endpoint
      attr_accessor :table_endpoint


      #
      # Mapper for DiagnosticsStorageAccountConfig class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DiagnosticsStorageAccountConfig',
          type: {
            name: 'Composite',
            class_name: 'DiagnosticsStorageAccountConfig',
            model_properties: {
              storage_account_name: {
                required: true,
                serialized_name: 'storageAccountName',
                type: {
                  name: 'String'
                }
              },
              protected_account_key_name: {
                required: true,
                serialized_name: 'protectedAccountKeyName',
                type: {
                  name: 'String'
                }
              },
              blob_endpoint: {
                required: true,
                serialized_name: 'blobEndpoint',
                type: {
                  name: 'String'
                }
              },
              queue_endpoint: {
                required: true,
                serialized_name: 'queueEndpoint',
                type: {
                  name: 'String'
                }
              },
              table_endpoint: {
                required: true,
                serialized_name: 'tableEndpoint',
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
