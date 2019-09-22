# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2019_04_01
  module Models
    #
    # The properties of a storage account’s Blob service.
    #
    class BlobServiceProperties < Resource

      include MsRestAzure

      # @return [CorsRules] Specifies CORS rules for the Blob service. You can
      # include up to five CorsRule elements in the request. If no CorsRule
      # elements are included in the request body, all CORS rules will be
      # deleted, and CORS will be disabled for the Blob service.
      attr_accessor :cors

      # @return [String] DefaultServiceVersion indicates the default version to
      # use for requests to the Blob service if an incoming request’s version
      # is not specified. Possible values include version 2008-10-27 and all
      # more recent versions.
      attr_accessor :default_service_version

      # @return [DeleteRetentionPolicy] The blob service properties for soft
      # delete.
      attr_accessor :delete_retention_policy

      # @return [Boolean] Automatic Snapshot is enabled if set to true.
      attr_accessor :automatic_snapshot_policy_enabled

      # @return [ChangeFeed] The blob service properties for change feed
      # events.
      attr_accessor :change_feed


      #
      # Mapper for BlobServiceProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BlobServiceProperties',
          type: {
            name: 'Composite',
            class_name: 'BlobServiceProperties',
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
              cors: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.cors',
                type: {
                  name: 'Composite',
                  class_name: 'CorsRules'
                }
              },
              default_service_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.defaultServiceVersion',
                type: {
                  name: 'String'
                }
              },
              delete_retention_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.deleteRetentionPolicy',
                type: {
                  name: 'Composite',
                  class_name: 'DeleteRetentionPolicy'
                }
              },
              automatic_snapshot_policy_enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.automaticSnapshotPolicyEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              change_feed: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.changeFeed',
                type: {
                  name: 'Composite',
                  class_name: 'ChangeFeed'
                }
              }
            }
          }
        }
      end
    end
  end
end
