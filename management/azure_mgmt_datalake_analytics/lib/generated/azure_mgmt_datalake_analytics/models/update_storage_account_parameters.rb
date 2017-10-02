# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DataLakeAnalytics
  module Models
    #
    # Storage account parameters for a storage account being updated in a Data
    # Lake Analytics account.
    #
    class UpdateStorageAccountParameters

      include MsRestAzure

      # @return [String] the updated access key associated with this Azure
      # Storage account that will be used to connect to it.
      attr_accessor :access_key

      # @return [String] the optional suffix for the storage account.
      attr_accessor :suffix


      #
      # Mapper for UpdateStorageAccountParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'UpdateStorageAccountParameters',
          type: {
            name: 'Composite',
            class_name: 'UpdateStorageAccountParameters',
            model_properties: {
              access_key: {
                required: false,
                serialized_name: 'properties.accessKey',
                type: {
                  name: 'String'
                }
              },
              suffix: {
                required: false,
                serialized_name: 'properties.suffix',
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
