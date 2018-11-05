# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2018_07_01_preview
  module Models
    #
    # The batch configuration properties definition.
    #
    class BatchConfigurationProperties < ArtifactProperties

      include MsRestAzure

      # @return [String] The name of the batch group.
      attr_accessor :batch_group_name

      # @return [BatchReleaseCriteria] The batch release criteria.
      attr_accessor :release_criteria


      #
      # Mapper for BatchConfigurationProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BatchConfigurationProperties',
          type: {
            name: 'Composite',
            class_name: 'BatchConfigurationProperties',
            model_properties: {
              created_time: {
                required: false,
                serialized_name: 'createdTime',
                type: {
                  name: 'DateTime'
                }
              },
              changed_time: {
                required: false,
                serialized_name: 'changedTime',
                type: {
                  name: 'DateTime'
                }
              },
              metadata: {
                required: false,
                serialized_name: 'metadata',
                type: {
                  name: 'Object'
                }
              },
              batch_group_name: {
                required: true,
                serialized_name: 'batchGroupName',
                type: {
                  name: 'String'
                }
              },
              release_criteria: {
                required: true,
                serialized_name: 'releaseCriteria',
                type: {
                  name: 'Composite',
                  class_name: 'BatchReleaseCriteria'
                }
              }
            }
          }
        }
      end
    end
  end
end