# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Database backup settings.
    #
    class DatabaseBackupSetting

      include MsRestAzure

      include MsRest::JSONable
      # @return [DatabaseType] Database type (e.g. SqlAzure / MySql). Possible
      # values include: 'SqlAzure', 'MySql', 'LocalMySql', 'PostgreSql'
      attr_accessor :database_type

      # @return [String]
      attr_accessor :name

      # @return [String] Contains a connection string name that is linked to
      # the SiteConfig.ConnectionStrings.
      # This is used during restore with overwrite connection strings options.
      attr_accessor :connection_string_name

      # @return [String] Contains a connection string to a database which is
      # being backed up or restored. If the restore should happen to a new
      # database, the database name inside is the new one.
      attr_accessor :connection_string


      #
      # Mapper for DatabaseBackupSetting class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DatabaseBackupSetting',
          type: {
            name: 'Composite',
            class_name: 'DatabaseBackupSetting',
            model_properties: {
              database_type: {
                required: true,
                serialized_name: 'databaseType',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              connection_string_name: {
                required: false,
                serialized_name: 'connectionStringName',
                type: {
                  name: 'String'
                }
              },
              connection_string: {
                required: false,
                serialized_name: 'connectionString',
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
