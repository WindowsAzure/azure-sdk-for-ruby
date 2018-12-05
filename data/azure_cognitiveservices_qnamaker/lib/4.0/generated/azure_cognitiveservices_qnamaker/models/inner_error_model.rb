# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Qnamaker::V4_0
  module Models
    #
    # An object containing more specific information about the error. As per
    # Microsoft One API guidelines -
    # https://github.com/Microsoft/api-guidelines/blob/vNext/Guidelines.md#7102-error-condition-responses.
    #
    class InnerErrorModel

      include MsRestAzure

      # @return [String] A more specific error code than was provided by the
      # containing error.
      attr_accessor :code

      # @return [InnerErrorModel] An object containing more specific
      # information than the current object about the error.
      attr_accessor :inner_error


      #
      # Mapper for InnerErrorModel class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'InnerErrorModel',
          type: {
            name: 'Composite',
            class_name: 'InnerErrorModel',
            model_properties: {
              code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              inner_error: {
                client_side_validation: true,
                required: false,
                serialized_name: 'innerError',
                type: {
                  name: 'Composite',
                  class_name: 'InnerErrorModel'
                }
              }
            }
          }
        }
      end
    end
  end
end
