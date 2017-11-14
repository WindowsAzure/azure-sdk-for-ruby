# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2016_03_30
  module Models
    #
    # Probe of application gateway
    #
    class ApplicationGatewayProbe < SubResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [ApplicationGatewayProtocol] Gets or sets the protocol.
      # Possible values include: 'Http', 'Https'
      attr_accessor :protocol

      # @return [String] Gets or sets the host to send probe to
      attr_accessor :host

      # @return [String] Gets or sets the relative path of probe
      attr_accessor :path

      # @return [Integer] Gets or sets probing interval in seconds
      attr_accessor :interval

      # @return [Integer] Gets or sets probing timeout in seconds
      attr_accessor :timeout

      # @return [Integer] Gets or sets probing unhealthy threshold
      attr_accessor :unhealthy_threshold

      # @return [String] Gets or sets Provisioning state of the backend http
      # settings resource Updating/Deleting/Failed
      attr_accessor :provisioning_state

      # @return [String] Gets name of the resource that is unique within a
      # resource group. This name can be used to access the resource
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated
      attr_accessor :etag


      #
      # Mapper for ApplicationGatewayProbe class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationGatewayProbe',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayProbe',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              protocol: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.protocol',
                type: {
                  name: 'String'
                }
              },
              host: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.host',
                type: {
                  name: 'String'
                }
              },
              path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.path',
                type: {
                  name: 'String'
                }
              },
              interval: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.interval',
                type: {
                  name: 'Number'
                }
              },
              timeout: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.timeout',
                type: {
                  name: 'Number'
                }
              },
              unhealthy_threshold: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.unhealthyThreshold',
                type: {
                  name: 'Number'
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
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
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
