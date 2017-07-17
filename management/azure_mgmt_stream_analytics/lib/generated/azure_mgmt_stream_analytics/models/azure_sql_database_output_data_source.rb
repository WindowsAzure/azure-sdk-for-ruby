# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StreamAnalytics
  module Models
    #
    # Describes an Azure SQL database output data source.
    #
    class AzureSqlDatabaseOutputDataSource < OutputDataSource

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @type = "Microsoft.Sql/Server/Database"
      end

      attr_accessor :type

      # @return [String] The name of the SQL server containing the Azure SQL
      # database. Required on PUT (CreateOrReplace) requests.
      attr_accessor :server

      # @return [String] The name of the Azure SQL database. Required on PUT
      # (CreateOrReplace) requests.
      attr_accessor :database

      # @return [String] The user name that will be used to connect to the
      # Azure SQL database. Required on PUT (CreateOrReplace) requests.
      attr_accessor :user

      # @return [String] The password that will be used to connect to the Azure
      # SQL database. Required on PUT (CreateOrReplace) requests.
      attr_accessor :password

      # @return [String] The name of the table in the Azure SQL database.
      # Required on PUT (CreateOrReplace) requests.
      attr_accessor :table


      #
      # Mapper for AzureSqlDatabaseOutputDataSource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Microsoft.Sql/Server/Database',
          type: {
            name: 'Composite',
            class_name: 'AzureSqlDatabaseOutputDataSource',
            model_properties: {
              type: {
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              server: {
                required: false,
                serialized_name: 'properties.server',
                type: {
                  name: 'String'
                }
              },
              database: {
                required: false,
                serialized_name: 'properties.database',
                type: {
                  name: 'String'
                }
              },
              user: {
                required: false,
                serialized_name: 'properties.user',
                type: {
                  name: 'String'
                }
              },
              password: {
                required: false,
                serialized_name: 'properties.password',
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
              }
            }
          }
        }
      end
    end
  end
end
