# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # Connection draining allows open connections to a backend server to be
    # active for a specified time after the backend server got removed from the
    # configuration.
    #
    class ApplicationGatewayConnectionDraining

      include MsRestAzure

      # @return [Boolean] Whether connection draining is enabled or not.
      attr_accessor :enabled

      # @return [Integer] The number of seconds connection draining is active.
      # Acceptable values are from 1 second to 3600 seconds.
      attr_accessor :drain_timeout_in_sec


      #
      # Mapper for ApplicationGatewayConnectionDraining class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApplicationGatewayConnectionDraining',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayConnectionDraining',
            model_properties: {
              enabled: {
                required: true,
                serialized_name: 'enabled',
                type: {
                  name: 'Boolean'
                }
              },
              drain_timeout_in_sec: {
                required: true,
                serialized_name: 'drainTimeoutInSec',
                constraints: {
                  InclusiveMaximum: 3600,
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
