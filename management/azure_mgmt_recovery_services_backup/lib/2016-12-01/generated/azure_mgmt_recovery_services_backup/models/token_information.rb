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
    # The token information details.
    #
    class TokenInformation

      include MsRestAzure

      # @return [String] Token value.
      attr_accessor :token

      # @return [Integer] Expiry time of token.
      attr_accessor :expiry_time_in_utc_ticks

      # @return [String] Security PIN
      attr_accessor :security_pin


      #
      # Mapper for TokenInformation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TokenInformation',
          type: {
            name: 'Composite',
            class_name: 'TokenInformation',
            model_properties: {
              token: {
                client_side_validation: true,
                required: false,
                serialized_name: 'token',
                type: {
                  name: 'String'
                }
              },
              expiry_time_in_utc_ticks: {
                client_side_validation: true,
                required: false,
                serialized_name: 'expiryTimeInUtcTicks',
                type: {
                  name: 'Number'
                }
              },
              security_pin: {
                client_side_validation: true,
                required: false,
                serialized_name: 'securityPIN',
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
