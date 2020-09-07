# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::V7_2_preview
  module Models
    #
    # The backup certificate result, containing the backup blob.
    #
    class BackupCertificateResult

      include MsRestAzure

      # @return The backup blob containing the backed up certificate.
      attr_accessor :value


      #
      # Mapper for BackupCertificateResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BackupCertificateResult',
          type: {
            name: 'Composite',
            class_name: 'BackupCertificateResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'value',
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
