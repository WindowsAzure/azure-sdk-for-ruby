# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2017_03_30
  module Models
    #
    # Data used when creating a disk.
    #
    class CreationData

      include MsRestAzure

      include MsRest::JSONable
      # @return [DiskCreateOption] This enumerates the possible sources of a
      # disk's creation. Possible values include: 'Empty', 'Attach',
      # 'FromImage', 'Import', 'Copy'
      attr_accessor :create_option

      # @return [String] If createOption is Import, the Azure Resource Manager
      # identifier of the storage account containing the blob to import as a
      # disk. Required only if the blob is in a different subscription
      attr_accessor :storage_account_id

      # @return [ImageDiskReference] Disk source information.
      attr_accessor :image_reference

      # @return [String] If creationOption is Import, this is the URI of a blob
      # to be imported into a managed disk.
      attr_accessor :source_uri

      # @return [String] If createOption is Copy, this is the ARM id of the
      # source snapshot or disk.
      attr_accessor :source_resource_id


      #
      # Mapper for CreationData class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CreationData',
          type: {
            name: 'Composite',
            class_name: 'CreationData',
            model_properties: {
              create_option: {
                client_side_validation: true,
                required: true,
                serialized_name: 'createOption',
                type: {
                  name: 'Enum',
                  module: 'DiskCreateOption'
                }
              },
              storage_account_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'storageAccountId',
                type: {
                  name: 'String'
                }
              },
              image_reference: {
                client_side_validation: true,
                required: false,
                serialized_name: 'imageReference',
                type: {
                  name: 'Composite',
                  class_name: 'ImageDiskReference'
                }
              },
              source_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceUri',
                type: {
                  name: 'String'
                }
              },
              source_resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceResourceId',
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
