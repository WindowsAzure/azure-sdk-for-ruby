# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Model object.
    #
    #
    class ContainerServiceDiagnosticsProfile

      include MsRestAzure

      # @return [ContainerServiceVMDiagnostics] Profile for the container
      # service VM diagnostic agent.
      attr_accessor :vm_diagnostics


      #
      # Mapper for ContainerServiceDiagnosticsProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ContainerServiceDiagnosticsProfile',
          type: {
            name: 'Composite',
            class_name: 'ContainerServiceDiagnosticsProfile',
            model_properties: {
              vm_diagnostics: {
                required: true,
                serialized_name: 'vmDiagnostics',
                type: {
                  name: 'Composite',
                  class_name: 'ContainerServiceVMDiagnostics'
                }
              }
            }
          }
        }
      end
    end
  end
end
