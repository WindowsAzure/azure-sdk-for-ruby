# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::V2018_01_01
  module Models
    #
    # The target of the event.
    #
    class ContainerRegistryArtifactEventTarget

      include MsRestAzure

      # @return [String] The MIME type of the artifact.
      attr_accessor :media_type

      # @return [Integer] The size in bytes of the artifact.
      attr_accessor :size

      # @return [String] The digest of the artifact.
      attr_accessor :digest

      # @return [String] The repository name of the artifact.
      attr_accessor :repository

      # @return [String] The tag of the artifact.
      attr_accessor :tag

      # @return [String] The name of the artifact.
      attr_accessor :name

      # @return [String] The version of the artifact.
      attr_accessor :version


      #
      # Mapper for ContainerRegistryArtifactEventTarget class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ContainerRegistryArtifactEventTarget',
          type: {
            name: 'Composite',
            class_name: 'ContainerRegistryArtifactEventTarget',
            model_properties: {
              media_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'mediaType',
                type: {
                  name: 'String'
                }
              },
              size: {
                client_side_validation: true,
                required: false,
                serialized_name: 'size',
                type: {
                  name: 'Number'
                }
              },
              digest: {
                client_side_validation: true,
                required: false,
                serialized_name: 'digest',
                type: {
                  name: 'String'
                }
              },
              repository: {
                client_side_validation: true,
                required: false,
                serialized_name: 'repository',
                type: {
                  name: 'String'
                }
              },
              tag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tag',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'version',
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
