# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # The Db2 table dataset.
    #
    class Db2TableDataset < Dataset

      include MsRestAzure


      def initialize
        @type = "Db2Table"
      end

      attr_accessor :type

      # @return This property will be retired. Please consider using schema +
      # table properties instead.
      attr_accessor :table_name

      # @return The Db2 schema name. Type: string (or Expression with
      # resultType string).
      attr_accessor :db2table_dataset_schema

      # @return The Db2 table name. Type: string (or Expression with resultType
      # string).
      attr_accessor :table


      #
      # Mapper for Db2TableDataset class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Db2Table',
          type: {
            name: 'Composite',
            class_name: 'Db2TableDataset',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
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
              structure: {
                client_side_validation: true,
                required: false,
                serialized_name: 'structure',
                type: {
                  name: 'Object'
                }
              },
              schema: {
                client_side_validation: true,
                required: false,
                serialized_name: 'schema',
                type: {
                  name: 'Object'
                }
              },
              linked_service_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'linkedServiceName',
                default_value: {},
                type: {
                  name: 'Composite',
                  class_name: 'LinkedServiceReference'
                }
              },
              parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'parameters',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ParameterSpecificationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ParameterSpecification'
                      }
                  }
                }
              },
              annotations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'annotations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              folder: {
                client_side_validation: true,
                required: false,
                serialized_name: 'folder',
                type: {
                  name: 'Composite',
                  class_name: 'DatasetFolder'
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              table_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.tableName',
                type: {
                  name: 'Object'
                }
              },
              db2table_dataset_schema: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.schema',
                type: {
                  name: 'Object'
                }
              },
              table: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.table',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
