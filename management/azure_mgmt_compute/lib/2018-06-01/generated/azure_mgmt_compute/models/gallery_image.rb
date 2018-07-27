# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2018_06_01
  module Models
    #
    # Specifies information about the gallery image that you want to create or
    # update.
    #
    class GalleryImage < Resource

      include MsRestAzure

      # @return [String] The description of this gallery image resource.
      attr_accessor :description

      # @return [String] The Eula agreement for the gallery image.
      attr_accessor :eula

      # @return [String] The privacy statement uri.
      attr_accessor :privacy_statement_uri

      # @return [String] The release note uri.
      attr_accessor :release_note_uri

      # @return [OperatingSystemTypes] This property allows you to specify the
      # type of the OS that is included in the disk if creating a VM from
      # user-image or a specialized VHD. <br><br> Possible values are: <br><br>
      # **Windows** <br><br> **Linux**. Possible values include: 'Windows',
      # 'Linux'
      attr_accessor :os_type

      # @return [OperatingSystemStateTypes] The OS State. Possible values
      # include: 'Generalized', 'Specialized'
      attr_accessor :os_state

      # @return [DateTime] The end of life of this gallery image.
      attr_accessor :end_of_life_date

      # @return [GalleryImageIdentifier]
      attr_accessor :identifier

      # @return [RecommendedMachineConfiguration]
      attr_accessor :recommended

      # @return [Disallowed]
      attr_accessor :disallowed

      # @return [ImagePurchasePlan]
      attr_accessor :purchase_plan

      # @return [Enum] The current state of the gallery image. The provisioning
      # state, which only appears in the response. Possible values include:
      # 'Creating', 'Updating', 'Failed', 'Succeeded', 'Deleting', 'Migrating'
      attr_accessor :provisioning_state


      #
      # Mapper for GalleryImage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GalleryImage',
          type: {
            name: 'Composite',
            class_name: 'GalleryImage',
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
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              eula: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.eula',
                type: {
                  name: 'String'
                }
              },
              privacy_statement_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.privacyStatementUri',
                type: {
                  name: 'String'
                }
              },
              release_note_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.releaseNoteUri',
                type: {
                  name: 'String'
                }
              },
              os_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.osType',
                type: {
                  name: 'Enum',
                  module: 'OperatingSystemTypes'
                }
              },
              os_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.osState',
                type: {
                  name: 'Enum',
                  module: 'OperatingSystemStateTypes'
                }
              },
              end_of_life_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.endOfLifeDate',
                type: {
                  name: 'DateTime'
                }
              },
              identifier: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.identifier',
                type: {
                  name: 'Composite',
                  class_name: 'GalleryImageIdentifier'
                }
              },
              recommended: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.recommended',
                type: {
                  name: 'Composite',
                  class_name: 'RecommendedMachineConfiguration'
                }
              },
              disallowed: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.disallowed',
                type: {
                  name: 'Composite',
                  class_name: 'Disallowed'
                }
              },
              purchase_plan: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.purchasePlan',
                type: {
                  name: 'Composite',
                  class_name: 'ImagePurchasePlan'
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
              }
            }
          }
        }
      end
    end
  end
end
