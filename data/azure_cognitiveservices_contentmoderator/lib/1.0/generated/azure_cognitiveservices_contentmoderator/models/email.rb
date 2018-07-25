# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ContentModerator::V1_0
  module Models
    #
    # Email Address details.
    #
    class Email

      include MsRestAzure

      # @return [String] Detected Email Address from the input text content.
      attr_accessor :detected

      # @return [String] Subtype of the detected Email Address.
      attr_accessor :sub_type

      # @return [String] Email Address in the input text content.
      attr_accessor :text

      # @return [Integer] Index(Location) of the Email address in the input
      # text content.
      attr_accessor :index


      #
      # Mapper for Email class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Email',
          type: {
            name: 'Composite',
            class_name: 'Email',
            model_properties: {
              detected: {
                required: false,
                serialized_name: 'Detected',
                type: {
                  name: 'String'
                }
              },
              sub_type: {
                required: false,
                serialized_name: 'SubType',
                type: {
                  name: 'String'
                }
              },
              text: {
                required: false,
                serialized_name: 'Text',
                type: {
                  name: 'String'
                }
              },
              index: {
                required: false,
                serialized_name: 'Index',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
