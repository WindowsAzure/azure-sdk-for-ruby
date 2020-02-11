# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Kusto::Mgmt::V2019_11_09
  module Models
    #
    # The list Kusto database principal assignments operation response.
    #
    class DatabasePrincipalAssignmentListResult

      include MsRestAzure

      # @return [Array<DatabasePrincipalAssignment>] The list of Kusto database
      # principal assignments.
      attr_accessor :value


      #
      # Mapper for DatabasePrincipalAssignmentListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DatabasePrincipalAssignmentListResult',
          type: {
            name: 'Composite',
            class_name: 'DatabasePrincipalAssignmentListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DatabasePrincipalAssignmentElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DatabasePrincipalAssignment'
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
