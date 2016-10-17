# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Insights
  module Models
    #
    # Specifies the retention policy for the log.
    #
    class RetentionPolicy

      include MsRestAzure

      # @return [Boolean] a value indicating whether the retention policy is
      # enabled.
      attr_accessor :enabled

      # @return [Integer] the number of days for the retention.
      attr_accessor :days


      #
      # Mapper for RetentionPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RetentionPolicy',
          type: {
            name: 'Composite',
            class_name: 'RetentionPolicy',
            model_properties: {
              enabled: {
                required: true,
                serialized_name: 'enabled',
                type: {
                  name: 'Boolean'
                }
              },
              days: {
                required: true,
                serialized_name: 'days',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
