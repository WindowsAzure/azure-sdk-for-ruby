# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Http logs configuration.
    #
    class HttpLogsConfig

      include MsRestAzure

      include MsRest::JSONable
      # @return [FileSystemHttpLogsConfig] Http logs to file system
      # configuration.
      attr_accessor :file_system

      # @return [AzureBlobStorageHttpLogsConfig] Http logs to azure blob
      # storage configuration.
      attr_accessor :azure_blob_storage


      #
      # Mapper for HttpLogsConfig class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'HttpLogsConfig',
          type: {
            name: 'Composite',
            class_name: 'HttpLogsConfig',
            model_properties: {
              file_system: {
                required: false,
                serialized_name: 'fileSystem',
                type: {
                  name: 'Composite',
                  class_name: 'FileSystemHttpLogsConfig'
                }
              },
              azure_blob_storage: {
                required: false,
                serialized_name: 'azureBlobStorage',
                type: {
                  name: 'Composite',
                  class_name: 'AzureBlobStorageHttpLogsConfig'
                }
              }
            }
          }
        }
      end
    end
  end
end
