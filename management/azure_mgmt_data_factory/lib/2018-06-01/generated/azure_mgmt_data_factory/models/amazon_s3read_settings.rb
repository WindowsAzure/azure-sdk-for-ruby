# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Azure data lake store read settings.
    #
    class AmazonS3ReadSettings < StoreReadSettings

      include MsRestAzure


      def initialize
        @type = "AmazonS3ReadSettings"
      end

      attr_accessor :type

      # @return If true, files under the folder path will be read recursively.
      # Default is true. Type: boolean (or Expression with resultType boolean).
      attr_accessor :recursive

      # @return AmazonS3 wildcardFolderPath. Type: string (or Expression with
      # resultType string).
      attr_accessor :wildcard_folder_path

      # @return AmazonS3 wildcardFileName. Type: string (or Expression with
      # resultType string).
      attr_accessor :wildcard_file_name

      # @return The prefix filter for the S3 object name. Type: string (or
      # Expression with resultType string).
      attr_accessor :prefix

      # @return [Boolean] Indicates whether to enable partition discovery.
      attr_accessor :enable_partition_discovery

      # @return The start of file's modified datetime. Type: string (or
      # Expression with resultType string).
      attr_accessor :modified_datetime_start

      # @return The end of file's modified datetime. Type: string (or
      # Expression with resultType string).
      attr_accessor :modified_datetime_end


      #
      # Mapper for AmazonS3ReadSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AmazonS3ReadSettings',
          type: {
            name: 'Composite',
            class_name: 'AmazonS3ReadSettings',
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
              recursive: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recursive',
                type: {
                  name: 'Object'
                }
              },
              wildcard_folder_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'wildcardFolderPath',
                type: {
                  name: 'Object'
                }
              },
              wildcard_file_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'wildcardFileName',
                type: {
                  name: 'Object'
                }
              },
              prefix: {
                client_side_validation: true,
                required: false,
                serialized_name: 'prefix',
                type: {
                  name: 'Object'
                }
              },
              enable_partition_discovery: {
                client_side_validation: true,
                required: false,
                serialized_name: 'enablePartitionDiscovery',
                type: {
                  name: 'Boolean'
                }
              },
              modified_datetime_start: {
                client_side_validation: true,
                required: false,
                serialized_name: 'modifiedDatetimeStart',
                type: {
                  name: 'Object'
                }
              },
              modified_datetime_end: {
                client_side_validation: true,
                required: false,
                serialized_name: 'modifiedDatetimeEnd',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
