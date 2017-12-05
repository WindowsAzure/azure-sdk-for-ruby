# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Batch::Mgmt::V2017_05_01
  module Models
    #
    # Identifies the Azure key vault associated with a Batch account.
    #
    class KeyVaultReference

      include MsRestAzure

      # @return [String] The resource ID of the Azure key vault associated with
      # the Batch account.
      attr_accessor :id

      # @return [String] The URL of the Azure key vault associated with the
      # Batch account.
      attr_accessor :url


      #
      # Mapper for KeyVaultReference class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'KeyVaultReference',
          type: {
            name: 'Composite',
            class_name: 'KeyVaultReference',
            model_properties: {
              id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              url: {
                client_side_validation: true,
                required: true,
                serialized_name: 'url',
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
