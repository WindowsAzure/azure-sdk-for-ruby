# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_03_30_preview
  module Models
    #
    # Describes the properties of an audio overlay.
    #
    class AudioOverlay < Overlay

      include MsRestAzure


      def initialize
        @@odatatype = "#Microsoft.Media.AudioOverlay"
      end

      attr_accessor :@odatatype


      #
      # Mapper for AudioOverlay class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: '#Microsoft.Media.AudioOverlay',
          type: {
            name: 'Composite',
            class_name: 'AudioOverlay',
            model_properties: {
              input_label: {
                client_side_validation: true,
                required: false,
                serialized_name: 'inputLabel',
                type: {
                  name: 'String'
                }
              },
              start: {
                client_side_validation: true,
                required: false,
                serialized_name: 'start',
                type: {
                  name: 'TimeSpan'
                }
              },
              end_property: {
                client_side_validation: true,
                required: false,
                serialized_name: 'end',
                type: {
                  name: 'TimeSpan'
                }
              },
              fade_in_duration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fadeInDuration',
                type: {
                  name: 'TimeSpan'
                }
              },
              fade_out_duration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fadeOutDuration',
                type: {
                  name: 'TimeSpan'
                }
              },
              audio_gain_level: {
                client_side_validation: true,
                required: false,
                serialized_name: 'audioGainLevel',
                type: {
                  name: 'Double'
                }
              },
              @odatatype: {
                client_side_validation: true,
                required: true,
                serialized_name: '@odata\\.type',
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
