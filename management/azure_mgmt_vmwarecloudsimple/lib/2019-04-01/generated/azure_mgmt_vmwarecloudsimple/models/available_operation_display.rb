# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::VMwareCloudSimple::Mgmt::V2019-04-01
  module Models
    #
    # Resource provider available operation display model
    #
    class AvailableOperationDisplay

      include MsRestAzure

      # @return [String] Description of the operation for display purposes
      attr_accessor :description

      # @return [String] Name of the operation for display purposes
      attr_accessor :operation

      # @return [String] Name of the provider for display purposes
      attr_accessor :provider

      # @return [String] Name of the resource type for display purposes
      attr_accessor :resource


      #
      # Mapper for AvailableOperationDisplay class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AvailableOperationDisplay',
          type: {
            name: 'Composite',
            class_name: 'AvailableOperationDisplay',
            model_properties: {
              description: {
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              operation: {
                required: false,
                serialized_name: 'operation',
                type: {
                  name: 'String'
                }
              },
              provider: {
                required: false,
                serialized_name: 'provider',
                type: {
                  name: 'String'
                }
              },
              resource: {
                required: false,
                serialized_name: 'resource',
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
