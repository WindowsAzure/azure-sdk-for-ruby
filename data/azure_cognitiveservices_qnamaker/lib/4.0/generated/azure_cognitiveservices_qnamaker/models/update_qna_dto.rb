# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Qnamaker::V4_0
  module Models
    #
    # PATCH Body schema for Update Qna List
    #
    class UpdateQnaDTO

      include MsRestAzure

      # @return [Integer] Unique id for the Q-A
      attr_accessor :id

      # @return [String] Answer text
      attr_accessor :answer

      # @return [String] Source from which Q-A was indexed. eg.
      # https://docs.microsoft.com/en-us/azure/cognitive-services/QnAMaker/FAQs
      attr_accessor :source

      # @return [UpdateQnaDTOQuestions] List of questions associated with the
      # answer.
      attr_accessor :questions

      # @return [UpdateQnaDTOMetadata] List of metadata associated with the
      # answer to be updated
      attr_accessor :metadata


      #
      # Mapper for UpdateQnaDTO class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UpdateQnaDTO',
          type: {
            name: 'Composite',
            class_name: 'UpdateQnaDTO',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                constraints: {
                  InclusiveMaximum: 2147483647,
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              },
              answer: {
                client_side_validation: true,
                required: false,
                serialized_name: 'answer',
                type: {
                  name: 'String'
                }
              },
              source: {
                client_side_validation: true,
                required: false,
                serialized_name: 'source',
                constraints: {
                  MaxLength: 300
                },
                type: {
                  name: 'String'
                }
              },
              questions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'questions',
                type: {
                  name: 'Composite',
                  class_name: 'UpdateQnaDTOQuestions'
                }
              },
              metadata: {
                client_side_validation: true,
                required: false,
                serialized_name: 'metadata',
                type: {
                  name: 'Composite',
                  class_name: 'UpdateQnaDTOMetadata'
                }
              }
            }
          }
        }
      end
    end
  end
end
