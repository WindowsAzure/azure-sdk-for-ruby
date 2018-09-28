# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2018_02_01
  module Models
    #
    # The encryption settings on the storage account.
    #
    class Encryption

      include MsRestAzure

      # @return [EncryptionServices] List of services which support encryption.
      attr_accessor :services

      # @return [KeySource] The encryption keySource (provider). Possible
      # values (case-insensitive):  Microsoft.Storage, Microsoft.Keyvault.
      # Possible values include: 'Microsoft.Storage', 'Microsoft.Keyvault'.
      # Default value: 'Microsoft.Storage' .
      attr_accessor :key_source

      # @return [KeyVaultProperties] Properties provided by key vault.
      attr_accessor :key_vault_properties


      #
      # Mapper for Encryption class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Encryption',
          type: {
            name: 'Composite',
            class_name: 'Encryption',
            model_properties: {
              services: {
                required: false,
                serialized_name: 'services',
                type: {
                  name: 'Composite',
                  class_name: 'EncryptionServices'
                }
              },
              key_source: {
                required: true,
                serialized_name: 'keySource',
                default_value: 'Microsoft.Storage',
                type: {
                  name: 'String'
                }
              },
              key_vault_properties: {
                required: false,
                serialized_name: 'keyvaultproperties',
                type: {
                  name: 'Composite',
                  class_name: 'KeyVaultProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
