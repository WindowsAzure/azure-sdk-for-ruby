# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2018_09_15
  module Models
    #
    # Schedules applicable to a virtual machine. The schedules may have been
    # defined on a VM or on lab level.
    #
    class ApplicableSchedule < Resource

      include MsRestAzure

      # @return [Schedule] The auto-shutdown schedule, if one has been set at
      # the lab or lab resource level.
      attr_accessor :lab_vms_shutdown

      # @return [Schedule] The auto-startup schedule, if one has been set at
      # the lab or lab resource level.
      attr_accessor :lab_vms_startup


      #
      # Mapper for ApplicableSchedule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicableSchedule',
          type: {
            name: 'Composite',
            class_name: 'ApplicableSchedule',
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
              lab_vms_shutdown: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.labVmsShutdown',
                type: {
                  name: 'Composite',
                  class_name: 'Schedule'
                }
              },
              lab_vms_startup: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.labVmsStartup',
                type: {
                  name: 'Composite',
                  class_name: 'Schedule'
                }
              }
            }
          }
        }
      end
    end
  end
end
