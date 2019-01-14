# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2018_09_15_preview
  module Models
    #
    # This is used to express the source of an input schema mapping for a
    # single target field in the Event Grid Event schema. This is currently
    # used in the mappings for the 'subject','eventType' and 'dataVersion'
    # properties. This represents a field in the input event schema along with
    # a default value to be used, and at least one of these two properties
    # should be provided.
    #
    class JsonFieldWithDefault

      include MsRestAzure

      # @return [String] Name of a field in the input event schema that's to be
      # used as the source of a mapping.
      attr_accessor :source_field

      # @return [String] The default value to be used for mapping when a
      # SourceField is not provided or if there's no property with the
      # specified name in the published JSON event payload.
      attr_accessor :default_value


      #
      # Mapper for JsonFieldWithDefault class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'JsonFieldWithDefault',
          type: {
            name: 'Composite',
            class_name: 'JsonFieldWithDefault',
            model_properties: {
              source_field: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceField',
                type: {
                  name: 'String'
                }
              },
              default_value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'defaultValue',
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
