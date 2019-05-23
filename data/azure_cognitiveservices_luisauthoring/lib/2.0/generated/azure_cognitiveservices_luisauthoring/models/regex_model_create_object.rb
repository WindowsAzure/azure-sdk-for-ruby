# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::LuisAuthoring::V2_0
  module Models
    #
    # Model object for creating a regular expression entity model.
    #
    class RegexModelCreateObject

      include MsRestAzure

      # @return [String] The regular expression entity pattern.
      attr_accessor :regex_pattern

      # @return [String] The model name.
      attr_accessor :name


      #
      # Mapper for RegexModelCreateObject class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RegexModelCreateObject',
          type: {
            name: 'Composite',
            class_name: 'RegexModelCreateObject',
            model_properties: {
              regex_pattern: {
                client_side_validation: true,
                required: false,
                serialized_name: 'regexPattern',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
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
