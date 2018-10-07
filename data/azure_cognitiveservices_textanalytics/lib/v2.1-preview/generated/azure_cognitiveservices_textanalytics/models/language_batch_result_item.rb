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
    class LanguageBatchResultItem

      include MsRestAzure

      # @return [String] Unique document identifier.
      attr_accessor :id

      # @return [Array<DetectedLanguage>] A list of extracted languages.
      attr_accessor :detected_languages


      #
      # Mapper for LanguageBatchResultItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'LanguageBatchResultItem',
          type: {
            name: 'Composite',
            class_name: 'LanguageBatchResultItem',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              detected_languages: {
                required: false,
                read_only: true,
                serialized_name: 'detectedLanguages',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'DetectedLanguageElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DetectedLanguage'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end