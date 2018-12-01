# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::NewsSearch::V1_0
  module Models
    #
    # Defines an image
    #
    class ImageObject < MediaObject

      include MsRestAzure


      def initialize
        @_type = "ImageObject"
      end

      attr_accessor :_type

      # @return [ImageObject] The URL to a thumbnail of the image
      attr_accessor :thumbnail


      #
      # Mapper for ImageObject class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ImageObject',
          type: {
            name: 'Composite',
            class_name: 'ImageObject',
            model_properties: {
              _type: {
                required: true,
                serialized_name: '_type',
                type: {
                  name: 'String'
                }
              },
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              web_search_url: {
                required: false,
                read_only: true,
                serialized_name: 'webSearchUrl',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              url: {
                required: false,
                read_only: true,
                serialized_name: 'url',
                type: {
                  name: 'String'
                }
              },
              image: {
                required: false,
                read_only: true,
                serialized_name: 'image',
                type: {
                  name: 'Composite',
                  class_name: 'ImageObject'
                }
              },
              description: {
                required: false,
                read_only: true,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              alternate_name: {
                required: false,
                read_only: true,
                serialized_name: 'alternateName',
                type: {
                  name: 'String'
                }
              },
              bing_id: {
                required: false,
                read_only: true,
                serialized_name: 'bingId',
                type: {
                  name: 'String'
                }
              },
              thumbnail_url: {
                required: false,
                read_only: true,
                serialized_name: 'thumbnailUrl',
                type: {
                  name: 'String'
                }
              },
              provider: {
                required: false,
                read_only: true,
                serialized_name: 'provider',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ThingElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Thing'
                      }
                  }
                }
              },
              date_published: {
                required: false,
                read_only: true,
                serialized_name: 'datePublished',
                type: {
                  name: 'String'
                }
              },
              video: {
                required: false,
                read_only: true,
                serialized_name: 'video',
                type: {
                  name: 'Composite',
                  class_name: 'VideoObject'
                }
              },
              content_url: {
                required: false,
                read_only: true,
                serialized_name: 'contentUrl',
                type: {
                  name: 'String'
                }
              },
              width: {
                required: false,
                read_only: true,
                serialized_name: 'width',
                type: {
                  name: 'Number'
                }
              },
              height: {
                required: false,
                read_only: true,
                serialized_name: 'height',
                type: {
                  name: 'Number'
                }
              },
              thumbnail: {
                required: false,
                read_only: true,
                serialized_name: 'thumbnail',
                type: {
                  name: 'Composite',
                  class_name: 'ImageObject'
                }
              }
            }
          }
        }
      end
    end
  end
end
