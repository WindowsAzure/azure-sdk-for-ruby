# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2015_10_01
  module Models
    #
    # The properties of a Media Service resource.
    #
    class MediaService < Resource

      include MsRestAzure

      # @return [Array<ApiEndpoint>] Read-only property that lists the Media
      # Services REST API endpoints for this resource. If supplied on a PUT or
      # PATCH, the value will be ignored.
      attr_accessor :api_endpoints

      # @return [Array<StorageAccount>] The storage accounts for this resource.
      attr_accessor :storage_accounts


      #
      # Mapper for MediaService class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'MediaService',
          type: {
            name: 'Composite',
            class_name: 'MediaService',
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
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: false,
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
              api_endpoints: {
                required: false,
                read_only: true,
                serialized_name: 'properties.apiEndpoints',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ApiEndpointElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApiEndpoint'
                      }
                  }
                }
              },
              storage_accounts: {
                required: false,
                serialized_name: 'properties.storageAccounts',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StorageAccountElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'StorageAccount'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
