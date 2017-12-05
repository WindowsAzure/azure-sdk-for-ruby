# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::Mgmt::V2016_09_01
  module Models
    #
    # The settings to enable AAD authentication on the cluster
    #
    class AzureActiveDirectory

      include MsRestAzure

      # @return [String] Azure active directory tenant id
      attr_accessor :tenant_id

      # @return [String] Azure active directory cluster application id
      attr_accessor :cluster_application

      # @return [String] Azure active directory client application id
      attr_accessor :client_application


      #
      # Mapper for AzureActiveDirectory class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureActiveDirectory',
          type: {
            name: 'Composite',
            class_name: 'AzureActiveDirectory',
            model_properties: {
              tenant_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tenantId',
                type: {
                  name: 'String'
                }
              },
              cluster_application: {
                client_side_validation: true,
                required: false,
                serialized_name: 'clusterApplication',
                type: {
                  name: 'String'
                }
              },
              client_application: {
                client_side_validation: true,
                required: false,
                serialized_name: 'clientApplication',
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
