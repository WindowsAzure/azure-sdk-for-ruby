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
    class DateRangeExportTaskParameter

      include MsRestAzure

      include MsRest::JSONable
      # @return [String]
      attr_accessor :container_url

      # @return [String] A description of the export task.
      attr_accessor :description

      # @return [Date] The RFC3339 full-date of the start of the period for
      # which data is exported.
      attr_accessor :start_date

      # @return [Date] The RFC3339 full-date of the end of the period for which
      # data is exported.
      attr_accessor :end_date

      # @return [ExportFormat] The format of the exported data. Possible values
      # include: 'JsonBlob', 'CsvBlob'
      attr_accessor :export_format


      #
      # Mapper for DateRangeExportTaskParameter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'dateRangeExportTaskParameter',
          type: {
            name: 'Composite',
            class_name: 'DateRangeExportTaskParameter',
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
              start_date: {
                client_side_validation: true,
                required: true,
                serialized_name: 'startDate',
                type: {
                  name: 'Date'
                }
              },
              end_date: {
                client_side_validation: true,
                required: true,
                serialized_name: 'endDate',
                type: {
                  name: 'Date'
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
