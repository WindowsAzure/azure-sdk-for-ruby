# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # The disks and snapshots sku name. Can be Standard_LRS or Premium_LRS.
    #
    class DiskSku

      include MsRestAzure

      include MsRest::JSONable
      # @return [StorageAccountTypes] The sku name. Possible values include:
      # 'Standard_LRS', 'Premium_LRS'
      attr_accessor :name

      # @return [String] The sku tier. Default value: 'Standard' .
      attr_accessor :tier


      #
      # Mapper for DiskSku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DiskSku',
          type: {
            name: 'Composite',
            class_name: 'DiskSku',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'Enum',
                  module: 'StorageAccountTypes'
                }
              },
              tier: {
                required: false,
                read_only: true,
                serialized_name: 'tier',
                default_value: 'Standard',
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
