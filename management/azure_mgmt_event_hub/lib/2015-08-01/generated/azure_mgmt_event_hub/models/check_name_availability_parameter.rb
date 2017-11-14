# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventHub::Mgmt::V2015_08_01
  module Models
    #
    # Parameter supplied to check Namespace name availability operation
    #
    class CheckNameAvailabilityParameter

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Name to check the namespace name availability
      attr_accessor :name


      #
      # Mapper for CheckNameAvailabilityParameter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CheckNameAvailabilityParameter',
          type: {
            name: 'Composite',
            class_name: 'CheckNameAvailabilityParameter',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
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
