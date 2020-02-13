# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Linked service debug resource.
    #
    class LinkedServiceDebugResource < SubResourceDebugResource

      include MsRestAzure

      # @return [LinkedService] Properties of linked service.
      attr_accessor :properties


      #
      # Mapper for LinkedServiceDebugResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LinkedServiceDebugResource',
          type: {
            name: 'Composite',
            class_name: 'LinkedServiceDebugResource',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              properties: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties',
                default_value: {},
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'type',
                  uber_parent: 'LinkedService',
                  class_name: 'LinkedService'
                }
              }
            }
          }
        }
      end
    end
  end
end
