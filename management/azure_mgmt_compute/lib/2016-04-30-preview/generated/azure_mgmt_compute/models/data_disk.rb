# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2016_04_30_preview
  module Models
    #
    # Describes a data disk.
    #
    class DataDisk

      include MsRestAzure

      include MsRest::JSONable
      # @return [Integer] The logical unit number.
      attr_accessor :lun

      # @return [String] The disk name.
      attr_accessor :name

      # @return [VirtualHardDisk] The virtual hard disk.
      attr_accessor :vhd

      # @return [VirtualHardDisk] The source user image virtual hard disk. This
      # virtual hard disk will be copied before using it to attach to the
      # virtual machine. If SourceImage is provided, the destination virtual
      # hard disk must not exist.
      attr_accessor :image

      # @return [CachingTypes] The caching type. Possible values include:
      # 'None', 'ReadOnly', 'ReadWrite'
      attr_accessor :caching

      # @return [DiskCreateOptionTypes] The create option. Possible values
      # include: 'fromImage', 'empty', 'attach'
      attr_accessor :create_option

      # @return [Integer] The initial disk size in GB for blank data disks, and
      # the new desired size for resizing existing OS and data disks.
      attr_accessor :disk_size_gb

      # @return [ManagedDiskParameters] The managed disk parameters.
      attr_accessor :managed_disk


      #
      # Mapper for DataDisk class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DataDisk',
          type: {
            name: 'Composite',
            class_name: 'DataDisk',
            model_properties: {
              lun: {
                client_side_validation: true,
                required: true,
                serialized_name: 'lun',
                type: {
                  name: 'Number'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              vhd: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vhd',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualHardDisk'
                }
              },
              image: {
                client_side_validation: true,
                required: false,
                serialized_name: 'image',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualHardDisk'
                }
              },
              caching: {
                client_side_validation: true,
                required: false,
                serialized_name: 'caching',
                type: {
                  name: 'Enum',
                  module: 'CachingTypes'
                }
              },
              create_option: {
                client_side_validation: true,
                required: true,
                serialized_name: 'createOption',
                type: {
                  name: 'Enum',
                  module: 'DiskCreateOptionTypes'
                }
              },
              disk_size_gb: {
                client_side_validation: true,
                required: false,
                serialized_name: 'diskSizeGB',
                type: {
                  name: 'Number'
                }
              },
              managed_disk: {
                client_side_validation: true,
                required: false,
                serialized_name: 'managedDisk',
                type: {
                  name: 'Composite',
                  class_name: 'ManagedDiskParameters'
                }
              }
            }
          }
        }
      end
    end
  end
end
