# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerService::Mgmt::V2016_03_30
  module Models
    #
    # Profile for the container service orchestrator.
    #
    class ContainerServiceOrchestratorProfile

      include MsRestAzure

      include MsRest::JSONable
      # @return [ContainerServiceOchestratorTypes] The orchestrator to use to
      # manage container service cluster resources. Valid values are Swarm,
      # DCOS, and Custom. Possible values include: 'Swarm', 'DCOS'
      attr_accessor :orchestrator_type


      #
      # Mapper for ContainerServiceOrchestratorProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ContainerServiceOrchestratorProfile',
          type: {
            name: 'Composite',
            class_name: 'ContainerServiceOrchestratorProfile',
            model_properties: {
              orchestrator_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'orchestratorType',
                type: {
                  name: 'Enum',
                  module: 'ContainerServiceOchestratorTypes'
                }
              }
            }
          }
        }
      end
    end
  end
end
