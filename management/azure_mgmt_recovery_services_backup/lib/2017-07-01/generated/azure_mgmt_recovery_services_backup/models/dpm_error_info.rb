# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 2.2.27.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2017_07_01
  module Models
    #
    # DPM workload-specific error information.
    #
    class DpmErrorInfo

      include MsRestAzure

      # @return [String] Localized error string.
      attr_accessor :error_string

      # @return [Array<String>] List of localized recommendations for above
      # error code.
      attr_accessor :recommendations


      #
      # Mapper for DpmErrorInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DpmErrorInfo',
          type: {
            name: 'Composite',
            class_name: 'DpmErrorInfo',
            model_properties: {
              error_string: {
                client_side_validation: true,
                required: false,
                serialized_name: 'errorString',
                type: {
                  name: 'String'
                }
              },
              recommendations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recommendations',
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
              }
            }
          }
        }
      end
    end
  end
end
