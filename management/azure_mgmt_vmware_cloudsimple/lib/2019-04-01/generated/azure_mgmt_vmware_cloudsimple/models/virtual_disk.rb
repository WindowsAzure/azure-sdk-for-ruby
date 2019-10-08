# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::VMwareCloudSimple::Mgmt::V2019_04_01
  module Models
    #
    # Virtual disk model
    #
    class VirtualDisk

      include MsRestAzure

      # @return [String] Disk's Controller id
      attr_accessor :controller_id

      # @return [DiskIndependenceMode] Disk's independence mode type. Possible
      # values include: 'persistent', 'independent_persistent',
      # 'independent_nonpersistent'
      attr_accessor :independence_mode

      # @return [Integer] Disk's total size
      attr_accessor :total_size

      # @return [String] Disk's id
      attr_accessor :virtual_disk_id

      # @return [String] Disk's display name
      attr_accessor :virtual_disk_name


      #
      # Mapper for VirtualDisk class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualDisk',
          type: {
            name: 'Composite',
            class_name: 'VirtualDisk',
            model_properties: {
              controller_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'controllerId',
                type: {
                  name: 'String'
                }
              },
              independence_mode: {
                client_side_validation: true,
                required: true,
                serialized_name: 'independenceMode',
                type: {
                  name: 'Enum',
                  module: 'DiskIndependenceMode'
                }
              },
              total_size: {
                client_side_validation: true,
                required: true,
                serialized_name: 'totalSize',
                type: {
                  name: 'Number'
                }
              },
              virtual_disk_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'virtualDiskId',
                type: {
                  name: 'String'
                }
              },
              virtual_disk_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'virtualDiskName',
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
