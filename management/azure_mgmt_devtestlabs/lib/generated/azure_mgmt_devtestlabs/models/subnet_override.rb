# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs
  module Models
    #
    # Property overrides on a subnet of a virtual network.
    #
    class SubnetOverride

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The resource ID of the subnet.
      attr_accessor :resource_id

      # @return [String] The name given to the subnet within the lab.
      attr_accessor :lab_subnet_name

      # @return [UsagePermissionType] Indicates whether this subnet can be used
      # during virtual machine creation (i.e. Allow, Deny). Possible values
      # include: 'Default', 'Deny', 'Allow'
      attr_accessor :use_in_vm_creation_permission

      # @return [UsagePermissionType] Indicates whether public IP addresses can
      # be assigned to virtual machines on this subnet (i.e. Allow, Deny).
      # Possible values include: 'Default', 'Deny', 'Allow'
      attr_accessor :use_public_ip_address_permission

      # @return [SubnetSharedPublicIpAddressConfiguration] Properties that
      # virtual machines on this subnet will share.
      attr_accessor :shared_public_ip_address_configuration

      # @return [String] The virtual network pool associated with this subnet.
      attr_accessor :virtual_network_pool_name


      #
      # Mapper for SubnetOverride class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SubnetOverride',
          type: {
            name: 'Composite',
            class_name: 'SubnetOverride',
            model_properties: {
              resource_id: {
                required: false,
                serialized_name: 'resourceId',
                type: {
                  name: 'String'
                }
              },
              lab_subnet_name: {
                required: false,
                serialized_name: 'labSubnetName',
                type: {
                  name: 'String'
                }
              },
              use_in_vm_creation_permission: {
                required: false,
                serialized_name: 'useInVmCreationPermission',
                type: {
                  name: 'String'
                }
              },
              use_public_ip_address_permission: {
                required: false,
                serialized_name: 'usePublicIpAddressPermission',
                type: {
                  name: 'String'
                }
              },
              shared_public_ip_address_configuration: {
                required: false,
                serialized_name: 'sharedPublicIpAddressConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'SubnetSharedPublicIpAddressConfiguration'
                }
              },
              virtual_network_pool_name: {
                required: false,
                serialized_name: 'virtualNetworkPoolName',
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
