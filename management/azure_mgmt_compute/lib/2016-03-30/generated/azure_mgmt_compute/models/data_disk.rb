# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2016_03_30
  module Models
    #
    # Describes a data disk.
    #
    class DataDisk

      include MsRestAzure

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


      #
      # Mapper for DataDisk class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DataDisk',
          type: {
            name: 'Composite',
            class_name: 'DataDisk',
            model_properties: {
              lun: {
                required: true,
                serialized_name: 'lun',
                type: {
                  name: 'Number'
                }
              },
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              vhd: {
                required: true,
                serialized_name: 'vhd',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualHardDisk'
                }
              },
              image: {
                required: false,
                serialized_name: 'image',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualHardDisk'
                }
              },
              caching: {
                required: false,
                serialized_name: 'caching',
                type: {
                  name: 'Enum',
                  module: 'CachingTypes'
                }
              },
              create_option: {
                required: true,
                serialized_name: 'createOption',
                type: {
                  name: 'Enum',
                  module: 'DiskCreateOptionTypes'
                }
              },
              disk_size_gb: {
                required: false,
                serialized_name: 'diskSizeGB',
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
