# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::IotHub::Mgmt::V2018_12_01_preview
  module Models
    #
    # IoT Hub capacity information.
    #
    class IotHubCapacity

      include MsRestAzure

      # @return [Integer] The minimum number of units.
      attr_accessor :minimum

      # @return [Integer] The maximum number of units.
      attr_accessor :maximum

      # @return [Integer] The default number of units.
      attr_accessor :default

      # @return [IotHubScaleType] The type of the scaling enabled. Possible
      # values include: 'Automatic', 'Manual', 'None'
      attr_accessor :scale_type


      #
      # Mapper for IotHubCapacity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IotHubCapacity',
          type: {
            name: 'Composite',
            class_name: 'IotHubCapacity',
            model_properties: {
              minimum: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'minimum',
                constraints: {
                  InclusiveMaximum: 1,
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              },
              maximum: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'maximum',
                type: {
                  name: 'Number'
                }
              },
              default: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'default',
                type: {
                  name: 'Number'
                }
              },
              scale_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'scaleType',
                type: {
                  name: 'Enum',
                  module: 'IotHubScaleType'
                }
              }
            }
          }
        }
      end
    end
  end
end
