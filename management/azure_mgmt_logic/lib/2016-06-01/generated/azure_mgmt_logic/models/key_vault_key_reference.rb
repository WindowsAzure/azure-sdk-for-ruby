# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2016_06_01
  module Models
    #
    # The reference to the key vault key.
    #
    class KeyVaultKeyReference

      include MsRestAzure

      # @return [KeyVaultKeyReferenceKeyVault] The key vault reference.
      attr_accessor :key_vault

      # @return [String] The private key name in key vault.
      attr_accessor :key_name

      # @return [String] The private key version in key vault.
      attr_accessor :key_version


      #
      # Mapper for KeyVaultKeyReference class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'KeyVaultKeyReference',
          type: {
            name: 'Composite',
            class_name: 'KeyVaultKeyReference',
            model_properties: {
              key_vault: {
                client_side_validation: true,
                required: true,
                serialized_name: 'keyVault',
                type: {
                  name: 'Composite',
                  class_name: 'KeyVaultKeyReferenceKeyVault'
                }
              },
              key_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'keyName',
                type: {
                  name: 'String'
                }
              },
              key_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'keyVersion',
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
