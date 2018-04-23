# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_03_30_preview
  module Models
    #
    # Describes a built-in preset for encoding the input video with the
    # Standard Encoder.
    #
    class BuiltInStandardEncoderPreset < Preset

      include MsRestAzure


      def initialize
        @@odatatype = "#Microsoft.Media.BuiltInStandardEncoderPreset"
      end

      attr_accessor :@odatatype

      # @return [EncoderNamedPreset] The built-in preset to be used for
      # encoding videos. Possible values include: 'AdaptiveStreaming',
      # 'AACGoodQualityAudio', 'H264MultipleBitrate1080p',
      # 'H264MultipleBitrate720p', 'H264MultipleBitrateSD'
      attr_accessor :preset_name


      #
      # Mapper for BuiltInStandardEncoderPreset class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: '#Microsoft.Media.BuiltInStandardEncoderPreset',
          type: {
            name: 'Composite',
            class_name: 'BuiltInStandardEncoderPreset',
            model_properties: {
              @odatatype: {
                client_side_validation: true,
                required: true,
                serialized_name: '@odata\\.type',
                type: {
                  name: 'String'
                }
              },
              preset_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'presetName',
                type: {
                  name: 'Enum',
                  module: 'EncoderNamedPreset'
                }
              }
            }
          }
        }
      end
    end
  end
end
