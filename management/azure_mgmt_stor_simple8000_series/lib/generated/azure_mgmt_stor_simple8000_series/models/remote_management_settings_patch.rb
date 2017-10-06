# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StorSimple8000Series
  module Models
    #
    # The settings for updating remote management mode of the device.
    #
    class RemoteManagementSettingsPatch

      include MsRestAzure

      include MsRest::JSONable
      # @return [RemoteManagementModeConfiguration] The remote management mode.
      # Possible values include: 'Unknown', 'Disabled', 'HttpsEnabled',
      # 'HttpsAndHttpEnabled'
      attr_accessor :remote_management_mode


      #
      # Mapper for RemoteManagementSettingsPatch class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RemoteManagementSettingsPatch',
          type: {
            name: 'Composite',
            class_name: 'RemoteManagementSettingsPatch',
            model_properties: {
              remote_management_mode: {
                required: true,
                serialized_name: 'remoteManagementMode',
                type: {
                  name: 'Enum',
                  module: 'RemoteManagementModeConfiguration'
                }
              }
            }
          }
        }
      end
    end
  end
end
