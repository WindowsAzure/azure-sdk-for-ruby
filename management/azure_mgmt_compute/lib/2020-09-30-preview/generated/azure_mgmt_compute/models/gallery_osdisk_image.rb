# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2020_09_30_preview
  module Models
    #
    # This is the OS disk image.
    #
    class GalleryOSDiskImage < GalleryDiskImage

      include MsRestAzure


      #
      # Mapper for GalleryOSDiskImage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GalleryOSDiskImage',
          type: {
            name: 'Composite',
            class_name: 'GalleryOSDiskImage',
            model_properties: {
              size_in_gb: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'sizeInGB',
                type: {
                  name: 'Number'
                }
              },
              host_caching: {
                client_side_validation: true,
                required: false,
                serialized_name: 'hostCaching',
                type: {
                  name: 'Enum',
                  module: 'HostCaching'
                }
              },
              source: {
                client_side_validation: true,
                required: false,
                serialized_name: 'source',
                type: {
                  name: 'Composite',
                  class_name: 'GalleryArtifactVersionSource'
                }
              }
            }
          }
        }
      end
    end
  end
end
