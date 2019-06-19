# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2018_07_01_preview
  module Models
    #
    # The AS2 agreement envelope settings.
    #
    class AS2EnvelopeSettings

      include MsRestAzure

      # @return [String] The message content type.
      attr_accessor :message_content_type

      # @return [Boolean] The value indicating whether to transmit file name in
      # mime header.
      attr_accessor :transmit_file_name_in_mime_header

      # @return [String] The template for file name.
      attr_accessor :file_name_template

      # @return [Boolean] The value indicating whether to suspend message on
      # file name generation error.
      attr_accessor :suspend_message_on_file_name_generation_error

      # @return [Boolean] The value indicating whether to auto generate file
      # name.
      attr_accessor :autogenerate_file_name


      #
      # Mapper for AS2EnvelopeSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AS2EnvelopeSettings',
          type: {
            name: 'Composite',
            class_name: 'AS2EnvelopeSettings',
            model_properties: {
              message_content_type: {
                required: true,
                serialized_name: 'messageContentType',
                type: {
                  name: 'String'
                }
              },
              transmit_file_name_in_mime_header: {
                required: true,
                serialized_name: 'transmitFileNameInMimeHeader',
                type: {
                  name: 'Boolean'
                }
              },
              file_name_template: {
                required: true,
                serialized_name: 'fileNameTemplate',
                type: {
                  name: 'String'
                }
              },
              suspend_message_on_file_name_generation_error: {
                required: true,
                serialized_name: 'suspendMessageOnFileNameGenerationError',
                type: {
                  name: 'Boolean'
                }
              },
              autogenerate_file_name: {
                required: true,
                serialized_name: 'autogenerateFileName',
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
