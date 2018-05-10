# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2017_12_01
  module Models
    #
    # Specifies information about the availability set that the virtual machine
    # should be assigned to. Only tags may be updated.
    #
    class AvailabilitySetUpdate < UpdateResource

      include MsRestAzure

      # @return [Integer] Update Domain count.
      attr_accessor :platform_update_domain_count

      # @return [Integer] Fault Domain count.
      attr_accessor :platform_fault_domain_count

      # @return [Array<SubResource>] A list of references to all virtual
      # machines in the availability set.
      attr_accessor :virtual_machines

      # @return [Array<InstanceViewStatus>] The resource status information.
      attr_accessor :statuses

      # @return [Sku] Sku of the availability set
      attr_accessor :sku


      #
      # Mapper for AvailabilitySetUpdate class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AvailabilitySetUpdate',
          type: {
            name: 'Composite',
            class_name: 'AvailabilitySetUpdate',
            model_properties: {
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
              platform_update_domain_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.platformUpdateDomainCount',
                type: {
                  name: 'Number'
                }
              },
              platform_fault_domain_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.platformFaultDomainCount',
                type: {
                  name: 'Number'
                }
              },
              virtual_machines: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.virtualMachines',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SubResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SubResource'
                      }
                  }
                }
              },
              statuses: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.statuses',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'InstanceViewStatusElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'InstanceViewStatus'
                      }
                  }
                }
              },
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              }
            }
          }
        }
      end
    end
  end
end
