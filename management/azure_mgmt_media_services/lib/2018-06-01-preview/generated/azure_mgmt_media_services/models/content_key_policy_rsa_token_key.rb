# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_06_01_preview
  module Models
    #
    # Specifies a RSA key for token validation
    #
    class ContentKeyPolicyRsaTokenKey < ContentKeyPolicyRestrictionTokenKey

      include MsRestAzure


      def initialize
        @odatatype = "#Microsoft.Media.ContentKeyPolicyRsaTokenKey"
      end

      attr_accessor :odatatype

      # @return [Array<Integer>] The RSA Parameter exponent
      attr_accessor :exponent

      # @return [Array<Integer>] The RSA Parameter modulus
      attr_accessor :modulus


      #
      # Mapper for ContentKeyPolicyRsaTokenKey class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: '#Microsoft.Media.ContentKeyPolicyRsaTokenKey',
          type: {
            name: 'Composite',
            class_name: 'ContentKeyPolicyRsaTokenKey',
            model_properties: {
              odatatype: {
                client_side_validation: true,
                required: true,
                serialized_name: '@odata\\.type',
                type: {
                  name: 'String'
                }
              },
              exponent: {
                client_side_validation: true,
                required: true,
                serialized_name: 'exponent',
                type: {
                  name: 'ByteArray'
                }
              },
              modulus: {
                client_side_validation: true,
                required: true,
                serialized_name: 'modulus',
                type: {
                  name: 'ByteArray'
                }
              }
            }
          }
        }
      end
    end
  end
end
