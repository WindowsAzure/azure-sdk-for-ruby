# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2017_05_01_preview
  module Models
    #
    # The diagnostic settings category resource.
    #
    class DiagnosticSettingsCategoryResource < ProxyOnlyResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [CategoryType] The type of the diagnostic settings category.
      # Possible values include: 'Metrics', 'Logs'
      attr_accessor :category_type


      #
      # Mapper for DiagnosticSettingsCategoryResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DiagnosticSettingsCategoryResource',
          type: {
            name: 'Composite',
            class_name: 'DiagnosticSettingsCategoryResource',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              category_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.categoryType',
                type: {
                  name: 'Enum',
                  module: 'CategoryType'
                }
              }
            }
          }
        }
      end
    end
  end
end
