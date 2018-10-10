# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerInstance::Mgmt::V2017_10_01_preview
  module Models
    #
    # The instance view of the container instance. Only valid in response.
    #
    class ContainerPropertiesInstanceView

      include MsRestAzure

      # @return [Integer] The number of times that the container instance has
      # been restarted.
      attr_accessor :restart_count

      # @return [ContainerState] Current container instance state.
      attr_accessor :current_state

      # @return [ContainerState] Previous container instance state.
      attr_accessor :previous_state

      # @return [Array<Event>] The events of the container instance.
      attr_accessor :events


      #
      # Mapper for ContainerPropertiesInstanceView class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ContainerProperties_instanceView',
          type: {
            name: 'Composite',
            class_name: 'ContainerPropertiesInstanceView',
            model_properties: {
              restart_count: {
                required: false,
                read_only: true,
                serialized_name: 'restartCount',
                type: {
                  name: 'Number'
                }
              },
              current_state: {
                required: false,
                read_only: true,
                serialized_name: 'currentState',
                type: {
                  name: 'Composite',
                  class_name: 'ContainerState'
                }
              },
              previous_state: {
                required: false,
                read_only: true,
                serialized_name: 'previousState',
                type: {
                  name: 'Composite',
                  class_name: 'ContainerState'
                }
              },
              events: {
                required: false,
                read_only: true,
                serialized_name: 'events',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'EventElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Event'
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
