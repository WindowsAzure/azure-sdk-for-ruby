# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ComputerVision::V2_1
  module Models
    #
    # Image metadata.
    #
    class ImageMetadata

      include MsRestAzure

      # @return [Integer] Image width, in pixels.
      attr_accessor :width

      # @return [Integer] Image height, in pixels.
      attr_accessor :height

      # @return [String] Image format.
      attr_accessor :format


      #
      # Mapper for ImageMetadata class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ImageMetadata',
          type: {
            name: 'Composite',
            class_name: 'ImageMetadata',
            model_properties: {
              width: {
                client_side_validation: true,
                required: false,
                serialized_name: 'width',
                type: {
                  name: 'Number'
                }
              },
              height: {
                client_side_validation: true,
                required: false,
                serialized_name: 'height',
                type: {
                  name: 'Number'
                }
              },
              format: {
                client_side_validation: true,
                required: false,
                serialized_name: 'format',
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
