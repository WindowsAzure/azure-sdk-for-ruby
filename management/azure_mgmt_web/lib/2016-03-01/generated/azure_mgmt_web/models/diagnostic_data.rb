# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_03_01
  module Models
    #
    # Set of data with rendering instructions
    #
    class DiagnosticData

      include MsRestAzure

      # @return [DataTableResponseObject] Data in table form
      attr_accessor :table

      # @return [Rendering] Properties that describe how the table should be
      # rendered
      attr_accessor :rendering_properties


      #
      # Mapper for DiagnosticData class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DiagnosticData',
          type: {
            name: 'Composite',
            class_name: 'DiagnosticData',
            model_properties: {
              table: {
                client_side_validation: true,
                required: false,
                serialized_name: 'table',
                type: {
                  name: 'Composite',
                  class_name: 'DataTableResponseObject'
                }
              },
              rendering_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'renderingProperties',
                type: {
                  name: 'Composite',
                  class_name: 'Rendering'
                }
              }
            }
          }
        }
      end
    end
  end
end
