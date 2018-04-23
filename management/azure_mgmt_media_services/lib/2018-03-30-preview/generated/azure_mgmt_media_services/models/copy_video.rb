# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_03_30_preview
  module Models
    #
    # A codec flag, which tells the encoder to copy the input video bitstream
    # without re-encoding.
    #
    class CopyVideo < Codec

      include MsRestAzure


      def initialize
        @@odatatype = "#Microsoft.Media.CopyVideo"
      end

      attr_accessor :@odatatype


      #
      # Mapper for CopyVideo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: '#Microsoft.Media.CopyVideo',
          type: {
            name: 'Composite',
            class_name: 'CopyVideo',
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
              }
            }
          }
        }
      end
    end
  end
end
