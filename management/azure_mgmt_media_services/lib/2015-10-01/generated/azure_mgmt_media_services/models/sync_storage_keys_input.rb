# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2015_10_01
  module Models
    #
    # The request  body for a SyncStorageKeys API.
    #
    class SyncStorageKeysInput

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The id of the storage account resource.
      attr_accessor :id


      #
      # Mapper for SyncStorageKeysInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SyncStorageKeysInput',
          type: {
            name: 'Composite',
            class_name: 'SyncStorageKeysInput',
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
