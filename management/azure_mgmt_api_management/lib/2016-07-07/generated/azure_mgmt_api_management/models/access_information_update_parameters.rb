# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2016_07_07
  module Models
    #
    # Tenant access information update parameters of the API Management
    # service.
    #
    class AccessInformationUpdateParameters

      include MsRestAzure

      # @return [Boolean] Tenant access information of the API Management
      # service.
      attr_accessor :enabled


      #
      # Mapper for AccessInformationUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AccessInformationUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'AccessInformationUpdateParameters',
            model_properties: {
              enabled: {
                required: true,
                serialized_name: 'enabled',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
