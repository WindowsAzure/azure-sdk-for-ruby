# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_08_01
  module Models
    #
    # Triggered Web Job History. List of Triggered Web Job Run Information
    # elements.
    #
    class TriggeredJobHistory < ProxyOnlyResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<TriggeredJobRun>] List of triggered web job runs.
      attr_accessor :triggered_job_runs


      #
      # Mapper for TriggeredJobHistory class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TriggeredJobHistory',
          type: {
            name: 'Composite',
            class_name: 'TriggeredJobHistory',
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
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
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
              triggered_job_runs: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.triggeredJobRuns',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'TriggeredJobRunElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TriggeredJobRun'
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
