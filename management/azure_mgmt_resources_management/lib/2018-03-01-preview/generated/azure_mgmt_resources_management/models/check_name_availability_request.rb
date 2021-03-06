# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ResourcesManagement::Mgmt::V2018_03_01_preview
  module Models
    #
    # Management group name availability check parameters.
    #
    class CheckNameAvailabilityRequest

      include MsRestAzure

      # @return [String] the name to check for availability
      attr_accessor :name

      # @return [Type] fully qualified resource type which includes provider
      # namespace. Possible values include:
      # '/providers/Microsoft.Management/managementGroups'
      attr_accessor :type


      #
      # Mapper for CheckNameAvailabilityRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CheckNameAvailabilityRequest',
          type: {
            name: 'Composite',
            class_name: 'CheckNameAvailabilityRequest',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'Enum',
                  module: 'Type'
                }
              }
            }
          }
        }
      end
    end
  end
end
