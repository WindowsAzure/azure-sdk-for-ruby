# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StreamAnalytics
  module Models
    #
    # Describes an Azure Table output data source.
    #
    class AzureTableOutputDataSource < OutputDataSource

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @type = "Microsoft.Storage/Table"
      end

      attr_accessor :type

      # @return [String] The name of the Azure Storage account. Required on PUT
      # (CreateOrReplace) requests.
      attr_accessor :account_name

      # @return [String] The account key for the Azure Storage account.
      # Required on PUT (CreateOrReplace) requests.
      attr_accessor :account_key

      # @return [String] The name of the Azure Table. Required on PUT
      # (CreateOrReplace) requests.
      attr_accessor :table

      # @return [String] This element indicates the name of a column from the
      # SELECT statement in the query that will be used as the partition key
      # for the Azure Table. Required on PUT (CreateOrReplace) requests.
      attr_accessor :partition_key

      # @return [String] This element indicates the name of a column from the
      # SELECT statement in the query that will be used as the row key for the
      # Azure Table. Required on PUT (CreateOrReplace) requests.
      attr_accessor :row_key

      # @return [Array<String>] If specified, each item in the array is the
      # name of a column to remove (if present) from output event entities.
      attr_accessor :columns_to_remove

      # @return [Integer] The number of rows to write to the Azure Table at a
      # time.
      attr_accessor :batch_size


      #
      # Mapper for AzureTableOutputDataSource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Microsoft.Storage/Table',
          type: {
            name: 'Composite',
            class_name: 'AzureTableOutputDataSource',
            model_properties: {
              type: {
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              account_name: {
                required: false,
                serialized_name: 'properties.accountName',
                type: {
                  name: 'String'
                }
              },
              account_key: {
                required: false,
                serialized_name: 'properties.accountKey',
                type: {
                  name: 'String'
                }
              },
              table: {
                required: false,
                serialized_name: 'properties.table',
                type: {
                  name: 'String'
                }
              },
              partition_key: {
                required: false,
                serialized_name: 'properties.partitionKey',
                type: {
                  name: 'String'
                }
              },
              row_key: {
                required: false,
                serialized_name: 'properties.rowKey',
                type: {
                  name: 'String'
                }
              },
              columns_to_remove: {
                required: false,
                serialized_name: 'properties.columnsToRemove',
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
              batch_size: {
                required: false,
                serialized_name: 'properties.batchSize',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
