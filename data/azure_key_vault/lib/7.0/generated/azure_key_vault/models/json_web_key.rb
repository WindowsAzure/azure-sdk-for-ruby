# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::V7_0
  module Models
    #
    # As of http://tools.ietf.org/html/draft-ietf-jose-json-web-key-18
    #
    class JsonWebKey

      include MsRestAzure

      # @return [String] Key identifier.
      attr_accessor :kid

      # @return [JsonWebKeyType] JsonWebKey Key Type (kty), as defined in
      # https://tools.ietf.org/html/draft-ietf-jose-json-web-algorithms-40.
      # Possible values include: 'EC', 'EC-HSM', 'RSA', 'RSA-HSM', 'oct'
      attr_accessor :kty

      # @return [Array<String>]
      attr_accessor :key_ops

      # @return RSA modulus.
      attr_accessor :n

      # @return RSA public exponent.
      attr_accessor :e

      # @return RSA private exponent, or the D component of an EC private key.
      attr_accessor :d

      # @return RSA private key parameter.
      attr_accessor :dp

      # @return RSA private key parameter.
      attr_accessor :dq

      # @return RSA private key parameter.
      attr_accessor :qi

      # @return RSA secret prime.
      attr_accessor :p

      # @return RSA secret prime, with p < q.
      attr_accessor :q

      # @return Symmetric key.
      attr_accessor :k

      # @return HSM Token, used with 'Bring Your Own Key'.
      attr_accessor :t

      # @return [JsonWebKeyCurveName] Elliptic curve name. For valid values,
      # see JsonWebKeyCurveName. Possible values include: 'P-256', 'P-384',
      # 'P-521', 'P-256K'
      attr_accessor :crv

      # @return X component of an EC public key.
      attr_accessor :x

      # @return Y component of an EC public key.
      attr_accessor :y


      #
      # Mapper for JsonWebKey class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'JsonWebKey',
          type: {
            name: 'Composite',
            class_name: 'JsonWebKey',
            model_properties: {
              kid: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kid',
                type: {
                  name: 'String'
                }
              },
              kty: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kty',
                type: {
                  name: 'String'
                }
              },
              key_ops: {
                client_side_validation: true,
                required: false,
                serialized_name: 'key_ops',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              n: {
                client_side_validation: true,
                required: false,
                serialized_name: 'n',
                type: {
                  name: 'Base64Url'
                }
              },
              e: {
                client_side_validation: true,
                required: false,
                serialized_name: 'e',
                type: {
                  name: 'Base64Url'
                }
              },
              d: {
                client_side_validation: true,
                required: false,
                serialized_name: 'd',
                type: {
                  name: 'Base64Url'
                }
              },
              dp: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dp',
                type: {
                  name: 'Base64Url'
                }
              },
              dq: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dq',
                type: {
                  name: 'Base64Url'
                }
              },
              qi: {
                client_side_validation: true,
                required: false,
                serialized_name: 'qi',
                type: {
                  name: 'Base64Url'
                }
              },
              p: {
                client_side_validation: true,
                required: false,
                serialized_name: 'p',
                type: {
                  name: 'Base64Url'
                }
              },
              q: {
                client_side_validation: true,
                required: false,
                serialized_name: 'q',
                type: {
                  name: 'Base64Url'
                }
              },
              k: {
                client_side_validation: true,
                required: false,
                serialized_name: 'k',
                type: {
                  name: 'Base64Url'
                }
              },
              t: {
                client_side_validation: true,
                required: false,
                serialized_name: 'key_hsm',
                type: {
                  name: 'Base64Url'
                }
              },
              crv: {
                client_side_validation: true,
                required: false,
                serialized_name: 'crv',
                type: {
                  name: 'String'
                }
              },
              x: {
                client_side_validation: true,
                required: false,
                serialized_name: 'x',
                type: {
                  name: 'Base64Url'
                }
              },
              y: {
                client_side_validation: true,
                required: false,
                serialized_name: 'y',
                type: {
                  name: 'Base64Url'
                }
              }
            }
          }
        }
      end
    end
  end
end
