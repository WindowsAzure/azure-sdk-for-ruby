# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Graph
  module Models
    #
    # PasswordCredential list operation result.
    #
    class PasswordCredentialListResult

      include MsRestAzure

      # @return [Array<PasswordCredential>] A collection of
      # PasswordCredentials.
      attr_accessor :value


      #
      # Mapper for PasswordCredentialListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'PasswordCredentialListResult',
          type: {
            name: 'Composite',
            class_name: 'PasswordCredentialListResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
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
