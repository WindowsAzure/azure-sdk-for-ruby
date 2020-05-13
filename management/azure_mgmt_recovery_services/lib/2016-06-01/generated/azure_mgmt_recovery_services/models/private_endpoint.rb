# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServices::Mgmt::V2016_06_01
  module Models
    #
    # The Private Endpoint network resource that is linked to the Private
    # Endpoint connection.
    #
    class PrivateEndpoint

      include MsRestAzure

      # @return [String] Gets or sets id.
      attr_accessor :id


      #
      # Mapper for PrivateEndpoint class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PrivateEndpoint',
          type: {
            name: 'Composite',
            class_name: 'PrivateEndpoint',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
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
