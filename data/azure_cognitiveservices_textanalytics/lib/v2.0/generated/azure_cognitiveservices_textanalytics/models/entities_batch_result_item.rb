# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::TextAnalytics::V2_0
  module Models
    #
    # Model object.
    #
    #
    class EntitiesBatchResultItem

      include MsRestAzure

      # @return [String] Unique document identifier.
      attr_accessor :id

      # @return [Array<EntityRecord>] Recognized entities in the document.
      attr_accessor :entities


      #
      # Mapper for EntitiesBatchResultItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EntitiesBatchResultItem',
          type: {
            name: 'Composite',
            class_name: 'EntitiesBatchResultItem',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              entities: {
                required: false,
                read_only: true,
                serialized_name: 'entities',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'EntityRecordElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EntityRecord'
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