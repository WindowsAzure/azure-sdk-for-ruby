# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2017_03_30
  module Models
    #
    # Instance view statuses summary for virtual machines of a virtual machine
    # scale set.
    #
    class VirtualMachineScaleSetInstanceViewStatusesSummary

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<VirtualMachineStatusCodeCount>] The extensions
      # information.
      attr_accessor :statuses_summary


      #
      # Mapper for VirtualMachineScaleSetInstanceViewStatusesSummary class as
      # Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualMachineScaleSetInstanceViewStatusesSummary',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSetInstanceViewStatusesSummary',
            model_properties: {
              statuses_summary: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'statusesSummary',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'VirtualMachineStatusCodeCountElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualMachineStatusCodeCount'
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
