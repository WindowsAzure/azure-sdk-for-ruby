# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Storage
  module Models
    #
    # The parameters used when creating a storage account.
    #
    class StorageAccountCreateParameters

      include MsRestAzure

      # @return [Sku] Required. Gets or sets the sku name.
      attr_accessor :sku

      # @return [Kind] Required. Indicates the type of storage account.
      # Possible values include: 'Storage', 'BlobStorage'
      attr_accessor :kind

      # @return [String] Required. Gets or sets the location of the resource.
      # This will be one of the supported and registered Azure Geo Regions
      # (e.g. West US, East US, Southeast Asia, etc.). The geo region of a
      # resource cannot be changed once it is created, but if an identical
      # geo region is specified on update, the request will succeed.
      attr_accessor :location

      # @return [Hash{String => String}] Gets or sets a list of key value
      # pairs that describe the resource. These tags can be used for viewing
      # and grouping this resource (across resource groups). A maximum of 15
      # tags can be provided for a resource. Each tag must have a key with a
      # length no greater than 128 characters and a value with a length no
      # greater than 256 characters.
      attr_accessor :tags

      # @return [CustomDomain] User domain assigned to the storage account.
      # Name is the CNAME source. Only one custom domain is supported per
      # storage account at this time. To clear the existing custom domain,
      # use an empty string for the custom domain name property.
      attr_accessor :custom_domain

      # @return [Encryption] Provides the encryption settings on the account.
      # If left unspecified the account encryption settings will remain the
      # same. The default setting is unencrypted.
      attr_accessor :encryption

      # @return [AccessTier] Required for storage accounts where kind =
      # BlobStorage. The access tier used for billing. Possible values
      # include: 'Hot', 'Cool'
      attr_accessor :access_tier


      #
      # Mapper for StorageAccountCreateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'StorageAccountCreateParameters',
          type: {
            name: 'Composite',
            class_name: 'StorageAccountCreateParameters',
            model_properties: {
              sku: {
                required: true,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              kind: {
                required: true,
                serialized_name: 'kind',
                type: {
                  name: 'Enum',
                  module: 'Kind'
                }
              },
              location: {
                required: true,
                serialized_name: 'location',
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
              custom_domain: {
                required: false,
                serialized_name: 'properties.customDomain',
                type: {
                  name: 'Composite',
                  class_name: 'CustomDomain'
                }
              },
              encryption: {
                required: false,
                serialized_name: 'properties.encryption',
                type: {
                  name: 'Composite',
                  class_name: 'Encryption'
                }
              },
              access_tier: {
                required: false,
                serialized_name: 'properties.accessTier',
                type: {
                  name: 'Enum',
                  module: 'AccessTier'
                }
              }
            }
          }
        }
      end
    end
  end
end
