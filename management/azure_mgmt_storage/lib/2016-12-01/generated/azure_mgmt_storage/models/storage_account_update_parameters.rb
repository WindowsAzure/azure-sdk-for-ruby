# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2016_12_01
  module Models
    #
    # The parameters that can be provided when updating the storage account
    # properties.
    #
    class StorageAccountUpdateParameters

      include MsRestAzure

      # @return [Sku] Gets or sets the SKU name. Note that the SKU name cannot
      # be updated to Standard_ZRS or Premium_LRS, nor can accounts of those
      # sku names be updated to any other value.
      attr_accessor :sku

      # @return [Hash{String => String}] Gets or sets a list of key value pairs
      # that describe the resource. These tags can be used in viewing and
      # grouping this resource (across resource groups). A maximum of 15 tags
      # can be provided for a resource. Each tag must have a key no greater in
      # length than 128 characters and a value no greater in length than 256
      # characters.
      attr_accessor :tags

      # @return [CustomDomain] Custom domain assigned to the storage account by
      # the user. Name is the CNAME source. Only one custom domain is supported
      # per storage account at this time. To clear the existing custom domain,
      # use an empty string for the custom domain name property.
      attr_accessor :custom_domain

      # @return [Encryption] Provides the encryption settings on the account.
      # The default setting is unencrypted.
      attr_accessor :encryption

      # @return [AccessTier] Required for storage accounts where kind =
      # BlobStorage. The access tier used for billing. Possible values include:
      # 'Hot', 'Cool'
      attr_accessor :access_tier

      # @return [Boolean] Allows https traffic only to storage service if sets
      # to true. Default value: false .
      attr_accessor :enable_https_traffic_only


      #
      # Mapper for StorageAccountUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'StorageAccountUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'StorageAccountUpdateParameters',
            model_properties: {
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
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
              custom_domain: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.customDomain',
                type: {
                  name: 'Composite',
                  class_name: 'CustomDomain'
                }
              },
              encryption: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.encryption',
                type: {
                  name: 'Composite',
                  class_name: 'Encryption'
                }
              },
              access_tier: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.accessTier',
                type: {
                  name: 'Enum',
                  module: 'AccessTier'
                }
              },
              enable_https_traffic_only: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.supportsHttpsTrafficOnly',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
