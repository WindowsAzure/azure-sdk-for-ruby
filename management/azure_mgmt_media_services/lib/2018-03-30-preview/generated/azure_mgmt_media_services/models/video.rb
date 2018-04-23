# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_03_30_preview
  module Models
    #
    # Describes the basic properties for encoding the input video.
    #
    class Video < Codec

      include MsRestAzure


      def initialize
        @@odatatype = "#Microsoft.Media.Video"
      end

      attr_accessor :@odatatype

      # @return [Duration] The distance between two key frames, thereby
      # defining a group of pictures (GOP). The value should be a non-zero
      # integer in the range [1, 30] seconds, specified in ISO 8601 format. The
      # default is 2 seconds (PT2S).
      attr_accessor :key_frame_interval

      # @return [StretchMode] The resizing mode - how the input video will be
      # resized to fit the desired output resolution(s). Default is AutoSize.
      # Possible values include: 'None', 'AutoSize', 'AutoFit'
      attr_accessor :stretch_mode


      #
      # Mapper for Video class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: '#Microsoft.Media.Video',
          type: {
            name: 'Composite',
            class_name: 'Video',
            model_properties: {
              label: {
                client_side_validation: true,
                required: false,
                serialized_name: 'label',
                type: {
                  name: 'String'
                }
              },
              @odatatype: {
                client_side_validation: true,
                required: true,
                serialized_name: '@odata\\.type',
                type: {
                  name: 'String'
                }
              },
              key_frame_interval: {
                client_side_validation: true,
                required: false,
                serialized_name: 'keyFrameInterval',
                type: {
                  name: 'TimeSpan'
                }
              },
              stretch_mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'stretchMode',
                type: {
                  name: 'Enum',
                  module: 'StretchMode'
                }
              }
            }
          }
        }
      end
    end
  end
end
