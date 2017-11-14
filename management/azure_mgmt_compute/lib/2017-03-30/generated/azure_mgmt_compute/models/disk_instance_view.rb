# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2017_03_30
  module Models
    #
    # The instance view of the disk.
    #
    class DiskInstanceView

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The disk name.
      attr_accessor :name

      # @return [Array<DiskEncryptionSettings>] Specifies the encryption
      # settings for the OS Disk. <br><br> Minimum api-version: 2015-06-15
      attr_accessor :encryption_settings

      # @return [Array<InstanceViewStatus>] The resource status information.
      attr_accessor :statuses


      #
      # Mapper for DiskInstanceView class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DiskInstanceView',
          type: {
            name: 'Composite',
            class_name: 'DiskInstanceView',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              encryption_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'encryptionSettings',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DiskEncryptionSettingsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DiskEncryptionSettings'
                      }
                  }
                }
              },
              statuses: {
                client_side_validation: true,
                required: false,
                serialized_name: 'statuses',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'InstanceViewStatusElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'InstanceViewStatus'
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
