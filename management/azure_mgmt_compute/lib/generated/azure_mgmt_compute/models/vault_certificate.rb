# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Describes a single certificate reference in a Key Vault, and where the
    # certificate should reside on the VM.
    #
    class VaultCertificate

      include MsRestAzure

      # @return [String] The URL referencing a secret in a Key Vault which
      # contains a properly formatted certificate.
      attr_accessor :certificate_url

      # @return [String] The Certificate store in LocalMachine to add the
      # certificate to on Windows, leave empty on Linux.
      attr_accessor :certificate_store


      #
      # Mapper for VaultCertificate class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VaultCertificate',
          type: {
            name: 'Composite',
            class_name: 'VaultCertificate',
            model_properties: {
              certificate_url: {
                required: false,
                serialized_name: 'certificateUrl',
                type: {
                  name: 'String'
                }
              },
              certificate_store: {
                required: false,
                serialized_name: 'certificateStore',
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
