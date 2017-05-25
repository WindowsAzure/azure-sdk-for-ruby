# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Profile for the container service orchestrator.
    #
    class ContainerServiceOrchestratorProfile

      include MsRestAzure

      # @return [ContainerServiceOrchestratorTypes] The orchestrator to use to
      # manage container service cluster resources. Valid values are Swarm,
      # DCOS, and Custom. Possible values include: 'Swarm', 'DCOS', 'Custom',
      # 'Kubernetes'
      attr_accessor :orchestrator_type


      #
      # Mapper for ContainerServiceOrchestratorProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ContainerServiceOrchestratorProfile',
          type: {
            name: 'Composite',
            class_name: 'ContainerServiceOrchestratorProfile',
            model_properties: {
              orchestrator_type: {
                required: true,
                serialized_name: 'orchestratorType',
                type: {
                  name: 'Enum',
                  module: 'ContainerServiceOrchestratorTypes'
                }
              }
            }
          }
        }
      end
    end
  end
end
