# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_08_01
  module Models
    #
    # A setting difference between two deployment slots of an app.
    #
    class SlotDifference < ProxyOnlyResource

      include MsRestAzure

      # @return [String] Type of the difference: Information, Warning or Error.
      attr_accessor :slot_difference_type

      # @return [String] The type of the setting: General, AppSetting or
      # ConnectionString.
      attr_accessor :setting_type

      # @return [String] Rule that describes how to process the setting
      # difference during a slot swap.
      attr_accessor :diff_rule

      # @return [String] Name of the setting.
      attr_accessor :setting_name

      # @return [String] Value of the setting in the current slot.
      attr_accessor :value_in_current_slot

      # @return [String] Value of the setting in the target slot.
      attr_accessor :value_in_target_slot

      # @return [String] Description of the setting difference.
      attr_accessor :description


      #
      # Mapper for SlotDifference class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SlotDifference',
          type: {
            name: 'Composite',
            class_name: 'SlotDifference',
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
              slot_difference_type: {
                required: false,
                read_only: true,
                serialized_name: 'properties.type',
                type: {
                  name: 'String'
                }
              },
              setting_type: {
                required: false,
                read_only: true,
                serialized_name: 'properties.settingType',
                type: {
                  name: 'String'
                }
              },
              diff_rule: {
                required: false,
                read_only: true,
                serialized_name: 'properties.diffRule',
                type: {
                  name: 'String'
                }
              },
              setting_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.settingName',
                type: {
                  name: 'String'
                }
              },
              value_in_current_slot: {
                required: false,
                read_only: true,
                serialized_name: 'properties.valueInCurrentSlot',
                type: {
                  name: 'String'
                }
              },
              value_in_target_slot: {
                required: false,
                read_only: true,
                serialized_name: 'properties.valueInTargetSlot',
                type: {
                  name: 'String'
                }
              },
              description: {
                required: false,
                read_only: true,
                serialized_name: 'properties.description',
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
