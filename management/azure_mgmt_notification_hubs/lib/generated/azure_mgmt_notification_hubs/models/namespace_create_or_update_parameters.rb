# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::NotificationHubs
  module Models
    #
    # Parameters supplied to the CreateOrUpdate Namespace operation.
    #
    class NamespaceCreateOrUpdateParameters < MsRestAzure::Resource

      include MsRestAzure

      # @return [String] The name of the namespace.
      attr_accessor :namespace_create_or_update_parameters_name

      # @return [String] Provisioning state of the Namespace.
      attr_accessor :provisioning_state

      # @return [String] Specifies the targeted region in which the namespace
      # should be created. It can be any of the following values: Australia
      # EastAustralia SoutheastCentral USEast USEast US 2West USNorth Central
      # USSouth Central USEast AsiaSoutheast AsiaBrazil SouthJapan EastJapan
      # WestNorth EuropeWest Europe
      attr_accessor :region

      # @return [String] Status of the namespace. It can be any of these
      # values:1 = Created/Active2 = Creating3 = Suspended4 = Deleting
      attr_accessor :status

      # @return [DateTime] The time the namespace was created.
      attr_accessor :created_at

      # @return [String] Endpoint you can use to perform NotificationHub
      # operations.
      attr_accessor :service_bus_endpoint

      # @return [String] The Id of the Azure subscription associated with the
      # namespace.
      attr_accessor :subscription_id

      # @return [String] ScaleUnit where the namespace gets created
      attr_accessor :scale_unit

      # @return [Boolean] Whether or not the namespace is currently enabled.
      attr_accessor :enabled

      # @return [Boolean] Whether or not the namespace is set as Critical.
      attr_accessor :critical

      # @return [NamespaceType] The namespace type. Possible values include:
      # 'Messaging', 'NotificationHub'
      attr_accessor :namespace_type


      #
      # Mapper for NamespaceCreateOrUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'NamespaceCreateOrUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'NamespaceCreateOrUpdateParameters',
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
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              sku: {
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              namespace_create_or_update_parameters_name: {
                required: false,
                serialized_name: 'properties.name',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              region: {
                required: false,
                serialized_name: 'properties.region',
                type: {
                  name: 'String'
                }
              },
              status: {
                required: false,
                serialized_name: 'properties.status',
                type: {
                  name: 'String'
                }
              },
              created_at: {
                required: false,
                serialized_name: 'properties.createdAt',
                type: {
                  name: 'DateTime'
                }
              },
              service_bus_endpoint: {
                required: false,
                serialized_name: 'properties.serviceBusEndpoint',
                type: {
                  name: 'String'
                }
              },
              subscription_id: {
                required: false,
                serialized_name: 'properties.subscriptionId',
                type: {
                  name: 'String'
                }
              },
              scale_unit: {
                required: false,
                serialized_name: 'properties.scaleUnit',
                type: {
                  name: 'String'
                }
              },
              enabled: {
                required: false,
                serialized_name: 'properties.enabled',
                type: {
                  name: 'Boolean'
                }
              },
              critical: {
                required: false,
                serialized_name: 'properties.critical',
                type: {
                  name: 'Boolean'
                }
              },
              namespace_type: {
                required: false,
                serialized_name: 'properties.namespaceType',
                type: {
                  name: 'Enum',
                  module: 'NamespaceType'
                }
              }
            }
          }
        }
      end
    end
  end
end
