# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::V7_2_preview
  module Models
    #
    # Role Assignments
    #
    class RoleAssignment

      include MsRestAzure

      # @return [String] The role assignment ID.
      attr_accessor :id

      # @return [String] The role assignment name.
      attr_accessor :name

      # @return [String] The role assignment type.
      attr_accessor :type

      # @return [RoleAssignmentPropertiesWithScope] Role assignment properties.
      attr_accessor :properties


      #
      # Mapper for RoleAssignment class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RoleAssignment',
          type: {
            name: 'Composite',
            class_name: 'RoleAssignment',
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
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'RoleAssignmentPropertiesWithScope'
                }
              }
            }
          }
        }
      end
    end
  end
end
