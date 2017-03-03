# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MediaServices
  module Models
    #
    # The error returned from a failed Media Services REST API call.
    #
    class ApiError

      include MsRestAzure

      # @return [String] Error code.
      attr_accessor :code

      # @return [String] Error message.
      attr_accessor :message


      #
      # Mapper for ApiError class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApiError',
          type: {
            name: 'Composite',
            class_name: 'ApiError',
            model_properties: {
              code: {
                required: false,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              message: {
                required: false,
                serialized_name: 'message',
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
