# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Graph::Mgmt::V1_6
  module Models
    #
    # Request parameters for creating a new service principal.
    #
    class ServicePrincipalCreateParameters

      include MsRestAzure

      # @return [String] application Id
      attr_accessor :app_id

      # @return [Boolean] Whether the account is enabled
      attr_accessor :account_enabled

      # @return [Array<KeyCredential>] A collection of KeyCredential objects.
      attr_accessor :key_credentials

      # @return [Array<PasswordCredential>] A collection of PasswordCredential
      # objects
      attr_accessor :password_credentials


      #
      # Mapper for ServicePrincipalCreateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServicePrincipalCreateParameters',
          type: {
            name: 'Composite',
            class_name: 'ServicePrincipalCreateParameters',
            model_properties: {
              app_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'appId',
                type: {
                  name: 'String'
                }
              },
              account_enabled: {
                client_side_validation: true,
                required: true,
                serialized_name: 'accountEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              key_credentials: {
                client_side_validation: true,
                required: false,
                serialized_name: 'keyCredentials',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'KeyCredentialElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'KeyCredential'
                      }
                  }
                }
              },
              password_credentials: {
                client_side_validation: true,
                required: false,
                serialized_name: 'passwordCredentials',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'PasswordCredentialElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PasswordCredential'
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
