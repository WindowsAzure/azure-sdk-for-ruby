# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::EntitySearch::V1_0
  module Models
    #
    # Model object.
    #
    #
    class MediaObject < CreativeWork

      include MsRestAzure


      def initialize
        @_type = "MediaObject"
      end

      attr_accessor :_type

      # @return [String] Original URL to retrieve the source (file) for the
      # media object (e.g the source URL for the image).
      attr_accessor :content_url

      # @return [String] URL of the page that hosts the media object.
      attr_accessor :host_page_url

      # @return [Integer] The width of the source media object, in pixels.
      attr_accessor :width

      # @return [Integer] The height of the source media object, in pixels.
      attr_accessor :height


      #
      # Mapper for MediaObject class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MediaObject',
          type: {
            name: 'Composite',
            class_name: 'MediaObject',
            model_properties: {
              _type: {
                client_side_validation: true,
                required: true,
                serialized_name: '_type',
                type: {
                  name: 'String'
                }
              },
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              contractual_rules: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'contractualRules',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ContractualRulesContractualRuleElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: '_type',
                        uber_parent: 'ContractualRulesContractualRule',
                        class_name: 'ContractualRulesContractualRule'
                      }
                  }
                }
              },
              web_search_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'webSearchUrl',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'url',
                type: {
                  name: 'String'
                }
              },
              image: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'image',
                type: {
                  name: 'Composite',
                  class_name: 'ImageObject'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              entity_presentation_info: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'entityPresentationInfo',
                type: {
                  name: 'Composite',
                  class_name: 'EntitiesEntityPresentationInfo'
                }
              },
              bing_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'bingId',
                type: {
                  name: 'String'
                }
              },
              thumbnail_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'thumbnailUrl',
                type: {
                  name: 'String'
                }
              },
              provider: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'provider',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ThingElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Thing'
                      }
                  }
                }
              },
              text: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'text',
                type: {
                  name: 'String'
                }
              },
              content_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'contentUrl',
                type: {
                  name: 'String'
                }
              },
              host_page_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'hostPageUrl',
                type: {
                  name: 'String'
                }
              },
              width: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'width',
                type: {
                  name: 'Number'
                }
              },
              height: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'height',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
