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
    # Long term policy schedule.
    #
    class LongTermSchedulePolicy < SchedulePolicy

      include MsRestAzure


      def initialize
        @schedulePolicyType = "LongTermSchedulePolicy"
      end

      attr_accessor :schedulePolicyType


      #
      # Mapper for LongTermSchedulePolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'LongTermSchedulePolicy',
          type: {
            name: 'Composite',
            class_name: 'LongTermSchedulePolicy',
            model_properties: {
              schedulePolicyType: {
                required: true,
                serialized_name: 'schedulePolicyType',
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
