# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::V2018_01_01
  module Models
    #
    # Ingest fragment dropped event data.
    #
    class MediaLiveEventIncomingDataChunkDroppedEventData

      include MsRestAzure

      # @return [String] Gets the timestamp of the data chunk dropped.
      attr_accessor :timestamp

      # @return [String] Gets the type of the track (Audio / Video).
      attr_accessor :track_type

      # @return [Integer] Gets the bitrate of the track.
      attr_accessor :bitrate

      # @return [String] Gets the timescale of the Timestamp.
      attr_accessor :timescale

      # @return [String] Gets the result code for fragment drop operation.
      attr_accessor :result_code

      # @return [String] Gets the name of the track for which fragment is
      # dropped.
      attr_accessor :track_name


      #
      # Mapper for MediaLiveEventIncomingDataChunkDroppedEventData class as
      # Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MediaLiveEventIncomingDataChunkDroppedEventData',
          type: {
            name: 'Composite',
            class_name: 'MediaLiveEventIncomingDataChunkDroppedEventData',
            model_properties: {
              timestamp: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'timestamp',
                type: {
                  name: 'String'
                }
              },
              track_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'trackType',
                type: {
                  name: 'String'
                }
              },
              bitrate: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'bitrate',
                type: {
                  name: 'Number'
                }
              },
              timescale: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'timescale',
                type: {
                  name: 'String'
                }
              },
              result_code: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'resultCode',
                type: {
                  name: 'String'
                }
              },
              track_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'trackName',
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
