# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_08_01
  module Models
    #
    # A snapshot of an app.
    #
    class Snapshot < ProxyOnlyResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The time the snapshot was taken.
      attr_accessor :time


      #
      # Mapper for Snapshot class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Snapshot',
          type: {
            name: 'Composite',
            class_name: 'Snapshot',
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
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
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
              time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.time',
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
