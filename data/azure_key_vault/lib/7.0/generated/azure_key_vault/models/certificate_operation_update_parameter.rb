# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::V7_0
  module Models
    #
    # The certificate operation update parameters.
    #
    class CertificateOperationUpdateParameter

      include MsRestAzure

      # @return [Boolean] Indicates if cancellation was requested on the
      # certificate operation.
      attr_accessor :cancellation_requested


      #
      # Mapper for CertificateOperationUpdateParameter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CertificateOperationUpdateParameter',
          type: {
            name: 'Composite',
            class_name: 'CertificateOperationUpdateParameter',
            model_properties: {
              cancellation_requested: {
                client_side_validation: true,
                required: true,
                serialized_name: 'cancellation_requested',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
