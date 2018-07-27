# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2017_03_01_preview
  module Models
    #
    # An managed database update.
    #
    class ManagedDatabaseUpdate

      include MsRestAzure

      # @return [String] Collation of the managed database.
      attr_accessor :collation

      # @return [ManagedDatabaseStatus] Status for the database. Possible
      # values include: 'Online', 'Offline', 'Shutdown', 'Creating',
      # 'Inaccessible'
      attr_accessor :status

      # @return [DateTime] Creation date of the database.
      attr_accessor :creation_date

      # @return [DateTime] Earliest restore point in time for point in time
      # restore.
      attr_accessor :earliest_restore_point

      # @return [DateTime] Conditional. If createMode is PointInTimeRestore,
      # this value is required. Specifies the point in time (ISO8601 format) of
      # the source database that will be restored to create the new database.
      attr_accessor :restore_point_in_time

      # @return [String] Geo paired region.
      attr_accessor :default_secondary_location

      # @return [CatalogCollationType] Collation of the metadata catalog.
      # Possible values include: 'DATABASE_DEFAULT',
      # 'SQL_Latin1_General_CP1_CI_AS'
      attr_accessor :catalog_collation

      # @return [ManagedDatabaseCreateMode] Managed database create mode.
      # PointInTimeRestore: Create a database by restoring a point in time
      # backup of an existing database. SourceDatabaseName,
      # SourceManagedInstanceName and PointInTime must be specified.
      # RestoreExternalBackup: Create a database by restoring from external
      # backup files. Collation, StorageContainerUri and
      # StorageContainerSasToken must be specified. Possible values include:
      # 'Default', 'RestoreExternalBackup', 'PointInTimeRestore'
      attr_accessor :create_mode

      # @return [String] Conditional. If createMode is RestoreExternalBackup,
      # this value is required. Specifies the uri of the storage container
      # where backups for this restore are stored.
      attr_accessor :storage_container_uri

      # @return [String] The resource identifier of the source database
      # associated with create operation of this database.
      attr_accessor :source_database_id

      # @return [String] Conditional. If createMode is RestoreExternalBackup,
      # this value is required. Specifies the storage container sas token.
      attr_accessor :storage_container_sas_token

      # @return [String] Instance Failover Group resource identifier that this
      # managed database belongs to.
      attr_accessor :failover_group_id

      # @return [Hash{String => String}] Resource tags.
      attr_accessor :tags


      #
      # Mapper for ManagedDatabaseUpdate class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagedDatabaseUpdate',
          type: {
            name: 'Composite',
            class_name: 'ManagedDatabaseUpdate',
            model_properties: {
              collation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.collation',
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
              earliest_restore_point: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.earliestRestorePoint',
                type: {
                  name: 'DateTime'
                }
              },
              restore_point_in_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.restorePointInTime',
                type: {
                  name: 'DateTime'
                }
              },
              default_secondary_location: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.defaultSecondaryLocation',
                type: {
                  name: 'String'
                }
              },
              catalog_collation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.catalogCollation',
                type: {
                  name: 'String'
                }
              },
              create_mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.createMode',
                type: {
                  name: 'String'
                }
              },
              storage_container_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.storageContainerUri',
                type: {
                  name: 'String'
                }
              },
              source_database_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sourceDatabaseId',
                type: {
                  name: 'String'
                }
              },
              storage_container_sas_token: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.storageContainerSasToken',
                type: {
                  name: 'String'
                }
              },
              failover_group_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.failoverGroupId',
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
              }
            }
          }
        }
      end
    end
  end
end
