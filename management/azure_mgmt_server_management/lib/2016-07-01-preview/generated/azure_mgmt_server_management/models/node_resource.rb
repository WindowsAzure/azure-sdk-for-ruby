# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServerManagement::Mgmt::V2016_07_01_preview
  module Models
    #
    # A Node Resource.
    #
    class NodeResource < Resource

      include MsRestAzure

      # @return [String] ID of the gateway.
      attr_accessor :gateway_id

      # @return [String] myhost.domain.com
      attr_accessor :connection_name

      # @return [DateTime] UTC date and time when node was first added to
      # management service.
      attr_accessor :created

      # @return [DateTime] UTC date and time when node was last updated.
      attr_accessor :updated


      #
      # Mapper for NodeResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NodeResource',
          type: {
            name: 'Composite',
            class_name: 'NodeResource',
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
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
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
              location: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              },
              gateway_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.gatewayId',
                type: {
                  name: 'String'
                }
              },
              connection_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.connectionName',
                type: {
                  name: 'String'
                }
              },
              created: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.created',
                type: {
                  name: 'DateTime'
                }
              },
              updated: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.updated',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end