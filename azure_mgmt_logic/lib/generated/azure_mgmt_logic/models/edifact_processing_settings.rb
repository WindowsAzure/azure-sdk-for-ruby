# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Logic
  module Models
    #
    # Model object.
    #
    class EdifactProcessingSettings

      include MsRestAzure

      # @return [Boolean] The value indicating whether to mask security
      # information.
      attr_accessor :mask_security_info

      # @return [Boolean] The value indicating whether to preserve interchange.
      attr_accessor :preserve_interchange

      # @return [Boolean] The value indicating whether to suspend interchange
      # on error.
      attr_accessor :suspend_interchange_on_error

      # @return [Boolean] The value indicating whether to create empty xml
      # tags for trailing separators.
      attr_accessor :create_empty_xml_tags_for_trailing_separators

      # @return [Boolean] The value indicating whether to use dot as decimal
      # separator.
      attr_accessor :use_dot_as_decimal_separator


      #
      # Mapper for EdifactProcessingSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EdifactProcessingSettings',
          type: {
            name: 'Composite',
            class_name: 'EdifactProcessingSettings',
            model_properties: {
              mask_security_info: {
                required: false,
                serialized_name: 'maskSecurityInfo',
                type: {
                  name: 'Boolean'
                }
              },
              preserve_interchange: {
                required: false,
                serialized_name: 'preserveInterchange',
                type: {
                  name: 'Boolean'
                }
              },
              suspend_interchange_on_error: {
                required: false,
                serialized_name: 'suspendInterchangeOnError',
                type: {
                  name: 'Boolean'
                }
              },
              create_empty_xml_tags_for_trailing_separators: {
                required: false,
                serialized_name: 'createEmptyXmlTagsForTrailingSeparators',
                type: {
                  name: 'Boolean'
                }
              },
              use_dot_as_decimal_separator: {
                required: false,
                serialized_name: 'useDotAsDecimalSeparator',
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
