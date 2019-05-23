# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Hdinsight::Mgmt::V2018_06_01_preview
  module Models
    #
    # Gateway settings.
    #
    class GatewaySettings

      include MsRestAzure

      # @return [String] Indicates whether or not the gateway settings based
      # authorization is enabled.
      attr_accessor :is_credential_enabled

      # @return [String] The gateway settings user name.
      attr_accessor :user_name

      # @return [String] The gateway settings user password.
      attr_accessor :password


      #
      # Mapper for GatewaySettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GatewaySettings',
          type: {
            name: 'Composite',
            class_name: 'GatewaySettings',
            model_properties: {
              is_credential_enabled: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'restAuthCredential\\.isEnabled',
                type: {
                  name: 'String'
                }
              },
              user_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'restAuthCredential\\.username',
                type: {
                  name: 'String'
                }
              },
              password: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'restAuthCredential\\.password',
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
