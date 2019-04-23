# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2017_03_01_preview
  module Models
    #
    # A sensitivity label.
    #
    class SensitivityLabel < ProxyResource

      include MsRestAzure

      # @return [String] The label name.
      attr_accessor :label_name

      # @return [String] The label ID.
      attr_accessor :label_id

      # @return [String] The information type.
      attr_accessor :information_type

      # @return [String] The information type ID.
      attr_accessor :information_type_id

      # @return [Boolean] Is sensitivity recommendation disabled. Applicable
      # for recommended sensitivity label only. Specifies whether the
      # sensitivity recommendation on this column is disabled (dismissed) or
      # not.
      attr_accessor :is_disabled


      #
      # Mapper for SensitivityLabel class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SensitivityLabel',
          type: {
            name: 'Composite',
            class_name: 'SensitivityLabel',
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
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              label_name: {
                required: false,
                serialized_name: 'properties.labelName',
                type: {
                  name: 'String'
                }
              },
              label_id: {
                required: false,
                serialized_name: 'properties.labelId',
                type: {
                  name: 'String'
                }
              },
              information_type: {
                required: false,
                serialized_name: 'properties.informationType',
                type: {
                  name: 'String'
                }
              },
              information_type_id: {
                required: false,
                serialized_name: 'properties.informationTypeId',
                type: {
                  name: 'String'
                }
              },
              is_disabled: {
                required: false,
                read_only: true,
                serialized_name: 'properties.isDisabled',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
