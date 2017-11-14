# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2016_06_01
  module Models
    #
    # The AS2 agreement validation settings.
    #
    class AS2ValidationSettings

      include MsRestAzure

      include MsRest::JSONable
      # @return [Boolean] The value indicating whether to override incoming
      # message properties with those in agreement.
      attr_accessor :override_message_properties

      # @return [Boolean] The value indicating whether the message has to be
      # encrypted.
      attr_accessor :encrypt_message

      # @return [Boolean] The value indicating whether the message has to be
      # signed.
      attr_accessor :sign_message

      # @return [Boolean] The value indicating whether the message has to be
      # compressed.
      attr_accessor :compress_message

      # @return [Boolean] The value indicating whether to check for duplicate
      # message.
      attr_accessor :check_duplicate_message

      # @return [Integer] The number of days to look back for duplicate
      # interchange.
      attr_accessor :interchange_duplicates_validity_days

      # @return [Boolean] The value indicating whether to check for certificate
      # revocation list on send.
      attr_accessor :check_certificate_revocation_list_on_send

      # @return [Boolean] The value indicating whether to check for certificate
      # revocation list on receive.
      attr_accessor :check_certificate_revocation_list_on_receive

      # @return [EncryptionAlgorithm] The encryption algorithm. Possible values
      # include: 'NotSpecified', 'None', 'DES3', 'RC2', 'AES128', 'AES192',
      # 'AES256'
      attr_accessor :encryption_algorithm

      # @return [SigningAlgorithm] The signing algorithm. Possible values
      # include: 'NotSpecified', 'Default', 'SHA1', 'SHA2256', 'SHA2384',
      # 'SHA2512'
      attr_accessor :signing_algorithm


      #
      # Mapper for AS2ValidationSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AS2ValidationSettings',
          type: {
            name: 'Composite',
            class_name: 'AS2ValidationSettings',
            model_properties: {
              override_message_properties: {
                client_side_validation: true,
                required: true,
                serialized_name: 'overrideMessageProperties',
                type: {
                  name: 'Boolean'
                }
              },
              encrypt_message: {
                client_side_validation: true,
                required: true,
                serialized_name: 'encryptMessage',
                type: {
                  name: 'Boolean'
                }
              },
              sign_message: {
                client_side_validation: true,
                required: true,
                serialized_name: 'signMessage',
                type: {
                  name: 'Boolean'
                }
              },
              compress_message: {
                client_side_validation: true,
                required: true,
                serialized_name: 'compressMessage',
                type: {
                  name: 'Boolean'
                }
              },
              check_duplicate_message: {
                client_side_validation: true,
                required: true,
                serialized_name: 'checkDuplicateMessage',
                type: {
                  name: 'Boolean'
                }
              },
              interchange_duplicates_validity_days: {
                client_side_validation: true,
                required: true,
                serialized_name: 'interchangeDuplicatesValidityDays',
                type: {
                  name: 'Number'
                }
              },
              check_certificate_revocation_list_on_send: {
                client_side_validation: true,
                required: true,
                serialized_name: 'checkCertificateRevocationListOnSend',
                type: {
                  name: 'Boolean'
                }
              },
              check_certificate_revocation_list_on_receive: {
                client_side_validation: true,
                required: true,
                serialized_name: 'checkCertificateRevocationListOnReceive',
                type: {
                  name: 'Boolean'
                }
              },
              encryption_algorithm: {
                client_side_validation: true,
                required: true,
                serialized_name: 'encryptionAlgorithm',
                type: {
                  name: 'Enum',
                  module: 'EncryptionAlgorithm'
                }
              },
              signing_algorithm: {
                client_side_validation: true,
                required: false,
                serialized_name: 'signingAlgorithm',
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
