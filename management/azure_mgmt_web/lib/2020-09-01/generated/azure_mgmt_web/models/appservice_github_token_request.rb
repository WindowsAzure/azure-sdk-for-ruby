# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2020_09_01
  module Models
    #
    # Appservice Github token request content.
    #
    class AppserviceGithubTokenRequest

      include MsRestAzure

      # @return [String] Code string to exchange for Github Access token
      attr_accessor :code

      # @return [String] State string used for verification.
      attr_accessor :state


      #
      # Mapper for AppserviceGithubTokenRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AppserviceGithubTokenRequest',
          type: {
            name: 'Composite',
            class_name: 'AppserviceGithubTokenRequest',
            model_properties: {
              code: {
                client_side_validation: true,
                required: true,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              state: {
                client_side_validation: true,
                required: true,
                serialized_name: 'state',
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
