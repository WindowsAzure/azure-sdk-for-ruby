# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2019_11_01
  module Models
    #
    # Snapshot resource.
    #
    class Snapshot < Resource

      include MsRestAzure

      # @return [String] Unused. Always Null.
      attr_accessor :managed_by

      # @return [SnapshotSku]
      attr_accessor :sku

      # @return [DateTime] The time when the disk was created.
      attr_accessor :time_created

      # @return [OperatingSystemTypes] The Operating System type. Possible
      # values include: 'Windows', 'Linux'
      attr_accessor :os_type

      # @return [HyperVGeneration] The hypervisor generation of the Virtual
      # Machine. Applicable to OS disks only. Possible values include: 'V1',
      # 'V2'
      attr_accessor :hyper_vgeneration

      # @return [CreationData] Disk source information. CreationData
      # information cannot be changed after the disk has been created.
      attr_accessor :creation_data

      # @return [Integer] If creationData.createOption is Empty, this field is
      # mandatory and it indicates the size of the disk to create. If this
      # field is present for updates or creation with other options, it
      # indicates a resize. Resizes are only allowed if the disk is not
      # attached to a running VM, and can only increase the disk's size.
      attr_accessor :disk_size_gb

      # @return [Integer] The size of the disk in bytes. This field is read
      # only.
      attr_accessor :disk_size_bytes

      # @return [String] Unique Guid identifying the resource.
      attr_accessor :unique_id

      # @return [EncryptionSettingsCollection] Encryption settings collection
      # used be Azure Disk Encryption, can contain multiple encryption settings
      # per disk or snapshot.
      attr_accessor :encryption_settings_collection

      # @return [String] The disk provisioning state.
      attr_accessor :provisioning_state

      # @return [Boolean] Whether a snapshot is incremental. Incremental
      # snapshots on the same disk occupy less space than full snapshots and
      # can be diffed.
      attr_accessor :incremental

      # @return [Encryption] Encryption property can be used to encrypt data at
      # rest with customer managed keys or platform managed keys.
      attr_accessor :encryption


      #
      # Mapper for Snapshot class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Snapshot',
          type: {
            name: 'Composite',
            class_name: 'Snapshot',
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
              managed_by: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'managedBy',
                type: {
                  name: 'String'
                }
              },
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'SnapshotSku'
                }
              },
              time_created: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.timeCreated',
                type: {
                  name: 'DateTime'
                }
              },
              os_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.osType',
                type: {
                  name: 'Enum',
                  module: 'OperatingSystemTypes'
                }
              },
              hyper_vgeneration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.hyperVGeneration',
                type: {
                  name: 'String'
                }
              },
              creation_data: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.creationData',
                type: {
                  name: 'Composite',
                  class_name: 'CreationData'
                }
              },
              disk_size_gb: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.diskSizeGB',
                type: {
                  name: 'Number'
                }
              },
              disk_size_bytes: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.diskSizeBytes',
                type: {
                  name: 'Number'
                }
              },
              unique_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.uniqueId',
                type: {
                  name: 'String'
                }
              },
              encryption_settings_collection: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.encryptionSettingsCollection',
                type: {
                  name: 'Composite',
                  class_name: 'EncryptionSettingsCollection'
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
              incremental: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.incremental',
                type: {
                  name: 'Boolean'
                }
              },
              encryption: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.encryption',
                type: {
                  name: 'Composite',
                  class_name: 'Encryption'
                }
              }
            }
          }
        }
      end
    end
  end
end
