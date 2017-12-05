# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2017_03_01
  module Models
    #
    # LoadBalancer resource
    #
    class LoadBalancer < Resource

      include MsRestAzure

      # @return [Array<FrontendIPConfiguration>] Object representing the
      # frontend IPs to be used for the load balancer
      attr_accessor :frontend_ipconfigurations

      # @return [Array<BackendAddressPool>] Collection of backend address pools
      # used by a load balancer
      attr_accessor :backend_address_pools

      # @return [Array<LoadBalancingRule>] Object collection representing the
      # load balancing rules Gets the provisioning
      attr_accessor :load_balancing_rules

      # @return [Array<Probe>] Collection of probe objects used in the load
      # balancer
      attr_accessor :probes

      # @return [Array<InboundNatRule>] Collection of inbound NAT Rules used by
      # a load balancer. Defining inbound NAT rules on your load balancer is
      # mutually exclusive with defining an inbound NAT pool. Inbound NAT pools
      # are referenced from virtual machine scale sets. NICs that are
      # associated with individual virtual machines cannot reference an Inbound
      # NAT pool. They have to reference individual inbound NAT rules.
      attr_accessor :inbound_nat_rules

      # @return [Array<InboundNatPool>] Defines an external port range for
      # inbound NAT to a single backend port on NICs associated with a load
      # balancer. Inbound NAT rules are created automatically for each NIC
      # associated with the Load Balancer using an external port from this
      # range. Defining an Inbound NAT pool on your Load Balancer is mutually
      # exclusive with defining inbound Nat rules. Inbound NAT pools are
      # referenced from virtual machine scale sets. NICs that are associated
      # with individual virtual machines cannot reference an inbound NAT pool.
      # They have to reference individual inbound NAT rules.
      attr_accessor :inbound_nat_pools

      # @return [Array<OutboundNatRule>] The outbound NAT rules.
      attr_accessor :outbound_nat_rules

      # @return [String] The resource GUID property of the load balancer
      # resource.
      attr_accessor :resource_guid

      # @return [String] Gets the provisioning state of the PublicIP resource.
      # Possible values are: 'Updating', 'Deleting', and 'Failed'.
      attr_accessor :provisioning_state

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for LoadBalancer class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LoadBalancer',
          type: {
            name: 'Composite',
            class_name: 'LoadBalancer',
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
              frontend_ipconfigurations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.frontendIPConfigurations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'FrontendIPConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'FrontendIPConfiguration'
                      }
                  }
                }
              },
              backend_address_pools: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.backendAddressPools',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'BackendAddressPoolElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'BackendAddressPool'
                      }
                  }
                }
              },
              load_balancing_rules: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.loadBalancingRules',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'LoadBalancingRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'LoadBalancingRule'
                      }
                  }
                }
              },
              probes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.probes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ProbeElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Probe'
                      }
                  }
                }
              },
              inbound_nat_rules: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.inboundNatRules',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'InboundNatRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'InboundNatRule'
                      }
                  }
                }
              },
              inbound_nat_pools: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.inboundNatPools',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'InboundNatPoolElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'InboundNatPool'
                      }
                  }
                }
              },
              outbound_nat_rules: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.outboundNatRules',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'OutboundNatRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'OutboundNatRule'
                      }
                  }
                }
              },
              resource_guid: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.resourceGuid',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
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
