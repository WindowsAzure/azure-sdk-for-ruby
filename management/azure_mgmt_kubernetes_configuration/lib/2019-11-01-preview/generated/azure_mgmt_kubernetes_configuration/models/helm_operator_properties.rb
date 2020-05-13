# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KubernetesConfiguration::Mgmt::V2019_11_01_preview
  module Models
    #
    # Properties for Helm operator.
    #
    class HelmOperatorProperties

      include MsRestAzure

      # @return [String] Version of the operator Helm chart.
      attr_accessor :chart_version

      # @return [String] Values override for the operator Helm chart.
      attr_accessor :chart_values


      #
      # Mapper for HelmOperatorProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HelmOperatorProperties',
          type: {
            name: 'Composite',
            class_name: 'HelmOperatorProperties',
            model_properties: {
              chart_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'chartVersion',
                type: {
                  name: 'String'
                }
              },
              chart_values: {
                client_side_validation: true,
                required: false,
                serialized_name: 'chartValues',
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
