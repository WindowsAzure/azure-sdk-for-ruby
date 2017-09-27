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
    # Additional information of the DPMContainer.
    #
    class DPMContainerExtendedInfo

      include MsRestAzure

      include MsRest::JSONable
      # @return [DateTime] Last refresh time of the DPMContainer.
      attr_accessor :last_refreshed_at


      #
      # Mapper for DPMContainerExtendedInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DPMContainerExtendedInfo',
          type: {
            name: 'Composite',
            class_name: 'DPMContainerExtendedInfo',
            model_properties: {
              last_refreshed_at: {
                required: false,
                serialized_name: 'lastRefreshedAt',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
