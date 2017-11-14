# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MachineLearning::Mgmt::V2017_01_01
  module Models
    #
    # The swagger 2.0 schema describing a single service input or output. See
    # Swagger specification: http://swagger.io/specification/
    #
    class TableSpecification

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Swagger schema title.
      attr_accessor :title

      # @return [String] Swagger schema description.
      attr_accessor :description

      # @return [String] The type of the entity described in swagger. Default
      # value: 'object' .
      attr_accessor :type

      # @return [String] The format, if 'type' is not 'object'
      attr_accessor :format

      # @return [Hash{String => ColumnSpecification}] The set of columns within
      # the data table.
      attr_accessor :properties


      #
      # Mapper for TableSpecification class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TableSpecification',
          type: {
            name: 'Composite',
            class_name: 'TableSpecification',
            model_properties: {
              title: {
                client_side_validation: true,
                required: false,
                serialized_name: 'title',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                default_value: 'object',
                type: {
                  name: 'String'
                }
              },
              format: {
                client_side_validation: true,
                required: false,
                serialized_name: 'format',
                type: {
                  name: 'String'
                }
              },
              properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ColumnSpecificationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ColumnSpecification'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
