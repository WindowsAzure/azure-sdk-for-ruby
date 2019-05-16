# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::IotHub::Mgmt::V2018_12_01_preview
  module Models
    #
    # The JSON-serialized leaf certificate
    #
    class CertificateVerificationDescription

      include MsRestAzure

      # @return [String] base-64 representation of X509 certificate .cer file
      # or just .pem file content.
      attr_accessor :certificate


      #
      # Mapper for CertificateVerificationDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CertificateVerificationDescription',
          type: {
            name: 'Composite',
            class_name: 'CertificateVerificationDescription',
            model_properties: {
              certificate: {
                client_side_validation: true,
                required: false,
                serialized_name: 'certificate',
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
