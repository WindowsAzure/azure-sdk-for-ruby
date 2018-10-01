# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::Mgmt::V2018_02_01
  module Models
    #
    # Represents the health policy used to evaluate the health of services
    # belonging to a service type.
    #
    #
    class ServiceTypeHealthPolicy

      include MsRestAzure

      # @return [Integer] The maximum percentage of services allowed to be
      # unhealthy before your application is considered in error.
      # . Default value: 0 .
      attr_accessor :max_percent_unhealthy_services


      #
      # Mapper for ServiceTypeHealthPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServiceTypeHealthPolicy',
          type: {
            name: 'Composite',
            class_name: 'ServiceTypeHealthPolicy',
            model_properties: {
              max_percent_unhealthy_services: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxPercentUnhealthyServices',
                default_value: 0,
                constraints: {
                  InclusiveMaximum: 100,
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end