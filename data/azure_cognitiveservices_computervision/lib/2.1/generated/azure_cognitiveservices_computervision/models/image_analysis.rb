# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ComputerVision::V2_1
  module Models
    #
    # Result of AnalyzeImage operation.
    #
    class ImageAnalysis

      include MsRestAzure

      # @return [Array<Category>] An array indicating identified categories.
      attr_accessor :categories

      # @return [AdultInfo] An object describing whether the image contains
      # adult-oriented content and/or is racy.
      attr_accessor :adult

      # @return [ColorInfo] An object providing additional metadata describing
      # color attributes.
      attr_accessor :color

      # @return [ImageType] An object providing possible image types and
      # matching confidence levels.
      attr_accessor :image_type

      # @return [Array<ImageTag>] A list of tags with confidence level.
      attr_accessor :tags

      # @return [ImageDescriptionDetails] A collection of content tags, along
      # with a list of captions sorted by confidence level, and image metadata.
      attr_accessor :description

      # @return [Array<FaceDescription>] An array of possible faces within the
      # image.
      attr_accessor :faces

      # @return [Array<DetectedObject>] Array of objects describing what was
      # detected in the image.
      attr_accessor :objects

      # @return [Array<DetectedBrand>] Array of brands detected in the image.
      attr_accessor :brands

      # @return [String] Id of the REST API request.
      attr_accessor :request_id

      # @return [ImageMetadata]
      attr_accessor :metadata


      #
      # Mapper for ImageAnalysis class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ImageAnalysis',
          type: {
            name: 'Composite',
            class_name: 'ImageAnalysis',
            model_properties: {
              categories: {
                client_side_validation: true,
                required: false,
                serialized_name: 'categories',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'CategoryElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Category'
                      }
                  }
                }
              },
              adult: {
                client_side_validation: true,
                required: false,
                serialized_name: 'adult',
                type: {
                  name: 'Composite',
                  class_name: 'AdultInfo'
                }
              },
              color: {
                client_side_validation: true,
                required: false,
                serialized_name: 'color',
                type: {
                  name: 'Composite',
                  class_name: 'ColorInfo'
                }
              },
              image_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'imageType',
                type: {
                  name: 'Composite',
                  class_name: 'ImageType'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ImageTagElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ImageTag'
                      }
                  }
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'Composite',
                  class_name: 'ImageDescriptionDetails'
                }
              },
              faces: {
                client_side_validation: true,
                required: false,
                serialized_name: 'faces',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'FaceDescriptionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'FaceDescription'
                      }
                  }
                }
              },
              objects: {
                client_side_validation: true,
                required: false,
                serialized_name: 'objects',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DetectedObjectElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DetectedObject'
                      }
                  }
                }
              },
              brands: {
                client_side_validation: true,
                required: false,
                serialized_name: 'brands',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DetectedBrandElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DetectedBrand'
                      }
                  }
                }
              },
              request_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'requestId',
                type: {
                  name: 'String'
                }
              },
              metadata: {
                client_side_validation: true,
                required: false,
                serialized_name: 'metadata',
                type: {
                  name: 'Composite',
                  class_name: 'ImageMetadata'
                }
              }
            }
          }
        }
      end
    end
  end
end