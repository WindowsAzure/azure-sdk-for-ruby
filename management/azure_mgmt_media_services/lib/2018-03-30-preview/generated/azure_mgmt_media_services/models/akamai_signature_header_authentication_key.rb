# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_03_30_preview
  module Models
    #
    # Akamai Signature Header authentication key.
    #
    class AkamaiSignatureHeaderAuthenticationKey

      include MsRestAzure

      # @return [String] identifier of the key
      attr_accessor :identifier

      # @return [String] authentication key
      attr_accessor :base64key

      # @return [DateTime] The exact time the authentication key.
      attr_accessor :expiration


      #
      # Mapper for AkamaiSignatureHeaderAuthenticationKey class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AkamaiSignatureHeaderAuthenticationKey',
          type: {
            name: 'Composite',
            class_name: 'AkamaiSignatureHeaderAuthenticationKey',
            model_properties: {
              identifier: {
                required: false,
                serialized_name: 'identifier',
                type: {
                  name: 'String'
                }
              },
              base64key: {
                required: false,
                serialized_name: 'base64Key',
                type: {
                  name: 'String'
                }
              },
              expiration: {
                required: false,
                serialized_name: 'expiration',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
