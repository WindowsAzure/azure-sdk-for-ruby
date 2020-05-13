# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_03_01
  module Models
    #
    # VirtualRouter Resource.
    #
    class VirtualRouter < Resource

      include MsRestAzure

      # @return [Integer] VirtualRouter ASN.
      attr_accessor :virtual_router_asn

      # @return [Array<String>] VirtualRouter IPs.
      attr_accessor :virtual_router_ips

      # @return [SubResource] The Subnet on which VirtualRouter is hosted.
      attr_accessor :hosted_subnet

      # @return [SubResource] The Gateway on which VirtualRouter is hosted.
      attr_accessor :hosted_gateway

      # @return [Array<SubResource>] List of references to
      # VirtualRouterPeerings.
      attr_accessor :peerings

      # @return [ProvisioningState] The provisioning state of the resource.
      # Possible values include: 'Succeeded', 'Updating', 'Deleting', 'Failed'
      attr_accessor :provisioning_state

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for VirtualRouter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualRouter',
          type: {
            name: 'Composite',
            class_name: 'VirtualRouter',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
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
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: false,
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
              virtual_router_asn: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.virtualRouterAsn',
                constraints: {
                  InclusiveMaximum: 4294967295,
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              },
              virtual_router_ips: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.virtualRouterIps',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              hosted_subnet: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.hostedSubnet',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              hosted_gateway: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.hostedGateway',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              peerings: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.peerings',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SubResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SubResource'
                      }
                  }
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'etag',
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
