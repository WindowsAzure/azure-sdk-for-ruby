# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::V7_2_preview
  module Models
    #
    # Array of shared keys
    #
    class SecurityDomainObjectDataSharedKeys

      include MsRestAzure

      # @return [String] The Algorithm used for shared keys. Default value:
      # 'shamir_share' .
      attr_accessor :key_algorithm

      # @return [Integer] The number of keys (minimum 2 and maximum 10)
      # required for security domain.
      attr_accessor :required

      # @return [Array<Key>] Compact JWE wrapped shares array
      attr_accessor :enc_shares


      #
      # Mapper for SecurityDomainObjectDataSharedKeys class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SecurityDomainObject_data_SharedKeys',
          type: {
            name: 'Composite',
            class_name: 'SecurityDomainObjectDataSharedKeys',
            model_properties: {
              key_algorithm: {
                client_side_validation: true,
                required: false,
                serialized_name: 'key_algorithm',
                default_value: 'shamir_share',
                type: {
                  name: 'String'
                }
              },
              required: {
                client_side_validation: true,
                required: false,
                serialized_name: 'required',
                constraints: {
                  InclusiveMaximum: 10,
                  InclusiveMinimum: 2
                },
                type: {
                  name: 'Number'
                }
              },
              enc_shares: {
                client_side_validation: true,
                required: false,
                serialized_name: 'enc_shares',
                constraints: {
                  UniqueItems: true
                },
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'KeyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Key'
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
