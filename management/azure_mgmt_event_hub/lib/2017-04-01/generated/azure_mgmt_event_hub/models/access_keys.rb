# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventHub::Mgmt::V2017_04_01
  module Models
    #
    # Namespace/EventHub Connection String
    #
    class AccessKeys

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Primary connection string of the created namespace
      # AuthorizationRule.
      attr_accessor :primary_connection_string

      # @return [String] Secondary connection string of the created namespace
      # AuthorizationRule.
      attr_accessor :secondary_connection_string

      # @return [String] Primary connection string of the alias if GEO DR is
      # enabled
      attr_accessor :alias_primary_connection_string

      # @return [String] Secondary  connection string of the alias if GEO DR is
      # enabled
      attr_accessor :alias_secondary_connection_string

      # @return [String] A base64-encoded 256-bit primary key for signing and
      # validating the SAS token.
      attr_accessor :primary_key

      # @return [String] A base64-encoded 256-bit primary key for signing and
      # validating the SAS token.
      attr_accessor :secondary_key

      # @return [String] A string that describes the AuthorizationRule.
      attr_accessor :key_name


      #
      # Mapper for AccessKeys class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AccessKeys',
          type: {
            name: 'Composite',
            class_name: 'AccessKeys',
            model_properties: {
              primary_connection_string: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'primaryConnectionString',
                type: {
                  name: 'String'
                }
              },
              secondary_connection_string: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'secondaryConnectionString',
                type: {
                  name: 'String'
                }
              },
              alias_primary_connection_string: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'aliasPrimaryConnectionString',
                type: {
                  name: 'String'
                }
              },
              alias_secondary_connection_string: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'aliasSecondaryConnectionString',
                type: {
                  name: 'String'
                }
              },
              primary_key: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'primaryKey',
                type: {
                  name: 'String'
                }
              },
              secondary_key: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'secondaryKey',
                type: {
                  name: 'String'
                }
              },
              key_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'keyName',
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
