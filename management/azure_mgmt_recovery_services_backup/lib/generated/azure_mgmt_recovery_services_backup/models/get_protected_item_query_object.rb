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
    # Filters to list backup items.
    #
    class GetProtectedItemQueryObject

      include MsRestAzure

      # @return [String] Specifies if the additional information should be
      # provided for this item.
      attr_accessor :expand


      #
      # Mapper for GetProtectedItemQueryObject class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'GetProtectedItemQueryObject',
          type: {
            name: 'Composite',
            class_name: 'GetProtectedItemQueryObject',
            model_properties: {
              expand: {
                required: false,
                serialized_name: 'expand',
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
