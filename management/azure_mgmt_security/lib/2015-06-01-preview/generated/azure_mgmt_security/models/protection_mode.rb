# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2015_06_01_preview
  module Models
    #
    # The protection mode of the collection/file types. Exe/Msi/Script are used
    # for Windows, Executable is used for Linux.
    #
    class ProtectionMode

      include MsRestAzure

      # @return [Enum] Possible values include: 'Audit', 'Enforce', 'None'
      attr_accessor :exe

      # @return [Enum] Possible values include: 'Audit', 'Enforce', 'None'
      attr_accessor :msi

      # @return [Enum] Possible values include: 'Audit', 'Enforce', 'None'
      attr_accessor :script

      # @return [Enum] Possible values include: 'Audit', 'Enforce', 'None'
      attr_accessor :executable


      #
      # Mapper for ProtectionMode class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ProtectionMode',
          type: {
            name: 'Composite',
            class_name: 'ProtectionMode',
            model_properties: {
              exe: {
                client_side_validation: true,
                required: false,
                serialized_name: 'exe',
                type: {
                  name: 'String'
                }
              },
              msi: {
                client_side_validation: true,
                required: false,
                serialized_name: 'msi',
                type: {
                  name: 'String'
                }
              },
              script: {
                client_side_validation: true,
                required: false,
                serialized_name: 'script',
                type: {
                  name: 'String'
                }
              },
              executable: {
                client_side_validation: true,
                required: false,
                serialized_name: 'executable',
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
