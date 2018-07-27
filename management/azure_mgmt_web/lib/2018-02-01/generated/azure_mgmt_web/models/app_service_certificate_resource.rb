# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2018_02_01
  module Models
    #
    # Key Vault container ARM resource for a certificate that is purchased
    # through Azure.
    #
    class AppServiceCertificateResource < Resource

      include MsRestAzure

      # @return [String] Key Vault resource Id.
      attr_accessor :key_vault_id

      # @return [String] Key Vault secret name.
      attr_accessor :key_vault_secret_name

      # @return [KeyVaultSecretStatus] Status of the Key Vault secret. Possible
      # values include: 'Initialized', 'WaitingOnCertificateOrder',
      # 'Succeeded', 'CertificateOrderFailed',
      # 'OperationNotPermittedOnKeyVault',
      # 'AzureServiceUnauthorizedToAccessKeyVault', 'KeyVaultDoesNotExist',
      # 'KeyVaultSecretDoesNotExist', 'UnknownError', 'ExternalPrivateKey',
      # 'Unknown'
      attr_accessor :provisioning_state


      #
      # Mapper for AppServiceCertificateResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AppServiceCertificateResource',
          type: {
            name: 'Composite',
            class_name: 'AppServiceCertificateResource',
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
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
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
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              key_vault_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.keyVaultId',
                type: {
                  name: 'String'
                }
              },
              key_vault_secret_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.keyVaultSecretName',
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
                  name: 'Enum',
                  module: 'KeyVaultSecretStatus'
                }
              }
            }
          }
        }
      end
    end
  end
end
