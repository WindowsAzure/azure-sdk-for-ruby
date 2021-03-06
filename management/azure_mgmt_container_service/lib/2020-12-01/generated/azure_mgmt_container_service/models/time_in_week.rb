# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerService::Mgmt::V2020_12_01
  module Models
    #
    # Time in a week.
    #
    class TimeInWeek

      include MsRestAzure

      # @return [WeekDay] A day in a week. Possible values include: 'Sunday',
      # 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'
      attr_accessor :day

      # @return [Array<Integer>] hour slots in a day.
      attr_accessor :hour_slots


      #
      # Mapper for TimeInWeek class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TimeInWeek',
          type: {
            name: 'Composite',
            class_name: 'TimeInWeek',
            model_properties: {
              day: {
                client_side_validation: true,
                required: false,
                serialized_name: 'day',
                type: {
                  name: 'String'
                }
              },
              hour_slots: {
                client_side_validation: true,
                required: false,
                serialized_name: 'hourSlots',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'NumberElementType',
                      type: {
                        name: 'Number'
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
