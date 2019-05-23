# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2015_04_08
  module Models
    #
    # Cosmos DB Cassandra table cluster key
    #
    class ClusterKey

      include MsRestAzure

      # @return [String] Name of the Cosmos DB Cassandra table cluster key
      attr_accessor :name

      # @return [String] Order of the Cosmos DB Cassandra table cluster key,
      # only support "Asc" and "Desc"
      attr_accessor :order_by


      #
      # Mapper for ClusterKey class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ClusterKey',
          type: {
            name: 'Composite',
            class_name: 'ClusterKey',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              order_by: {
                client_side_validation: true,
                required: false,
                serialized_name: 'orderBy',
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
