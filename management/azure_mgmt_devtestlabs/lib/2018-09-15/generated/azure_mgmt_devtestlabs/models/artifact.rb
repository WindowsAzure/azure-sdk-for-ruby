# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2018_09_15
  module Models
    #
    # An artifact.
    #
    class Artifact < Resource

      include MsRestAzure

      # @return [String] The artifact's title.
      attr_accessor :title

      # @return [String] The artifact's description.
      attr_accessor :description

      # @return [String] The artifact's publisher.
      attr_accessor :publisher

      # @return [String] The file path to the artifact.
      attr_accessor :file_path

      # @return [String] The URI to the artifact icon.
      attr_accessor :icon

      # @return [String] The artifact's target OS.
      attr_accessor :target_os_type

      # @return The artifact's parameters.
      attr_accessor :parameters

      # @return [DateTime] The artifact's creation date.
      attr_accessor :created_date


      #
      # Mapper for Artifact class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Artifact',
          type: {
            name: 'Composite',
            class_name: 'Artifact',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              title: {
                required: false,
                read_only: true,
                serialized_name: 'properties.title',
                type: {
                  name: 'String'
                }
              },
              description: {
                required: false,
                read_only: true,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              publisher: {
                required: false,
                read_only: true,
                serialized_name: 'properties.publisher',
                type: {
                  name: 'String'
                }
              },
              file_path: {
                required: false,
                read_only: true,
                serialized_name: 'properties.filePath',
                type: {
                  name: 'String'
                }
              },
              icon: {
                required: false,
                read_only: true,
                serialized_name: 'properties.icon',
                type: {
                  name: 'String'
                }
              },
              target_os_type: {
                required: false,
                read_only: true,
                serialized_name: 'properties.targetOsType',
                type: {
                  name: 'String'
                }
              },
              parameters: {
                required: false,
                read_only: true,
                serialized_name: 'properties.parameters',
                type: {
                  name: 'Object'
                }
              },
              created_date: {
                required: false,
                read_only: true,
                serialized_name: 'properties.createdDate',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
