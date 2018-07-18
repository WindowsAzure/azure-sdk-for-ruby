# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 2.2.27.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_12_01
  module Models
    #
    # Filters to list backup copies.
    #
    class BMSRPQueryObject

      include MsRestAzure

      # @return [DateTime] Backup copies created after this time.
      attr_accessor :start_date

      # @return [DateTime] Backup copies created before this time.
      attr_accessor :end_date

      # @return [RestorePointQueryType] RestorePoint type. Possible values
      # include: 'Invalid', 'Full', 'Log', 'Differential',
      # 'FullAndDifferential', 'All'
      attr_accessor :restore_point_query_type

      # @return [Boolean] In Get Recovery Point, it tells whether extended
      # information about recovery point is asked.
      attr_accessor :extended_info


      #
      # Mapper for BMSRPQueryObject class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BMSRPQueryObject',
          type: {
            name: 'Composite',
            class_name: 'BMSRPQueryObject',
            model_properties: {
              start_date: {
                required: false,
                serialized_name: 'startDate',
                type: {
                  name: 'DateTime'
                }
              },
              end_date: {
                required: false,
                serialized_name: 'endDate',
                type: {
                  name: 'DateTime'
                }
              },
              restore_point_query_type: {
                required: false,
                serialized_name: 'restorePointQueryType',
                type: {
                  name: 'String'
                }
              },
              extended_info: {
                required: false,
                serialized_name: 'extendedInfo',
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
