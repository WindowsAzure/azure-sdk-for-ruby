# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerInstance::Mgmt::V2018_09_01
  module Models
    #
    # Container group diagnostic information.
    #
    class ContainerGroupDiagnostics

      include MsRestAzure

      # @return [LogAnalytics] Container group log analytics information.
      attr_accessor :log_analytics


      #
      # Mapper for ContainerGroupDiagnostics class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ContainerGroupDiagnostics',
          type: {
            name: 'Composite',
            class_name: 'ContainerGroupDiagnostics',
            model_properties: {
              log_analytics: {
                client_side_validation: true,
                required: false,
                serialized_name: 'logAnalytics',
                type: {
                  name: 'Composite',
                  class_name: 'LogAnalytics'
                }
              }
            }
          }
        }
      end
    end
  end
end