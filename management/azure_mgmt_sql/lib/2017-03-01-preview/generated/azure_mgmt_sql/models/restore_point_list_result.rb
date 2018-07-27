# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2017_03_01_preview
  module Models
    #
    # A list of long term retention bacukps.
    #
    class RestorePointListResult

      include MsRestAzure

      # @return [Array<RestorePoint>] Array of results.
      attr_accessor :value

      # @return [String] Link to retrieve next page of results.
      attr_accessor :next_link


      #
      # Mapper for RestorePointListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RestorePointListResult',
          type: {
            name: 'Composite',
            class_name: 'RestorePointListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'RestorePointElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RestorePoint'
                      }
                  }
                }
              },
              next_link: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'nextLink',
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
