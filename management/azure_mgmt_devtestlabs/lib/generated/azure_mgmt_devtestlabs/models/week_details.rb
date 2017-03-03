# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs
  module Models
    #
    # Properties of a weekly schedule.
    #
    class WeekDetails

      include MsRestAzure

      # @return [Array<String>] The days of the week.
      attr_accessor :weekdays

      # @return [String] The time of the day.
      attr_accessor :time


      #
      # Mapper for WeekDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'WeekDetails',
          type: {
            name: 'Composite',
            class_name: 'WeekDetails',
            model_properties: {
              weekdays: {
                required: false,
                serialized_name: 'weekdays',
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
              time: {
                required: false,
                serialized_name: 'time',
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
