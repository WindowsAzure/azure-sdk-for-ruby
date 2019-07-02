# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2018_09_15
  module Models
    #
    # A custom image.
    #
    class CustomImage < Resource

      include MsRestAzure

      # @return [CustomImagePropertiesFromVm] The virtual machine from which
      # the image is to be created.
      attr_accessor :vm

      # @return [CustomImagePropertiesCustom] The VHD from which the image is
      # to be created.
      attr_accessor :vhd

      # @return [String] The description of the custom image.
      attr_accessor :description

      # @return [String] The author of the custom image.
      attr_accessor :author

      # @return [DateTime] The creation date of the custom image.
      attr_accessor :creation_date

      # @return [String] The Managed Image Id backing the custom image.
      attr_accessor :managed_image_id

      # @return [String] The Managed Snapshot Id backing the custom image.
      attr_accessor :managed_snapshot_id

      # @return [Array<DataDiskStorageTypeInfo>] Storage information about the
      # data disks present in the custom image
      attr_accessor :data_disk_storage_info

      # @return [CustomImagePropertiesFromPlan] Storage information about the
      # plan related to this custom image
      attr_accessor :custom_image_plan

      # @return [Boolean] Whether or not the custom images underlying
      # offer/plan has been enabled for programmatic deployment
      attr_accessor :is_plan_authorized

      # @return [String] The provisioning status of the resource.
      attr_accessor :provisioning_state

      # @return [String] The unique immutable identifier of a resource (Guid).
      attr_accessor :unique_identifier


      #
      # Mapper for CustomImage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CustomImage',
          type: {
            name: 'Composite',
            class_name: 'CustomImage',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              vm: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.vm',
                type: {
                  name: 'Composite',
                  class_name: 'CustomImagePropertiesFromVm'
                }
              },
              vhd: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.vhd',
                type: {
                  name: 'Composite',
                  class_name: 'CustomImagePropertiesCustom'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              author: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.author',
                type: {
                  name: 'String'
                }
              },
              creation_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.creationDate',
                type: {
                  name: 'DateTime'
                }
              },
              managed_image_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.managedImageId',
                type: {
                  name: 'String'
                }
              },
              managed_snapshot_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.managedSnapshotId',
                type: {
                  name: 'String'
                }
              },
              data_disk_storage_info: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.dataDiskStorageInfo',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DataDiskStorageTypeInfoElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DataDiskStorageTypeInfo'
                      }
                  }
                }
              },
              custom_image_plan: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.customImagePlan',
                type: {
                  name: 'Composite',
                  class_name: 'CustomImagePropertiesFromPlan'
                }
              },
              is_plan_authorized: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.isPlanAuthorized',
                type: {
                  name: 'Boolean'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              unique_identifier: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.uniqueIdentifier',
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
