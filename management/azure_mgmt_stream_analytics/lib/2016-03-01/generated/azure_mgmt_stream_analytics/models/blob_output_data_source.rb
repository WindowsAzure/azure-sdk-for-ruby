# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StreamAnalytics::Mgmt::V2016_03_01
  module Models
    #
    # Describes a blob output data source.
    #
    class BlobOutputDataSource < OutputDataSource

      include MsRestAzure


      def initialize
        @type = "Microsoft.Storage/Blob"
      end

      attr_accessor :type

      # @return [Array<StorageAccount>] A list of one or more Azure Storage
      # accounts. Required on PUT (CreateOrReplace) requests.
      attr_accessor :storage_accounts

      # @return [String] The name of a container within the associated Storage
      # account. This container contains either the blob(s) to be read from or
      # written to. Required on PUT (CreateOrReplace) requests.
      attr_accessor :container

      # @return [String] The blob path pattern. Not a regular expression. It
      # represents a pattern against which blob names will be matched to
      # determine whether or not they should be included as input or output to
      # the job. See
      # https://docs.microsoft.com/en-us/rest/api/streamanalytics/stream-analytics-input
      # or
      # https://docs.microsoft.com/en-us/rest/api/streamanalytics/stream-analytics-output
      # for a more detailed explanation and example.
      attr_accessor :path_pattern

      # @return [String] The date format. Wherever {date} appears in
      # pathPattern, the value of this property is used as the date format
      # instead.
      attr_accessor :date_format

      # @return [String] The time format. Wherever {time} appears in
      # pathPattern, the value of this property is used as the time format
      # instead.
      attr_accessor :time_format


      #
      # Mapper for BlobOutputDataSource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Microsoft.Storage/Blob',
          type: {
            name: 'Composite',
            class_name: 'BlobOutputDataSource',
            model_properties: {
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              storage_accounts: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.storageAccounts',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StorageAccountElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'StorageAccount'
                      }
                  }
                }
              },
              container: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.container',
                type: {
                  name: 'String'
                }
              },
              path_pattern: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.pathPattern',
                type: {
                  name: 'String'
                }
              },
              date_format: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.dateFormat',
                type: {
                  name: 'String'
                }
              },
              time_format: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.timeFormat',
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
