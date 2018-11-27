# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::TextAnalytics::V2_1
  module Models
    #
    # Model object.
    #
    #
    class EntitiesErrorResponse

      include MsRestAzure

      # @return [String]
      attr_accessor :code

      # @return [String]
      attr_accessor :message

      # @return [String]
      attr_accessor :target

      # @return [InternalError]
      attr_accessor :inner_error


      #
      # Mapper for EntitiesErrorResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EntitiesErrorResponse',
          type: {
            name: 'Composite',
            class_name: 'EntitiesErrorResponse',
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
              },
              target: {
                required: false,
                serialized_name: 'target',
                type: {
                  name: 'String'
                }
              },
              inner_error: {
                required: false,
                serialized_name: 'innerError',
                type: {
                  name: 'Composite',
                  class_name: 'InternalError'
                }
              }
            }
          }
        }
      end
    end
  end
end
