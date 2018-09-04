# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerInstance::Mgmt::V2018_02_01_preview
  module Models
    #
    # Container group log analytics information.
    #
    class LogAnalytics

      include MsRestAzure

      # @return [String] The workspace id for log analytics
      attr_accessor :workspace_id

      # @return [String] The workspace key for log analytics
      attr_accessor :workspace_key


      #
      # Mapper for LogAnalytics class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'LogAnalytics',
          type: {
            name: 'Composite',
            class_name: 'LogAnalytics',
            model_properties: {
              workspace_id: {
                required: true,
                serialized_name: 'workspaceId',
                type: {
                  name: 'String'
                }
              },
              workspace_key: {
                required: true,
                serialized_name: 'workspaceKey',
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
