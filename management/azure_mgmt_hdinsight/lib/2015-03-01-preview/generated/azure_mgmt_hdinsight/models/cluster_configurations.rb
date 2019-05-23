# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Hdinsight::Mgmt::V2015_03_01_preview
  module Models
    #
    # The configuration object for the specified cluster.
    #
    class ClusterConfigurations

      include MsRestAzure

      # @return [Hash{String => Hash{String => String}}] The configuration
      # object for the specified configuration for the specified cluster.
      attr_accessor :configurations


      #
      # Mapper for ClusterConfigurations class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ClusterConfigurations',
          type: {
            name: 'Composite',
            class_name: 'ClusterConfigurations',
            model_properties: {
              configurations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'configurations',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'HashElementType',
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
