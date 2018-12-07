# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorSimple8000Series::Mgmt::V2017_06_01
  module Models
    #
    # The controller power state change request.
    #
    class ControllerPowerStateChangeRequest < BaseModel

      include MsRestAzure

      # @return [ControllerPowerStateAction] The power state that the request
      # is expecting for the controller of the device. Possible values include:
      # 'Start', 'Restart', 'Shutdown'
      attr_accessor :action

      # @return [ControllerId] The active controller that the request is
      # expecting on the device. Possible values include: 'Unknown', 'None',
      # 'Controller0', 'Controller1'
      attr_accessor :active_controller

      # @return [ControllerStatus] The controller 0's status that the request
      # is expecting on the device. Possible values include: 'NotPresent',
      # 'PoweredOff', 'Ok', 'Recovering', 'Warning', 'Failure'
      attr_accessor :controller0state

      # @return [ControllerStatus] The controller 1's status that the request
      # is expecting on the device. Possible values include: 'NotPresent',
      # 'PoweredOff', 'Ok', 'Recovering', 'Warning', 'Failure'
      attr_accessor :controller1state


      #
      # Mapper for ControllerPowerStateChangeRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ControllerPowerStateChangeRequest',
          type: {
            name: 'Composite',
            class_name: 'ControllerPowerStateChangeRequest',
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
              kind: {
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'Enum',
                  module: 'Kind'
                }
              },
              action: {
                required: true,
                serialized_name: 'properties.action',
                type: {
                  name: 'Enum',
                  module: 'ControllerPowerStateAction'
                }
              },
              active_controller: {
                required: true,
                serialized_name: 'properties.activeController',
                type: {
                  name: 'Enum',
                  module: 'ControllerId'
                }
              },
              controller0state: {
                required: true,
                serialized_name: 'properties.controller0State',
                type: {
                  name: 'Enum',
                  module: 'ControllerStatus'
                }
              },
              controller1state: {
                required: true,
                serialized_name: 'properties.controller1State',
                type: {
                  name: 'Enum',
                  module: 'ControllerStatus'
                }
              }
            }
          }
        }
      end
    end
  end
end
