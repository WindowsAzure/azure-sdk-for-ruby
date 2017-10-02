# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 2.2.22.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup
  module Models
    #
    # Weekly retention schedule.
    #
    class WeeklyRetentionSchedule

      include MsRestAzure

      # @return [Array<DayOfWeek>] List of days of week for weekly retention
      # policy.
      attr_accessor :days_of_the_week

      # @return [Array<DateTime>] Retention times of retention policy.
      attr_accessor :retention_times

      # @return [RetentionDuration] Retention duration of retention Policy.
      attr_accessor :retention_duration


      #
      # Mapper for WeeklyRetentionSchedule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'WeeklyRetentionSchedule',
          type: {
            name: 'Composite',
            class_name: 'WeeklyRetentionSchedule',
            model_properties: {
              days_of_the_week: {
                required: false,
                serialized_name: 'daysOfTheWeek',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'DayOfWeekElementType',
                      type: {
                        name: 'Enum',
                        module: 'DayOfWeek'
                      }
                  }
                }
              },
              retention_times: {
                required: false,
                serialized_name: 'retentionTimes',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'DateTimeElementType',
                      type: {
                        name: 'DateTime'
                      }
                  }
                }
              },
              retention_duration: {
                required: false,
                serialized_name: 'retentionDuration',
                type: {
                  name: 'Composite',
                  class_name: 'RetentionDuration'
                }
              }
            }
          }
        }
      end
    end
  end
end
