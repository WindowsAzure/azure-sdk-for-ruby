# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2015_04_08
  module Models
    #
    # Cosmos DB MongoDB database id object
    #
    class MongoDBDatabaseResource

      include MsRestAzure

      # @return [String] Name of the Cosmos DB MongoDB database
      attr_accessor :id


      #
      # Mapper for MongoDBDatabaseResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MongoDBDatabaseResource',
          type: {
            name: 'Composite',
            class_name: 'MongoDBDatabaseResource',
            model_properties: {
              id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'id',
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
