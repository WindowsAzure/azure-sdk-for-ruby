# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10
  module Models
    #
    # Input required to add vCenter.
    #
    class AddVCenterRequest

      include MsRestAzure

      # @return [AddVCenterRequestProperties] The properties of an add vCenter
      # request.
      attr_accessor :properties


      #
      # Mapper for AddVCenterRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AddVCenterRequest',
          type: {
            name: 'Composite',
            class_name: 'AddVCenterRequest',
            model_properties: {
              properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'AddVCenterRequestProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
