# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2016_04_30_preview
  module Models
    #
    # Describes a Virtual Machine Extension.
    #
    class VirtualMachineExtension < Resource

      include MsRestAzure

      # @return [String] How the extension handler should be forced to update
      # even if the extension configuration has not changed.
      attr_accessor :force_update_tag

      # @return [String] The name of the extension handler publisher.
      attr_accessor :publisher

      # @return [String] The type of the extension handler.
      attr_accessor :virtual_machine_extension_type

      # @return [String] The type version of the extension handler.
      attr_accessor :type_handler_version

      # @return [Boolean] Whether the extension handler should be automatically
      # upgraded across minor versions.
      attr_accessor :auto_upgrade_minor_version

      # @return Json formatted public settings for the extension.
      attr_accessor :settings

      # @return Json formatted protected settings for the extension.
      attr_accessor :protected_settings

      # @return [String] The provisioning state, which only appears in the
      # response.
      attr_accessor :provisioning_state

      # @return [VirtualMachineExtensionInstanceView] The virtual machine
      # extension instance view.
      attr_accessor :instance_view


      #
      # Mapper for VirtualMachineExtension class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualMachineExtension',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineExtension',
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
              force_update_tag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.forceUpdateTag',
                type: {
                  name: 'String'
                }
              },
              publisher: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.publisher',
                type: {
                  name: 'String'
                }
              },
              virtual_machine_extension_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.type',
                type: {
                  name: 'String'
                }
              },
              type_handler_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.typeHandlerVersion',
                type: {
                  name: 'String'
                }
              },
              auto_upgrade_minor_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.autoUpgradeMinorVersion',
                type: {
                  name: 'Boolean'
                }
              },
              settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.settings',
                type: {
                  name: 'Object'
                }
              },
              protected_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.protectedSettings',
                type: {
                  name: 'Object'
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
              instance_view: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.instanceView',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineExtensionInstanceView'
                }
              }
            }
          }
        }
      end
    end
  end
end
