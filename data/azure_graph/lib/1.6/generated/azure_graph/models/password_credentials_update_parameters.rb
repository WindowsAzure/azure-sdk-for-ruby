# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Graph::V1_6
  module Models
    #
    # Request parameters for a PasswordCredentials update operation.
    #
    class PasswordCredentialsUpdateParameters

      include MsRestAzure

      # @return [Array<PasswordCredential>] A collection of
      # PasswordCredentials.
      attr_accessor :value


      #
      # Mapper for PasswordCredentialsUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PasswordCredentialsUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'PasswordCredentialsUpdateParameters',
            model_properties: {
              value: {
                client_side_validation: true,
                required: true,
                serialized_name: 'value',
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
