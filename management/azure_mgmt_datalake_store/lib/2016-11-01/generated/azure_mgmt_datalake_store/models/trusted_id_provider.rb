# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataLakeStore::Mgmt::V2016_11_01
  module Models
    #
    # Data Lake Store Trusted Identity Provider information
    #
    class TrustedIdProvider < SubResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The URL of this trusted identity provider
      attr_accessor :id_provider


      #
      # Mapper for TrustedIdProvider class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TrustedIdProvider',
          type: {
            name: 'Composite',
            class_name: 'TrustedIdProvider',
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
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              id_provider: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.idProvider',
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
