# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MobileEngagement::Mgmt::V2014_12_01
  module Models
    #
    # Model object.
    #
    #
    class ExportTaskParameter

      include MsRestAzure

      include MsRest::JSONable
      # @return [String]
      attr_accessor :container_url

      # @return [String] A description of the export task.
      attr_accessor :description

      # @return [ExportFormat] The format of the exported data. Possible values
      # include: 'JsonBlob', 'CsvBlob'
      attr_accessor :export_format


      #
      # Mapper for ExportTaskParameter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'exportTaskParameter',
          type: {
            name: 'Composite',
            class_name: 'ExportTaskParameter',
            model_properties: {
              container_url: {
                client_side_validation: true,
                required: true,
                serialized_name: 'containerUrl',
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
              export_format: {
                client_side_validation: true,
                required: true,
                serialized_name: 'exportFormat',
                type: {
                  name: 'Enum',
                  module: 'ExportFormat'
                }
              }
            }
          }
        }
      end
    end
  end
end
