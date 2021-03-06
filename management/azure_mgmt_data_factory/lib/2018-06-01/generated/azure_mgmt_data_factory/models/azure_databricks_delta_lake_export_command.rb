# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Azure Databricks Delta Lake export command settings.
    #
    class AzureDatabricksDeltaLakeExportCommand < ExportSettings

      include MsRestAzure


      def initialize
        @type = "AzureDatabricksDeltaLakeExportCommand"
      end

      attr_accessor :type

      # @return Specify the date format for the csv in Azure Databricks Delta
      # Lake Copy. Type: string (or Expression with resultType string).
      attr_accessor :date_format

      # @return Specify the timestamp format for the csv in Azure Databricks
      # Delta Lake Copy. Type: string (or Expression with resultType string).
      attr_accessor :timestamp_format


      #
      # Mapper for AzureDatabricksDeltaLakeExportCommand class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureDatabricksDeltaLakeExportCommand',
          type: {
            name: 'Composite',
            class_name: 'AzureDatabricksDeltaLakeExportCommand',
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
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              date_format: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dateFormat',
                type: {
                  name: 'Object'
                }
              },
              timestamp_format: {
                client_side_validation: true,
                required: false,
                serialized_name: 'timestampFormat',
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
