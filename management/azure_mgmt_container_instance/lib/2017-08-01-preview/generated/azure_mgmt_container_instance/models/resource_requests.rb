# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerInstance::Mgmt::V2017_08_01_preview
  module Models
    #
    # The resource requests.
    #
    class ResourceRequests

      include MsRestAzure

      include MsRest::JSONable
      # @return [Float] The memory request in GB of this container instance.
      attr_accessor :memory_in_gb

      # @return [Float] The CPU request of this container instance.
      attr_accessor :cpu


      #
      # Mapper for ResourceRequests class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResourceRequests',
          type: {
            name: 'Composite',
            class_name: 'ResourceRequests',
            model_properties: {
              memory_in_gb: {
                client_side_validation: true,
                required: true,
                serialized_name: 'memoryInGB',
                type: {
                  name: 'Double'
                }
              },
              cpu: {
                client_side_validation: true,
                required: true,
                serialized_name: 'cpu',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
