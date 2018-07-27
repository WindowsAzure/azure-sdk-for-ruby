# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 2.2.27.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_08_10
  module Models
    #
    # Class to represent shoebox properties in json client discovery.
    #
    class ClientDiscoveryForProperties

      include MsRestAzure

      # @return [ClientDiscoveryForServiceSpecification] Operation properties.
      attr_accessor :service_specification


      #
      # Mapper for ClientDiscoveryForProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ClientDiscoveryForProperties',
          type: {
            name: 'Composite',
            class_name: 'ClientDiscoveryForProperties',
            model_properties: {
              service_specification: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serviceSpecification',
                type: {
                  name: 'Composite',
                  class_name: 'ClientDiscoveryForServiceSpecification'
                }
              }
            }
          }
        }
      end
    end
  end
end
