# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2016_03_30
  module Models
    #
    # The API entity reference.
    #
    class ApiEntityReference

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The ARM resource id in the form of
      # /subscriptions/{SubcriptionId}/resourceGroups/{ResourceGroupName}/...
      attr_accessor :id


      #
      # Mapper for ApiEntityReference class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApiEntityReference',
          type: {
            name: 'Composite',
            class_name: 'ApiEntityReference',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
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
