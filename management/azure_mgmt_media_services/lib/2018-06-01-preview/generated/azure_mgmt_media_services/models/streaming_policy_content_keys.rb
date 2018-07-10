# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_06_01_preview
  module Models
    #
    # Class to specify properties of all content keys in Streaming Policy
    #
    class StreamingPolicyContentKeys

      include MsRestAzure

      # @return [DefaultKey] Default content key for an encryption scheme
      attr_accessor :default_key

      # @return [Array<StreamingPolicyContentKey>] Representing tracks needs
      # separate content key
      attr_accessor :key_to_track_mappings


      #
      # Mapper for StreamingPolicyContentKeys class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'StreamingPolicyContentKeys',
          type: {
            name: 'Composite',
            class_name: 'StreamingPolicyContentKeys',
            model_properties: {
              default_key: {
                required: false,
                serialized_name: 'defaultKey',
                type: {
                  name: 'Composite',
                  class_name: 'DefaultKey'
                }
              },
              key_to_track_mappings: {
                required: false,
                serialized_name: 'keyToTrackMappings',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StreamingPolicyContentKeyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'StreamingPolicyContentKey'
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
