# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2016_04_30_preview
  module Models
    #
    # Describes a reference to Key Vault Secret
    #
    class KeyVaultSecretReference

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The URL referencing a secret in a Key Vault.
      attr_accessor :secret_url

      # @return [SubResource] The relative URL of the Key Vault containing the
      # secret.
      attr_accessor :source_vault


      #
      # Mapper for KeyVaultSecretReference class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'KeyVaultSecretReference',
          type: {
            name: 'Composite',
            class_name: 'KeyVaultSecretReference',
            model_properties: {
              secret_url: {
                client_side_validation: true,
                required: true,
                serialized_name: 'secretUrl',
                type: {
                  name: 'String'
                }
              },
              source_vault: {
                client_side_validation: true,
                required: true,
                serialized_name: 'sourceVault',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              }
            }
          }
        }
      end
    end
  end
end
