# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2019_06_15
  module Models
    #
    # Weekly retention format.
    #
    class WeeklyRetentionFormat

      include MsRestAzure

      # @return [Array<DayOfWeek>] List of days of the week.
      attr_accessor :days_of_the_week

      # @return [Array<WeekOfMonth>] List of weeks of month.
      attr_accessor :weeks_of_the_month


      #
      # Mapper for WeeklyRetentionFormat class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'WeeklyRetentionFormat',
          type: {
            name: 'Composite',
            class_name: 'WeeklyRetentionFormat',
            model_properties: {
              days_of_the_week: {
                client_side_validation: true,
                required: false,
                serialized_name: 'daysOfTheWeek',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DayOfWeekElementType',
                      type: {
                        name: 'Enum',
                        module: 'DayOfWeek'
                      }
                  }
                }
              },
              weeks_of_the_month: {
                client_side_validation: true,
                required: false,
                serialized_name: 'weeksOfTheMonth',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'WeekOfMonthElementType',
                      type: {
                        name: 'Enum',
                        module: 'WeekOfMonth'
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
