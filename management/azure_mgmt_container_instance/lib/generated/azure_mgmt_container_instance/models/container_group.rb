# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ContainerInstance
  module Models
    #
    # A container group.
    #
    class ContainerGroup < MsRestAzure::Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The provisioning state of the container group. This
      # only appears in the response.
      attr_accessor :provisioning_state

      # @return [Array<Container>] The containers within the container group.
      attr_accessor :containers

      # @return [Array<ImageRegistryCredential>] The image registry credentials
      # by which the container group is created from.
      attr_accessor :image_registry_credentials

      # @return [ContainerRestartPolicy] Restart policy for all containers
      # within the container group. Currently the only available option is
      # `always`. Possible values include: 'always'
      attr_accessor :restart_policy

      # @return [IpAddress] The IP address type of the container group.
      attr_accessor :ip_address

      # @return [OperatingSystemTypes] The operating system type required by
      # the containers in the container group. Possible values include:
      # 'Windows', 'Linux'
      attr_accessor :os_type

      # @return [String] The current state of the container group. This is only
      # valid for the response.
      attr_accessor :state

      # @return [Array<Volume>] The list of volumes that can be mounted by
      # containers in this container group.
      attr_accessor :volumes


      #
      # Mapper for ContainerGroup class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ContainerGroup',
          type: {
            name: 'Composite',
            class_name: 'ContainerGroup',
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
              provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              containers: {
                required: false,
                serialized_name: 'properties.containers',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ContainerElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Container'
                      }
                  }
                }
              },
              image_registry_credentials: {
                required: false,
                serialized_name: 'properties.imageRegistryCredentials',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ImageRegistryCredentialElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ImageRegistryCredential'
                      }
                  }
                }
              },
              restart_policy: {
                required: false,
                serialized_name: 'properties.restartPolicy',
                type: {
                  name: 'String'
                }
              },
              ip_address: {
                required: false,
                serialized_name: 'properties.ipAddress',
                type: {
                  name: 'Composite',
                  class_name: 'IpAddress'
                }
              },
              os_type: {
                required: false,
                serialized_name: 'properties.osType',
                type: {
                  name: 'String'
                }
              },
              state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.state',
                type: {
                  name: 'String'
                }
              },
              volumes: {
                required: false,
                serialized_name: 'properties.volumes',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'VolumeElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Volume'
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
