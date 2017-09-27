# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Slot Config names azure resource.
    #
    class SlotConfigNamesResource < MsRestAzure::ProxyOnlyResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<String>] List of connection string names.
      attr_accessor :connection_string_names

      # @return [Array<String>] List of application settings names.
      attr_accessor :app_setting_names


      #
      # Mapper for SlotConfigNamesResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SlotConfigNamesResource',
          type: {
            name: 'Composite',
            class_name: 'SlotConfigNamesResource',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              connection_string_names: {
                required: false,
                serialized_name: 'properties.connectionStringNames',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              app_setting_names: {
                required: false,
                serialized_name: 'properties.appSettingNames',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
