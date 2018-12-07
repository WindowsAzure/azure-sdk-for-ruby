# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorSimple8000Series::Mgmt::V2017_06_01
  module Models
    #
    # The metadata of the volume container, that is being considered as part of
    # a failover set.
    #
    class VolumeContainerFailoverMetadata

      include MsRestAzure

      # @return [String] The path ID of the volume container.
      attr_accessor :volume_container_id

      # @return [Array<VolumeFailoverMetadata>] The list of metadata of volumes
      # inside the volume container, which contains valid cloud snapshots.
      attr_accessor :volumes


      #
      # Mapper for VolumeContainerFailoverMetadata class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VolumeContainerFailoverMetadata',
          type: {
            name: 'Composite',
            class_name: 'VolumeContainerFailoverMetadata',
            model_properties: {
              volume_container_id: {
                required: false,
                serialized_name: 'volumeContainerId',
                type: {
                  name: 'String'
                }
              },
              volumes: {
                required: false,
                serialized_name: 'volumes',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'VolumeFailoverMetadataElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VolumeFailoverMetadata'
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
