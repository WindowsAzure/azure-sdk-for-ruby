# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Describes an Image.
    #
    class Image < MsRestAzure::Resource

      include MsRestAzure

      # @return [SubResource] The source virtual machine from which Image is
      # created.
      attr_accessor :source_virtual_machine

      # @return [ImageStorageProfile] The storage profile.
      attr_accessor :storage_profile

      # @return [String] The provisioning state.
      attr_accessor :provisioning_state


      #
      # Mapper for Image class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Image',
          type: {
            name: 'Composite',
            class_name: 'Image',
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
                required: true,
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
              source_virtual_machine: {
                required: false,
                serialized_name: 'properties.sourceVirtualMachine',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              storage_profile: {
                required: false,
                serialized_name: 'properties.storageProfile',
                type: {
                  name: 'Composite',
                  class_name: 'ImageStorageProfile'
                }
              },
              provisioning_state: {
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
