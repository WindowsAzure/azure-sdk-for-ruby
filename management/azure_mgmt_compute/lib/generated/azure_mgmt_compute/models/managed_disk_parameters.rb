# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # The parameters of a managed disk.
    #
    class ManagedDiskParameters < SubResource

      include MsRestAzure

      # @return [StorageAccountTypes] Specifies the storage account type for
      # the managed disk. Possible values are: Standard_LRS or Premium_LRS.
      # Possible values include: 'Standard_LRS', 'Premium_LRS'
      attr_accessor :storage_account_type


      #
      # Mapper for ManagedDiskParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ManagedDiskParameters',
          type: {
            name: 'Composite',
            class_name: 'ManagedDiskParameters',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              storage_account_type: {
                required: false,
                serialized_name: 'storageAccountType',
                type: {
                  name: 'Enum',
                  module: 'StorageAccountTypes'
                }
              }
            }
          }
        }
      end
    end
  end
end
