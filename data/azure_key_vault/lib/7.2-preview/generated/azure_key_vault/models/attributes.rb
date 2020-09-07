# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::V7_2_preview
  module Models
    #
    # The object attributes managed by the KeyVault service.
    #
    class Attributes

      include MsRestAzure

      # @return [Boolean] Determines whether the object is enabled.
      attr_accessor :enabled

      # @return Not before date in UTC.
      attr_accessor :not_before

      # @return Expiry date in UTC.
      attr_accessor :expires

      # @return Creation time in UTC.
      attr_accessor :created

      # @return Last updated time in UTC.
      attr_accessor :updated


      #
      # Mapper for Attributes class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Attributes',
          type: {
            name: 'Composite',
            class_name: 'Attributes',
            model_properties: {
              enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'enabled',
                type: {
                  name: 'Boolean'
                }
              },
              not_before: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nbf',
                type: {
                  name: 'UnixTime'
                }
              },
              expires: {
                client_side_validation: true,
                required: false,
                serialized_name: 'exp',
                type: {
                  name: 'UnixTime'
                }
              },
              created: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'created',
                type: {
                  name: 'UnixTime'
                }
              },
              updated: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'updated',
                type: {
                  name: 'UnixTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
