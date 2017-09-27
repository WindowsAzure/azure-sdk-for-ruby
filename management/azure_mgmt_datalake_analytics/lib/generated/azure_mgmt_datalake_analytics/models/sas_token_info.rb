# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DataLakeAnalytics
  module Models
    #
    # SAS token information.
    #
    class SasTokenInfo

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] the access token for the associated Azure Storage
      # Container.
      attr_accessor :access_token


      #
      # Mapper for SasTokenInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SasTokenInfo',
          type: {
            name: 'Composite',
            class_name: 'SasTokenInfo',
            model_properties: {
              access_token: {
                required: false,
                read_only: true,
                serialized_name: 'accessToken',
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
