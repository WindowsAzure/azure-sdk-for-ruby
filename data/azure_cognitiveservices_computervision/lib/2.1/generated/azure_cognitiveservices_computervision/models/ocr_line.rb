# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ComputerVision::V2_1
  module Models
    #
    # An object describing a single recognized line of text.
    #
    class OcrLine

      include MsRestAzure

      # @return [String] Bounding box of a recognized line. The four integers
      # represent the x-coordinate of the left edge, the y-coordinate of the
      # top edge, width, and height of the bounding box, in the coordinate
      # system of the input image, after it has been rotated around its center
      # according to the detected text angle (see textAngle property), with the
      # origin at the top-left corner, and the y-axis pointing down.
      attr_accessor :bounding_box

      # @return [Array<OcrWord>] An array of objects, where each object
      # represents a recognized word.
      attr_accessor :words


      #
      # Mapper for OcrLine class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OcrLine',
          type: {
            name: 'Composite',
            class_name: 'OcrLine',
            model_properties: {
              bounding_box: {
                client_side_validation: true,
                required: false,
                serialized_name: 'boundingBox',
                type: {
                  name: 'String'
                }
              },
              words: {
                client_side_validation: true,
                required: false,
                serialized_name: 'words',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'OcrWordElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'OcrWord'
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
