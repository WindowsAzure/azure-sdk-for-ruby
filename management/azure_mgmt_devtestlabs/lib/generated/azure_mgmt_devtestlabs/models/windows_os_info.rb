# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs
  module Models
    #
    # Information about a Windows OS.
    #
    class WindowsOsInfo

      include MsRestAzure

      # @return [WindowsOsState] The state of the Windows OS. Possible values
      # include: 'NonSysprepped', 'SysprepRequested', 'SysprepApplied'
      attr_accessor :windows_os_state


      #
      # Mapper for WindowsOsInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'WindowsOsInfo',
          type: {
            name: 'Composite',
            class_name: 'WindowsOsInfo',
            model_properties: {
              windows_os_state: {
                required: false,
                serialized_name: 'windowsOsState',
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
