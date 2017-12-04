# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2016_05_15
  module Models
    #
    # Properties of a user's secret store.
    #
    class UserSecretStore

      include MsRestAzure

      # @return [String] The URI of the user's Key vault.
      attr_accessor :key_vault_uri

      # @return [String] The ID of the user's Key vault.
      attr_accessor :key_vault_id


      #
      # Mapper for UserSecretStore class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UserSecretStore',
          type: {
            name: 'Composite',
            class_name: 'UserSecretStore',
            model_properties: {
              key_vault_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'keyVaultUri',
                type: {
                  name: 'String'
                }
              },
              key_vault_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'keyVaultId',
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
