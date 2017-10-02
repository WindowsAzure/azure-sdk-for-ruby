# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # MySQL migration request.
    #
    class MigrateMySqlRequest < ProxyOnlyResource

      include MsRestAzure

      # @return [String] Connection string to the remote MySQL database.
      attr_accessor :connection_string

      # @return [MySqlMigrationType] The type of migration operation to be
      # done. Possible values include: 'LocalToRemote', 'RemoteToLocal'
      attr_accessor :migration_type


      #
      # Mapper for MigrateMySqlRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'MigrateMySqlRequest',
          type: {
            name: 'Composite',
            class_name: 'MigrateMySqlRequest',
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
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              connection_string: {
                required: false,
                serialized_name: 'properties.connectionString',
                type: {
                  name: 'String'
                }
              },
              migration_type: {
                required: false,
                serialized_name: 'properties.migrationType',
                type: {
                  name: 'Enum',
                  module: 'MySqlMigrationType'
                }
              }
            }
          }
        }
      end
    end
  end
end
