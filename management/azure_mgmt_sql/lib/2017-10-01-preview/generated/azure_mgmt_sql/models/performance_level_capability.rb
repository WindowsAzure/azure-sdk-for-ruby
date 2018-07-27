# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2017_10_01_preview
  module Models
    #
    # The performance level capability.
    #
    class PerformanceLevelCapability

      include MsRestAzure

      # @return [Float] Performance level value.
      attr_accessor :value

      # @return [PerformanceLevelUnit] Unit type used to measure performance
      # level. Possible values include: 'DTU', 'VCores'
      attr_accessor :unit


      #
      # Mapper for PerformanceLevelCapability class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PerformanceLevelCapability',
          type: {
            name: 'Composite',
            class_name: 'PerformanceLevelCapability',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'value',
                type: {
                  name: 'Double'
                }
              },
              unit: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'unit',
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
