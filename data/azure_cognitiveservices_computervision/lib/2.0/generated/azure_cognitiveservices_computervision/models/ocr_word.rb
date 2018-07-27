# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ComputerVision::V2_0
  module Models
    #
    # Information on a recognized word.
    #
    class OcrWord

      include MsRestAzure

      # @return [String] Bounding box of a recognized word. The four integers
      # represent the x-coordinate of the left edge, the y-coordinate of the
      # top edge, width, and height of the bounding box, in the coordinate
      # system of the input image, after it has been rotated around its center
      # according to the detected text angle (see textAngle property), with the
      # origin at the top-left corner, and the y-axis pointing down.
      attr_accessor :bounding_box

      # @return [String] String value of a recognized word.
      attr_accessor :text


      #
      # Mapper for OcrWord class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OcrWord',
          type: {
            name: 'Composite',
            class_name: 'OcrWord',
            model_properties: {
              bounding_box: {
                client_side_validation: true,
                required: false,
                serialized_name: 'boundingBox',
                type: {
                  name: 'String'
                }
              },
              text: {
                client_side_validation: true,
                required: false,
                serialized_name: 'text',
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
