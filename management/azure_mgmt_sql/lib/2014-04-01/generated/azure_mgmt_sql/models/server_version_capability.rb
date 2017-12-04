# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2014_04_01
  module Models
    #
    # The server capabilities.
    #
    class ServerVersionCapability

      include MsRestAzure

      # @return [String] The server version name.
      attr_accessor :name

      # @return [CapabilityStatus] The status of the server version. Possible
      # values include: 'Visible', 'Available', 'Default', 'Disabled'
      attr_accessor :status

      # @return [Array<EditionCapability>] The list of supported database
      # editions.
      attr_accessor :supported_editions

      # @return [Array<ElasticPoolEditionCapability>] The list of supported
      # elastic pool editions.
      attr_accessor :supported_elastic_pool_editions


      #
      # Mapper for ServerVersionCapability class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServerVersionCapability',
          type: {
            name: 'Composite',
            class_name: 'ServerVersionCapability',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'status',
                type: {
                  name: 'Enum',
                  module: 'CapabilityStatus'
                }
              },
              supported_editions: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'supportedEditions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'EditionCapabilityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EditionCapability'
                      }
                  }
                }
              },
              supported_elastic_pool_editions: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'supportedElasticPoolEditions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ElasticPoolEditionCapabilityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ElasticPoolEditionCapability'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
