# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2020_09_30
  module Models
    #
    # Encryption settings for disk or snapshot
    #
    class EncryptionSettingsCollection

      include MsRestAzure

      # @return [Boolean] Set this flag to true and provide DiskEncryptionKey
      # and optional KeyEncryptionKey to enable encryption. Set this flag to
      # false and remove DiskEncryptionKey and KeyEncryptionKey to disable
      # encryption. If EncryptionSettings is null in the request object, the
      # existing settings remain unchanged.
      attr_accessor :enabled

      # @return [Array<EncryptionSettingsElement>] A collection of encryption
      # settings, one for each disk volume.
      attr_accessor :encryption_settings

      # @return [String] Describes what type of encryption is used for the
      # disks. Once this field is set, it cannot be overwritten. '1.0'
      # corresponds to Azure Disk Encryption with AAD app.'1.1' corresponds to
      # Azure Disk Encryption.
      attr_accessor :encryption_settings_version


      #
      # Mapper for EncryptionSettingsCollection class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EncryptionSettingsCollection',
          type: {
            name: 'Composite',
            class_name: 'EncryptionSettingsCollection',
            model_properties: {
              enabled: {
                client_side_validation: true,
                required: true,
                serialized_name: 'enabled',
                type: {
                  name: 'Boolean'
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
                      serialized_name: 'EncryptionSettingsElementElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EncryptionSettingsElement'
                      }
                  }
                }
              },
              encryption_settings_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'encryptionSettingsVersion',
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
