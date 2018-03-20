# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2016_10_10
  module Models
    #
    # API Authentication Settings.
    #
    class AuthenticationSettingsContract

      include MsRestAzure

      # @return [OAuth2AuthenticationSettingsContract]
      attr_accessor :o_auth2


      #
      # Mapper for AuthenticationSettingsContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AuthenticationSettingsContract',
          type: {
            name: 'Composite',
            class_name: 'AuthenticationSettingsContract',
            model_properties: {
              o_auth2: {
                client_side_validation: true,
                required: false,
                serialized_name: 'oAuth2',
                type: {
                  name: 'Composite',
                  class_name: 'OAuth2AuthenticationSettingsContract'
                }
              }
            }
          }
        }
      end
    end
  end
end
