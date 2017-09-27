# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::KeyVault
  module Models
    #
    # Deleted vault information with extended details.
    #
    class DeletedVault

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The resource ID for the deleted key vault.
      attr_accessor :id

      # @return [String] The name of the key vault.
      attr_accessor :name

      # @return [String] The resource type of the key vault.
      attr_accessor :type

      # @return [DeletedVaultProperties] Properties of the vault
      attr_accessor :properties


      #
      # Mapper for DeletedVault class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DeletedVault',
          type: {
            name: 'Composite',
            class_name: 'DeletedVault',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              properties: {
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'DeletedVaultProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
