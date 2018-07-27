# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_06_01_preview
  module Models
    #
    # Class to specify configurations of Widevine in Streaming Policy
    #
    class StreamingPolicyWidevineConfiguration

      include MsRestAzure

      # @return [String] The template for a customer service to deliver keys to
      # end users.  Not needed when using Azure Media Services for issuing
      # keys.
      attr_accessor :custom_license_acquisition_url_template


      #
      # Mapper for StreamingPolicyWidevineConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'StreamingPolicyWidevineConfiguration',
          type: {
            name: 'Composite',
            class_name: 'StreamingPolicyWidevineConfiguration',
            model_properties: {
              custom_license_acquisition_url_template: {
                client_side_validation: true,
                required: false,
                serialized_name: 'customLicenseAcquisitionUrlTemplate',
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
