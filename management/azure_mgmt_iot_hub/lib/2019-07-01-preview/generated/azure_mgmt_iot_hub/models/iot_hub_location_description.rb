# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::IotHub::Mgmt::V2019_07_01_preview
  module Models
    #
    # Public representation of one of the locations where a resource is
    # provisioned.
    #
    class IotHubLocationDescription

      include MsRestAzure

      # @return [String] Azure Geo Regions
      attr_accessor :location

      # @return [IotHubReplicaRoleType] Specific Role assigned to this
      # location. Possible values include: 'primary', 'secondary'
      attr_accessor :role


      #
      # Mapper for IotHubLocationDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IotHubLocationDescription',
          type: {
            name: 'Composite',
            class_name: 'IotHubLocationDescription',
            model_properties: {
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              role: {
                client_side_validation: true,
                required: false,
                serialized_name: 'role',
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
