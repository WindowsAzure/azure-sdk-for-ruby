# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ResourceHealth::Mgmt::V2018_07_01
  module Models
    #
    # Update for service health event.
    #
    class Update

      include MsRestAzure

      # @return [String] Summary text for the given update for the service
      # health event.
      attr_accessor :summary

      # @return [DateTime] It provides the Timestamp for the given update for
      # the service health event.
      attr_accessor :update_date_time


      #
      # Mapper for Update class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'update',
          type: {
            name: 'Composite',
            class_name: 'Update',
            model_properties: {
              summary: {
                client_side_validation: true,
                required: false,
                serialized_name: 'summary',
                type: {
                  name: 'String'
                }
              },
              update_date_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'updateDateTime',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
