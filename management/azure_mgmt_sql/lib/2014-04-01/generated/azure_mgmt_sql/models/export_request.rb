# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2014_04_01
  module Models
    #
    # Export database parameters.
    #
    class ExportRequest

      include MsRestAzure

      # @return [StorageKeyType] The type of the storage key to use. Possible
      # values include: 'StorageAccessKey', 'SharedAccessKey'
      attr_accessor :storage_key_type

      # @return [String] The storage key to use.  If storage key type is
      # SharedAccessKey, it must be preceded with a "?."
      attr_accessor :storage_key

      # @return [String] The storage uri to use.
      attr_accessor :storage_uri

      # @return [String] The name of the SQL administrator.
      attr_accessor :administrator_login

      # @return [String] The password of the SQL administrator.
      attr_accessor :administrator_login_password

      # @return [AuthenticationType] The authentication type. Possible values
      # include: 'SQL', 'ADPassword'. Default value: 'SQL' .
      attr_accessor :authentication_type


      #
      # Mapper for ExportRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ExportRequest',
          type: {
            name: 'Composite',
            class_name: 'ExportRequest',
            model_properties: {
              storage_key_type: {
                required: true,
                serialized_name: 'storageKeyType',
                type: {
                  name: 'Enum',
                  module: 'StorageKeyType'
                }
              },
              storage_key: {
                required: true,
                serialized_name: 'storageKey',
                type: {
                  name: 'String'
                }
              },
              storage_uri: {
                required: true,
                serialized_name: 'storageUri',
                type: {
                  name: 'String'
                }
              },
              administrator_login: {
                required: true,
                serialized_name: 'administratorLogin',
                type: {
                  name: 'String'
                }
              },
              administrator_login_password: {
                required: true,
                serialized_name: 'administratorLoginPassword',
                type: {
                  name: 'String'
                }
              },
              authentication_type: {
                required: false,
                serialized_name: 'authenticationType',
                default_value: 'SQL',
                type: {
                  name: 'Enum',
                  module: 'AuthenticationType'
                }
              }
            }
          }
        }
      end
    end
  end
end
