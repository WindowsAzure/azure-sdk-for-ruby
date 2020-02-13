# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # A copy activity Avro sink.
    #
    class AvroSink < CopySink

      include MsRestAzure


      def initialize
        @type = "AvroSink"
      end

      attr_accessor :type

      # @return [StoreWriteSettings] Avro store settings.
      attr_accessor :store_settings

      # @return [AvroWriteSettings] Avro format settings.
      attr_accessor :format_settings


      #
      # Mapper for AvroSink class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AvroSink',
          type: {
            name: 'Composite',
            class_name: 'AvroSink',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              write_batch_size: {
                client_side_validation: true,
                required: false,
                serialized_name: 'writeBatchSize',
                type: {
                  name: 'Object'
                }
              },
              write_batch_timeout: {
                client_side_validation: true,
                required: false,
                serialized_name: 'writeBatchTimeout',
                type: {
                  name: 'Object'
                }
              },
              sink_retry_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sinkRetryCount',
                type: {
                  name: 'Object'
                }
              },
              sink_retry_wait: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sinkRetryWait',
                type: {
                  name: 'Object'
                }
              },
              max_concurrent_connections: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxConcurrentConnections',
                type: {
                  name: 'Object'
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              store_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'storeSettings',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'type',
                  uber_parent: 'StoreWriteSettings',
                  class_name: 'StoreWriteSettings'
                }
              },
              format_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'formatSettings',
                type: {
                  name: 'Composite',
                  class_name: 'AvroWriteSettings'
                }
              }
            }
          }
        }
      end
    end
  end
end
