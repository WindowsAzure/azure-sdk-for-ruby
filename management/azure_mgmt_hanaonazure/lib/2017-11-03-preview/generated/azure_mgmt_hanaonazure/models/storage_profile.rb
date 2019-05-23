# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Hanaonazure::Mgmt::V2017_11_03_preview
  module Models
    #
    # Specifies the storage settings for the HANA instance disks.
    #
    class StorageProfile

      include MsRestAzure

      # @return [String] IP Address to connect to storage.
      attr_accessor :nfs_ip_address

      # @return [Array<Disk>] Specifies information about the operating system
      # disk used by the hana instance.
      attr_accessor :os_disks


      #
      # Mapper for StorageProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'StorageProfile',
          type: {
            name: 'Composite',
            class_name: 'StorageProfile',
            model_properties: {
              nfs_ip_address: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'nfsIpAddress',
                type: {
                  name: 'String'
                }
              },
              os_disks: {
                client_side_validation: true,
                required: false,
                serialized_name: 'osDisks',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DiskElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Disk'
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
