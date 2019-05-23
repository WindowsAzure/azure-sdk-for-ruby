# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::LuisAuthoring::V2_0
  module Models
    #
    # Object model for adding a batch of sublists to an existing list entity.
    #
    class ClosedListModelPatchObject

      include MsRestAzure

      # @return [Array<WordListObject>] Sublists to add.
      attr_accessor :sub_lists


      #
      # Mapper for ClosedListModelPatchObject class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ClosedListModelPatchObject',
          type: {
            name: 'Composite',
            class_name: 'ClosedListModelPatchObject',
            model_properties: {
              sub_lists: {
                client_side_validation: true,
                required: false,
                serialized_name: 'subLists',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'WordListObjectElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'WordListObject'
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
