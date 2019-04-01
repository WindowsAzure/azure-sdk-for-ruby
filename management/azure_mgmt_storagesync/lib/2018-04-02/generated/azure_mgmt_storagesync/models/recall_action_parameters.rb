# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageSync::Mgmt::V2018_04_02
  module Models
    #
    # The parameters used when calling recall action on server endpoint.
    #
    class RecallActionParameters

      include MsRestAzure

      # @return [String] Pattern of the files.
      attr_accessor :pattern

      # @return [String] Recall path.
      attr_accessor :recall_path


      #
      # Mapper for RecallActionParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RecallActionParameters',
          type: {
            name: 'Composite',
            class_name: 'RecallActionParameters',
            model_properties: {
              pattern: {
                client_side_validation: true,
                required: false,
                serialized_name: 'pattern',
                type: {
                  name: 'String'
                }
              },
              recall_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recallPath',
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
