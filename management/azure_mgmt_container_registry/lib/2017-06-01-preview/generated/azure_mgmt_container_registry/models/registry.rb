# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2017_06_01_preview
  module Models
    #
    # An object that represents a container registry.
    #
    class Registry < Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [Sku] The SKU of the container registry.
      attr_accessor :sku

      # @return [String] The URL that can be used to log into the container
      # registry.
      attr_accessor :login_server

      # @return [DateTime] The creation date of the container registry in
      # ISO8601 format.
      attr_accessor :creation_date

      # @return [ProvisioningState] The provisioning state of the container
      # registry at the time the operation was called. Possible values include:
      # 'Creating', 'Updating', 'Deleting', 'Succeeded', 'Failed', 'Canceled'
      attr_accessor :provisioning_state

      # @return [Status] The status of the container registry at the time the
      # operation was called.
      attr_accessor :status

      # @return [Boolean] The value that indicates whether the admin user is
      # enabled. Default value: false .
      attr_accessor :admin_user_enabled

      # @return [StorageAccountProperties] The properties of the storage
      # account for the container registry. Only applicable to Basic SKU.
      attr_accessor :storage_account


      #
      # Mapper for Registry class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Registry',
          type: {
            name: 'Composite',
            class_name: 'Registry',
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
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
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
              sku: {
                client_side_validation: true,
                required: true,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              login_server: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.loginServer',
                type: {
                  name: 'String'
                }
              },
              creation_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.creationDate',
                type: {
                  name: 'DateTime'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.status',
                type: {
                  name: 'Composite',
                  class_name: 'Status'
                }
              },
              admin_user_enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.adminUserEnabled',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              },
              storage_account: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.storageAccount',
                type: {
                  name: 'Composite',
                  class_name: 'StorageAccountProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
