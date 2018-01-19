# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2016_03_30
  module Models
    #
    # The instance view of a virtual machine scale set VM.
    #
    class VirtualMachineScaleSetVMInstanceView

      include MsRestAzure

      # @return [Integer] The Update Domain count.
      attr_accessor :platform_update_domain

      # @return [Integer] The Fault Domain count.
      attr_accessor :platform_fault_domain

      # @return [String] The Remote desktop certificate thumbprint.
      attr_accessor :rdp_thumb_print

      # @return [VirtualMachineAgentInstanceView] The VM Agent running on the
      # virtual machine.
      attr_accessor :vm_agent

      # @return [Array<DiskInstanceView>] The disks information.
      attr_accessor :disks

      # @return [Array<VirtualMachineExtensionInstanceView>] The extensions
      # information.
      attr_accessor :extensions

      # @return [BootDiagnosticsInstanceView] Boot Diagnostics is a debugging
      # feature which allows you to view Console Output and Screenshot to
      # diagnose VM status. <br><br> For Linux Virtual Machines, you can easily
      # view the output of your console log. <br><br> For both Windows and
      # Linux virtual machines, Azure also enables you to see a screenshot of
      # the VM from the hypervisor.
      attr_accessor :boot_diagnostics

      # @return [Array<InstanceViewStatus>] The resource status information.
      attr_accessor :statuses


      #
      # Mapper for VirtualMachineScaleSetVMInstanceView class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualMachineScaleSetVMInstanceView',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSetVMInstanceView',
            model_properties: {
              platform_update_domain: {
                required: false,
                serialized_name: 'platformUpdateDomain',
                type: {
                  name: 'Number'
                }
              },
              platform_fault_domain: {
                required: false,
                serialized_name: 'platformFaultDomain',
                type: {
                  name: 'Number'
                }
              },
              rdp_thumb_print: {
                required: false,
                serialized_name: 'rdpThumbPrint',
                type: {
                  name: 'String'
                }
              },
              vm_agent: {
                required: false,
                serialized_name: 'vmAgent',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineAgentInstanceView'
                }
              },
              disks: {
                required: false,
                serialized_name: 'disks',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'DiskInstanceViewElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DiskInstanceView'
                      }
                  }
                }
              },
              extensions: {
                required: false,
                serialized_name: 'extensions',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'VirtualMachineExtensionInstanceViewElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualMachineExtensionInstanceView'
                      }
                  }
                }
              },
              boot_diagnostics: {
                required: false,
                serialized_name: 'bootDiagnostics',
                type: {
                  name: 'Composite',
                  class_name: 'BootDiagnosticsInstanceView'
                }
              },
              statuses: {
                required: false,
                serialized_name: 'statuses',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'InstanceViewStatusElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'InstanceViewStatus'
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
