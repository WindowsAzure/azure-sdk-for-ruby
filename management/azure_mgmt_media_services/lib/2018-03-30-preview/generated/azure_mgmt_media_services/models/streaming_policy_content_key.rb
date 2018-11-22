# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_03_30_preview
  module Models
    #
    # Class to specify properties of content key
    #
    class StreamingPolicyContentKey

      include MsRestAzure

      # @return [String] Label can be used to specify Content Key when creating
      # Streaming Locator
      attr_accessor :label

      # @return [String] Policy used by Content Key
      attr_accessor :policy_name

      # @return [Array<TrackSelection>] Tracks which use this content key
      attr_accessor :tracks


      #
      # Mapper for StreamingPolicyContentKey class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'StreamingPolicyContentKey',
          type: {
            name: 'Composite',
            class_name: 'StreamingPolicyContentKey',
            model_properties: {
              label: {
                required: false,
                serialized_name: 'label',
                type: {
                  name: 'String'
                }
              },
              policy_name: {
                required: false,
                serialized_name: 'policyName',
                type: {
                  name: 'String'
                }
              },
              tracks: {
                required: false,
                serialized_name: 'tracks',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'TrackSelectionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TrackSelection'
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
