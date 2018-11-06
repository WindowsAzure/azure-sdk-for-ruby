# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2017_03_01_preview
  module Models
    #
    # Contains the information necessary to perform a create database restore
    # point operation.
    #
    class CreateDatabaseRestorePointDefinition

      include MsRestAzure

      # @return [String] The restore point label to apply
      attr_accessor :restore_point_label


      #
      # Mapper for CreateDatabaseRestorePointDefinition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CreateDatabaseRestorePointDefinition',
          type: {
            name: 'Composite',
            class_name: 'CreateDatabaseRestorePointDefinition',
            model_properties: {
              restore_point_label: {
                required: true,
                serialized_name: 'restorePointLabel',
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
