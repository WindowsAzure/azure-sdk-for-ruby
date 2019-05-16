# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::IotHub::Mgmt::V2019_03_22_preview
  module Models
    #
    # Model object.
    #
    #
    class RoutingTwinProperties

      include MsRestAzure

      # @return Twin desired properties
      attr_accessor :desired

      # @return Twin desired properties
      attr_accessor :reported


      #
      # Mapper for RoutingTwinProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RoutingTwin_properties',
          type: {
            name: 'Composite',
            class_name: 'RoutingTwinProperties',
            model_properties: {
              desired: {
                client_side_validation: true,
                required: false,
                serialized_name: 'desired',
                type: {
                  name: 'Object'
                }
              },
              reported: {
                client_side_validation: true,
                required: false,
                serialized_name: 'reported',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
