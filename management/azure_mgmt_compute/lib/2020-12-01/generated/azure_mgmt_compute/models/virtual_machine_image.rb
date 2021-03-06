# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2020_12_01
  module Models
    #
    # Describes a Virtual Machine Image.
    #
    class VirtualMachineImage < VirtualMachineImageResource

      include MsRestAzure

      # @return [PurchasePlan]
      attr_accessor :plan

      # @return [OSDiskImage]
      attr_accessor :os_disk_image

      # @return [Array<DataDiskImage>]
      attr_accessor :data_disk_images

      # @return [AutomaticOSUpgradeProperties]
      attr_accessor :automatic_osupgrade_properties

      # @return [HyperVGenerationTypes] Possible values include: 'V1', 'V2'
      attr_accessor :hyper_vgeneration

      # @return [DisallowedConfiguration] Specifies disallowed configuration
      # for the VirtualMachine created from the image
      attr_accessor :disallowed

      # @return [Array<VirtualMachineImageFeature>]
      attr_accessor :features


      #
      # Mapper for VirtualMachineImage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualMachineImage',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineImage',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: true,
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
              extended_location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'extendedLocation',
                type: {
                  name: 'Composite',
                  class_name: 'ExtendedLocation'
                }
              },
              plan: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.plan',
                type: {
                  name: 'Composite',
                  class_name: 'PurchasePlan'
                }
              },
              os_disk_image: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.osDiskImage',
                type: {
                  name: 'Composite',
                  class_name: 'OSDiskImage'
                }
              },
              data_disk_images: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.dataDiskImages',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DataDiskImageElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DataDiskImage'
                      }
                  }
                }
              },
              automatic_osupgrade_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.automaticOSUpgradeProperties',
                type: {
                  name: 'Composite',
                  class_name: 'AutomaticOSUpgradeProperties'
                }
              },
              hyper_vgeneration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.hyperVGeneration',
                type: {
                  name: 'String'
                }
              },
              disallowed: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.disallowed',
                type: {
                  name: 'Composite',
                  class_name: 'DisallowedConfiguration'
                }
              },
              features: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.features',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'VirtualMachineImageFeatureElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualMachineImageFeature'
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
