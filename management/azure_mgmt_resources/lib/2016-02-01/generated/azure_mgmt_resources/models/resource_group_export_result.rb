# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Resources::Mgmt::V2016_02_01
  module Models
    #
    # Model object.
    #
    #
    class ResourceGroupExportResult

      include MsRestAzure

      include MsRest::JSONable
      # @return The template content.
      attr_accessor :template

      # @return [ResourceManagementErrorWithDetails] The error.
      attr_accessor :error


      #
      # Mapper for ResourceGroupExportResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResourceGroupExportResult',
          type: {
            name: 'Composite',
            class_name: 'ResourceGroupExportResult',
            model_properties: {
              template: {
                client_side_validation: true,
                required: false,
                serialized_name: 'template',
                type: {
                  name: 'Object'
                }
              },
              error: {
                client_side_validation: true,
                required: false,
                serialized_name: 'error',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceManagementErrorWithDetails'
                }
              }
            }
          }
        }
      end
    end
  end
end
