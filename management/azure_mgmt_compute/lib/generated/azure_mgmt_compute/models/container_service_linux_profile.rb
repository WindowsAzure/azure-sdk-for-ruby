# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Profile for Linux VMs in the container service cluster.
    #
    class ContainerServiceLinuxProfile
      # @return [String] The administrator username to use for Linux VMs.
      attr_accessor :admin_username

      # @return [ContainerServiceSshConfiguration] The ssh key configuration
      # for Linux VMs.
      attr_accessor :ssh


      #
      # Mapper for ContainerServiceLinuxProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ContainerServiceLinuxProfile',
          type: {
            name: 'Composite',
            class_name: 'ContainerServiceLinuxProfile',
            model_properties: {
              admin_username: {
                required: true,
                serialized_name: 'adminUsername',
                constraints: {
                  Pattern: '^[a-z][a-z0-9_-]*$'
                },
                type: {
                  name: 'String'
                }
              },
              ssh: {
                required: true,
                serialized_name: 'ssh',
                type: {
                  name: 'Composite',
                  class_name: 'ContainerServiceSshConfiguration'
                }
              }
            }
          }
        }
      end
    end
  end
end
