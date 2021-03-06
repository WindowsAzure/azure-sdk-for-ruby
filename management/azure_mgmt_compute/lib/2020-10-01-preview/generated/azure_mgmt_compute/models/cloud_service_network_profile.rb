# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2020_10_01_preview
  module Models
    #
    # Network Profile for the cloud service.
    #
    class CloudServiceNetworkProfile

      include MsRestAzure

      # @return [Array<LoadBalancerConfiguration>] The list of load balancer
      # configurations for the cloud service.
      attr_accessor :load_balancer_configurations

      # @return [SubResource]
      attr_accessor :swappable_cloud_service


      #
      # Mapper for CloudServiceNetworkProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CloudServiceNetworkProfile',
          type: {
            name: 'Composite',
            class_name: 'CloudServiceNetworkProfile',
            model_properties: {
              load_balancer_configurations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'loadBalancerConfigurations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'LoadBalancerConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'LoadBalancerConfiguration'
                      }
                  }
                }
              },
              swappable_cloud_service: {
                client_side_validation: true,
                required: false,
                serialized_name: 'swappableCloudService',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              }
            }
          }
        }
      end
    end
  end
end
