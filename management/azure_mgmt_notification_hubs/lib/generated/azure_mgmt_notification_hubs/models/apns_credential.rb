# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::NotificationHubs
  module Models
    #
    # Description of a NotificationHub ApnsCredential.
    #
    class ApnsCredential

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The APNS certificate.
      attr_accessor :apns_certificate

      # @return [String] The certificate key.
      attr_accessor :certificate_key

      # @return [String] The endpoint of this credential.
      attr_accessor :endpoint

      # @return [String] The Apns certificate Thumbprint
      attr_accessor :thumbprint

      # @return [String] A 10-character key identifier (kid) key, obtained from
      # your developer account
      attr_accessor :key_id

      # @return [String] The name of the application
      attr_accessor :app_name

      # @return [String] The issuer (iss) registered claim key, whose value is
      # your 10-character Team ID, obtained from your developer account
      attr_accessor :app_id

      # @return [String] Provider Authentication Token, obtained through your
      # developer account
      attr_accessor :token


      #
      # Mapper for ApnsCredential class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApnsCredential',
          type: {
            name: 'Composite',
            class_name: 'ApnsCredential',
            model_properties: {
              apns_certificate: {
                required: false,
                serialized_name: 'properties.apnsCertificate',
                type: {
                  name: 'String'
                }
              },
              certificate_key: {
                required: false,
                serialized_name: 'properties.certificateKey',
                type: {
                  name: 'String'
                }
              },
              endpoint: {
                required: false,
                serialized_name: 'properties.endpoint',
                type: {
                  name: 'String'
                }
              },
              thumbprint: {
                required: false,
                serialized_name: 'properties.thumbprint',
                type: {
                  name: 'String'
                }
              },
              key_id: {
                required: false,
                serialized_name: 'properties.keyId',
                type: {
                  name: 'String'
                }
              },
              app_name: {
                required: false,
                serialized_name: 'properties.appName',
                type: {
                  name: 'String'
                }
              },
              app_id: {
                required: false,
                serialized_name: 'properties.appId',
                type: {
                  name: 'String'
                }
              },
              token: {
                required: false,
                serialized_name: 'properties.token',
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
