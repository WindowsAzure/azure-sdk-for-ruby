# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ComputerVision::V2_1
  module Models
    #
    # A collection of content tags, along with a list of captions sorted by
    # confidence level, and image metadata.
    #
    class ImageDescriptionDetails

      include MsRestAzure

      # @return [Array<String>] A collection of image tags.
      attr_accessor :tags

      # @return [Array<ImageCaption>] A list of captions, sorted by confidence
      # level.
      attr_accessor :captions


      #
      # Mapper for ImageDescriptionDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ImageDescriptionDetails',
          type: {
            name: 'Composite',
            class_name: 'ImageDescriptionDetails',
            model_properties: {
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              captions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'captions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ImageCaptionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ImageCaption'
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
