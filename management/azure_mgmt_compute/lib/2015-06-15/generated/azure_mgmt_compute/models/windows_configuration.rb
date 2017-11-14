# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2015_06_15
  module Models
    #
    # Describes Windows Configuration of the OS Profile.
    #
    class WindowsConfiguration

      include MsRestAzure

      include MsRest::JSONable
      # @return [Boolean] Indicates whether the virtual machine agent should be
      # provisioned on the Virtual Machine. If not specified, then the default
      # behavior is to set it to true.
      attr_accessor :provision_vmagent

      # @return [Boolean] Indicates whether Windows updates are automatically
      # installed on the VM.
      attr_accessor :enable_automatic_updates

      # @return [String] The time zone of the VM
      attr_accessor :time_zone

      # @return [Array<AdditionalUnattendContent>] Additional base-64 encoded
      # XML formatted information that can be included in the Unattend.xml
      # file.
      attr_accessor :additional_unattend_content

      # @return [WinRMConfiguration] The Windows Remote Management
      # configuration of the VM
      attr_accessor :win_rm


      #
      # Mapper for WindowsConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'WindowsConfiguration',
          type: {
            name: 'Composite',
            class_name: 'WindowsConfiguration',
            model_properties: {
              provision_vmagent: {
                client_side_validation: true,
                required: false,
                serialized_name: 'provisionVMAgent',
                type: {
                  name: 'Boolean'
                }
              },
              enable_automatic_updates: {
                client_side_validation: true,
                required: false,
                serialized_name: 'enableAutomaticUpdates',
                type: {
                  name: 'Boolean'
                }
              },
              time_zone: {
                client_side_validation: true,
                required: false,
                serialized_name: 'timeZone',
                type: {
                  name: 'String'
                }
              },
              additional_unattend_content: {
                client_side_validation: true,
                required: false,
                serialized_name: 'additionalUnattendContent',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AdditionalUnattendContentElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AdditionalUnattendContent'
                      }
                  }
                }
              },
              win_rm: {
                client_side_validation: true,
                required: false,
                serialized_name: 'winRM',
                type: {
                  name: 'Composite',
                  class_name: 'WinRMConfiguration'
                }
              }
            }
          }
        }
      end
    end
  end
end
