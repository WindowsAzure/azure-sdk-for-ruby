# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_03_30_preview
  module Models
    #
    # Class of paths for streaming
    #
    class StreamingPath

      include MsRestAzure

      # @return [StreamingPolicyStreamingProtocol] Streaming protocol. Possible
      # values include: 'Hls', 'Dash', 'SmoothStreaming', 'Download'
      attr_accessor :streaming_protocol

      # @return [EncryptionScheme] Encryption scheme. Possible values include:
      # 'NoEncryption', 'EnvelopeEncryption', 'CommonEncryptionCenc',
      # 'CommonEncryptionCbcs'
      attr_accessor :encryption_scheme

      # @return [Array<String>] Streaming paths for each protocol and
      # encryptionScheme pair
      attr_accessor :paths


      #
      # Mapper for StreamingPath class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'StreamingPath',
          type: {
            name: 'Composite',
            class_name: 'StreamingPath',
            model_properties: {
              streaming_protocol: {
                required: true,
                serialized_name: 'streamingProtocol',
                type: {
                  name: 'Enum',
                  module: 'StreamingPolicyStreamingProtocol'
                }
              },
              encryption_scheme: {
                required: true,
                serialized_name: 'encryptionScheme',
                type: {
                  name: 'Enum',
                  module: 'EncryptionScheme'
                }
              },
              paths: {
                required: false,
                serialized_name: 'paths',
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
              }
            }
          }
        }
      end
    end
  end
end
