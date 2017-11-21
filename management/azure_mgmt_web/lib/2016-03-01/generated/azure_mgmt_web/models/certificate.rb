# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_03_01
  module Models
    #
    # SSL certificate for an app.
    #
    class Certificate < Resource

      include MsRestAzure

      # @return [String] Friendly name of the certificate.
      attr_accessor :friendly_name

      # @return [String] Subject name of the certificate.
      attr_accessor :subject_name

      # @return [Array<String>] Host names the certificate applies to.
      attr_accessor :host_names

      # @return [Array<Integer>] Pfx blob.
      attr_accessor :pfx_blob

      # @return [String] App name.
      attr_accessor :site_name

      # @return [String] Self link.
      attr_accessor :self_link

      # @return [String] Certificate issuer.
      attr_accessor :issuer

      # @return [DateTime] Certificate issue Date.
      attr_accessor :issue_date

      # @return [DateTime] Certificate expriration date.
      attr_accessor :expiration_date

      # @return [String] Certificate password.
      attr_accessor :password

      # @return [String] Certificate thumbprint.
      attr_accessor :thumbprint

      # @return [Boolean] Is the certificate valid?.
      attr_accessor :valid

      # @return [String] Raw bytes of .cer file
      attr_accessor :cer_blob

      # @return [String] Public key hash.
      attr_accessor :public_key_hash

      # @return [HostingEnvironmentProfile] Specification for the App Service
      # Environment to use for the certificate.
      attr_accessor :hosting_environment_profile

      # @return [String] Key Vault Csm resource Id.
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
      attr_accessor :key_vault_secret_status

      # @return [String] Region of the certificate.
      attr_accessor :geo_region

      # @return [String] Resource name of the certificate.
      attr_accessor :certificate_name

      # @return [String] Resource ID of the associated App Service plan,
      # formatted as:
      # "/subscriptions/{subscriptionID}/resourceGroups/{groupName}/providers/Microsoft.Web/serverfarms/{appServicePlanName}".
      attr_accessor :server_farm_id


      #
      # Mapper for Certificate class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Certificate',
          type: {
            name: 'Composite',
            class_name: 'Certificate',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              identity: {
                required: false,
                serialized_name: 'identity',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceIdentity'
                }
              },
              friendly_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.friendlyName',
                type: {
                  name: 'String'
                }
              },
              subject_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.subjectName',
                type: {
                  name: 'String'
                }
              },
              host_names: {
                required: false,
                serialized_name: 'properties.hostNames',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              pfx_blob: {
                required: false,
                serialized_name: 'properties.pfxBlob',
                type: {
                  name: 'ByteArray'
                }
              },
              site_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.siteName',
                type: {
                  name: 'String'
                }
              },
              self_link: {
                required: false,
                read_only: true,
                serialized_name: 'properties.selfLink',
                type: {
                  name: 'String'
                }
              },
              issuer: {
                required: false,
                read_only: true,
                serialized_name: 'properties.issuer',
                type: {
                  name: 'String'
                }
              },
              issue_date: {
                required: false,
                read_only: true,
                serialized_name: 'properties.issueDate',
                type: {
                  name: 'DateTime'
                }
              },
              expiration_date: {
                required: false,
                read_only: true,
                serialized_name: 'properties.expirationDate',
                type: {
                  name: 'DateTime'
                }
              },
              password: {
                required: false,
                serialized_name: 'properties.password',
                type: {
                  name: 'String'
                }
              },
              thumbprint: {
                required: false,
                read_only: true,
                serialized_name: 'properties.thumbprint',
                type: {
                  name: 'String'
                }
              },
              valid: {
                required: false,
                read_only: true,
                serialized_name: 'properties.valid',
                type: {
                  name: 'Boolean'
                }
              },
              cer_blob: {
                required: false,
                read_only: true,
                serialized_name: 'properties.cerBlob',
                type: {
                  name: 'String'
                }
              },
              public_key_hash: {
                required: false,
                read_only: true,
                serialized_name: 'properties.publicKeyHash',
                type: {
                  name: 'String'
                }
              },
              hosting_environment_profile: {
                required: false,
                read_only: true,
                serialized_name: 'properties.hostingEnvironmentProfile',
                type: {
                  name: 'Composite',
                  class_name: 'HostingEnvironmentProfile'
                }
              },
              key_vault_id: {
                required: false,
                serialized_name: 'properties.keyVaultId',
                type: {
                  name: 'String'
                }
              },
              key_vault_secret_name: {
                required: false,
                serialized_name: 'properties.keyVaultSecretName',
                type: {
                  name: 'String'
                }
              },
              key_vault_secret_status: {
                required: false,
                read_only: true,
                serialized_name: 'properties.keyVaultSecretStatus',
                type: {
                  name: 'Enum',
                  module: 'KeyVaultSecretStatus'
                }
              },
              geo_region: {
                required: false,
                read_only: true,
                serialized_name: 'properties.geoRegion',
                type: {
                  name: 'String'
                }
              },
              certificate_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.name',
                type: {
                  name: 'String'
                }
              },
              server_farm_id: {
                required: false,
                serialized_name: 'properties.serverFarmId',
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
