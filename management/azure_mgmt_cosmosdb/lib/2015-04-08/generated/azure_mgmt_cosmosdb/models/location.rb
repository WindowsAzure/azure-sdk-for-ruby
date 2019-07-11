# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2015_04_08
  module Models
    #
    # A region in which the Azure Cosmos DB database account is deployed.
    #
    class Location

      include MsRestAzure

      # @return [String] The unique identifier of the region within the
      # database account. Example: &lt;accountName&gt;-&lt;locationName&gt;.
      attr_accessor :id

      # @return [String] The name of the region.
      attr_accessor :location_name

      # @return [String] The connection endpoint for the specific region.
      # Example:
      # https://&lt;accountName&gt;-&lt;locationName&gt;.documents.azure.com:443/
      attr_accessor :document_endpoint

      # @return [String]
      attr_accessor :provisioning_state

      # @return [Integer] The failover priority of the region. A failover
      # priority of 0 indicates a write region. The maximum value for a
      # failover priority = (total number of regions - 1). Failover priority
      # values must be unique for each of the regions in which the database
      # account exists.
      attr_accessor :failover_priority


      #
      # Mapper for Location class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Location',
          type: {
            name: 'Composite',
            class_name: 'Location',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              location_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'locationName',
                type: {
                  name: 'String'
                }
              },
              document_endpoint: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'documentEndpoint',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'provisioningState',
                type: {
                  name: 'String'
                }
              },
              failover_priority: {
                client_side_validation: true,
                required: false,
                serialized_name: 'failoverPriority',
                constraints: {
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end