# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # Private access service.
    #
    class PrivateAccessServiceResult < MsRestAzure::SubResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Name of the private access value.
      attr_accessor :name

      # @return [String] Type of the private access value.
      attr_accessor :type


      #
      # Mapper for PrivateAccessServiceResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'PrivateAccessServiceResult',
          type: {
            name: 'Composite',
            class_name: 'PrivateAccessServiceResult',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
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
