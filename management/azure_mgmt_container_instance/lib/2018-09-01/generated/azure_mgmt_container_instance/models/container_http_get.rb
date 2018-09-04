# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerInstance::Mgmt::V2018_02_01_preview
  module Models
    #
    # The container Http Get settings, for liveness or readiness probe
    #
    class ContainerHttpGet

      include MsRestAzure

      # @return [String] The path to probe.
      attr_accessor :path

      # @return [Integer] The port number to probe.
      attr_accessor :port

      # @return [Enum] The scheme. Possible values include: 'http', 'https'
      attr_accessor :scheme


      #
      # Mapper for ContainerHttpGet class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ContainerHttpGet',
          type: {
            name: 'Composite',
            class_name: 'ContainerHttpGet',
            model_properties: {
              path: {
                required: false,
                serialized_name: 'path',
                type: {
                  name: 'String'
                }
              },
              port: {
                required: true,
                serialized_name: 'port',
                type: {
                  name: 'Number'
                }
              },
              scheme: {
                required: false,
                serialized_name: 'scheme',
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
