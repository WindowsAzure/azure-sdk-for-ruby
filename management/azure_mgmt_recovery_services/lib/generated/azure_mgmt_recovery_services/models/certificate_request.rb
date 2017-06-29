# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServices
  module Models
    #
    # Details of the certificate to be uploaded to the vault.
    #
    class CertificateRequest

      include MsRestAzure

      # @return [RawCertificateData]
      attr_accessor :properties


      #
      # Mapper for CertificateRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CertificateRequest',
          type: {
            name: 'Composite',
            class_name: 'CertificateRequest',
            model_properties: {
              properties: {
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'RawCertificateData'
                }
              }
            }
          }
        }
      end
    end
  end
end
