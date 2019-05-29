# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_07_01
  module Models
    #
    # Represents an Asset for input into a Job.
    #
    class JobInputAsset < JobInputClip

      include MsRestAzure


      def initialize
        @@odatatype = "#Microsoft.Media.JobInputAsset"
      end

      attr_accessor :@odatatype

      # @return [String] The name of the input Asset.
      attr_accessor :asset_name


      #
      # Mapper for JobInputAsset class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: '#Microsoft.Media.JobInputAsset',
          type: {
            name: 'Composite',
            class_name: 'JobInputAsset',
            model_properties: {
              @odatatype: {
                required: true,
                serialized_name: '@odata\\.type',
                type: {
                  name: 'String'
                }
              },
              files: {
                required: false,
                serialized_name: 'files',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              label: {
                required: false,
                serialized_name: 'label',
                type: {
                  name: 'String'
                }
              },
              asset_name: {
                required: true,
                serialized_name: 'assetName',
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
