# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerService::Mgmt::V2016_09_30
  module Models
    #
    # Properties to configure a custom container service cluster.
    #
    class ContainerServiceCustomProfile

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The name of the custom orchestrator to use.
      attr_accessor :orchestrator


      #
      # Mapper for ContainerServiceCustomProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ContainerServiceCustomProfile',
          type: {
            name: 'Composite',
            class_name: 'ContainerServiceCustomProfile',
            model_properties: {
              orchestrator: {
                client_side_validation: true,
                required: true,
                serialized_name: 'orchestrator',
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
