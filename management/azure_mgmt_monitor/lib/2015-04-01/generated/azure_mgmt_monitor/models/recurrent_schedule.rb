# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2015_04_01
  module Models
    #
    # The scheduling constraints for when the profile begins.
    #
    class RecurrentSchedule

      include MsRestAzure

      # @return [String] the timezone for the hours of the profile. Some
      # examples of valid timezones are: Dateline Standard Time, UTC-11,
      # Hawaiian Standard Time, Alaskan Standard Time, Pacific Standard Time
      # (Mexico), Pacific Standard Time, US Mountain Standard Time, Mountain
      # Standard Time (Mexico), Mountain Standard Time, Central America
      # Standard Time, Central Standard Time, Central Standard Time (Mexico),
      # Canada Central Standard Time, SA Pacific Standard Time, Eastern
      # Standard Time, US Eastern Standard Time, Venezuela Standard Time,
      # Paraguay Standard Time, Atlantic Standard Time, Central Brazilian
      # Standard Time, SA Western Standard Time, Pacific SA Standard Time,
      # Newfoundland Standard Time, E. South America Standard Time, Argentina
      # Standard Time, SA Eastern Standard Time, Greenland Standard Time,
      # Montevideo Standard Time, Bahia Standard Time, UTC-02, Mid-Atlantic
      # Standard Time, Azores Standard Time, Cape Verde Standard Time, Morocco
      # Standard Time, UTC, GMT Standard Time, Greenwich Standard Time, W.
      # Europe Standard Time, Central Europe Standard Time, Romance Standard
      # Time, Central European Standard Time, W. Central Africa Standard Time,
      # Namibia Standard Time, Jordan Standard Time, GTB Standard Time, Middle
      # East Standard Time, Egypt Standard Time, Syria Standard Time, E. Europe
      # Standard Time, South Africa Standard Time, FLE Standard Time, Turkey
      # Standard Time, Israel Standard Time, Kaliningrad Standard Time, Libya
      # Standard Time, Arabic Standard Time, Arab Standard Time, Belarus
      # Standard Time, Russian Standard Time, E. Africa Standard Time, Iran
      # Standard Time, Arabian Standard Time, Azerbaijan Standard Time, Russia
      # Time Zone 3, Mauritius Standard Time, Georgian Standard Time, Caucasus
      # Standard Time, Afghanistan Standard Time, West Asia Standard Time,
      # Ekaterinburg Standard Time, Pakistan Standard Time, India Standard
      # Time, Sri Lanka Standard Time, Nepal Standard Time, Central Asia
      # Standard Time, Bangladesh Standard Time, N. Central Asia Standard Time,
      # Myanmar Standard Time, SE Asia Standard Time, North Asia Standard Time,
      # China Standard Time, North Asia East Standard Time, Singapore Standard
      # Time, W. Australia Standard Time, Taipei Standard Time, Ulaanbaatar
      # Standard Time, Tokyo Standard Time, Korea Standard Time, Yakutsk
      # Standard Time, Cen. Australia Standard Time, AUS Central Standard Time,
      # E. Australia Standard Time, AUS Eastern Standard Time, West Pacific
      # Standard Time, Tasmania Standard Time, Magadan Standard Time,
      # Vladivostok Standard Time, Russia Time Zone 10, Central Pacific
      # Standard Time, Russia Time Zone 11, New Zealand Standard Time, UTC+12,
      # Fiji Standard Time, Kamchatka Standard Time, Tonga Standard Time, Samoa
      # Standard Time, Line Islands Standard Time
      attr_accessor :time_zone

      # @return [Array<String>] the collection of days that the profile takes
      # effect on. Possible values are Sunday through Saturday.
      attr_accessor :days

      # @return [Array<Integer>] A collection of hours that the profile takes
      # effect on. Values supported are 0 to 23 on the 24-hour clock (AM/PM
      # times are not supported).
      attr_accessor :hours

      # @return [Array<Integer>] A collection of minutes at which the profile
      # takes effect at.
      attr_accessor :minutes


      #
      # Mapper for RecurrentSchedule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RecurrentSchedule',
          type: {
            name: 'Composite',
            class_name: 'RecurrentSchedule',
            model_properties: {
              time_zone: {
                client_side_validation: true,
                required: true,
                serialized_name: 'timeZone',
                type: {
                  name: 'String'
                }
              },
              days: {
                client_side_validation: true,
                required: true,
                serialized_name: 'days',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              hours: {
                client_side_validation: true,
                required: true,
                serialized_name: 'hours',
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
              },
              minutes: {
                client_side_validation: true,
                required: true,
                serialized_name: 'minutes',
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
