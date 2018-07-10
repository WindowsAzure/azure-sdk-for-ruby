# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_06_01_preview
  module Models
    #
    # Describes all the filtering operations, such as de-interlacing, rotation
    # etc. that are to be applied to the input media before encoding.
    #
    class Filters

      include MsRestAzure

      # @return [Deinterlace] The de-interlacing settings.
      attr_accessor :deinterlace

      # @return [Rotation] The rotation, if any, to be applied to the input
      # video, before it is encoded. Default is Auto. Possible values include:
      # 'Auto', 'None', 'Rotate0', 'Rotate90', 'Rotate180', 'Rotate270'
      attr_accessor :rotation

      # @return [Rectangle] The parameters for the rectangular window with
      # which to crop the input video.
      attr_accessor :crop

      # @return [Array<Overlay>] The properties of overlays to be applied to
      # the input video. These could be audio, image or video overlays.
      attr_accessor :overlays


      #
      # Mapper for Filters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Filters',
          type: {
            name: 'Composite',
            class_name: 'Filters',
            model_properties: {
              deinterlace: {
                required: false,
                serialized_name: 'deinterlace',
                type: {
                  name: 'Composite',
                  class_name: 'Deinterlace'
                }
              },
              rotation: {
                required: false,
                serialized_name: 'rotation',
                type: {
                  name: 'Enum',
                  module: 'Rotation'
                }
              },
              crop: {
                required: false,
                serialized_name: 'crop',
                type: {
                  name: 'Composite',
                  class_name: 'Rectangle'
                }
              },
              overlays: {
                required: false,
                serialized_name: 'overlays',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'OverlayElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: '@odata.type',
                        uber_parent: 'Overlay',
                        class_name: 'Overlay'
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
