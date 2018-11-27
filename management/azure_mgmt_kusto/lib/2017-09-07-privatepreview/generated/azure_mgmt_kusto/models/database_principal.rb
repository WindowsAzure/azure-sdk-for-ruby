# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Kusto::Mgmt::V2018_09_07_privatepreview
  module Models
    #
    # Model object.
    #
    #
    class DatabasePrincipal

      include MsRestAzure

      # @return [DatabasePrincipalRole] Database principal role. Possible
      # values include: 'Admin', 'Ingestor', 'Monitor', 'User',
      # 'UnrestrictedViewers', 'Viewer'
      attr_accessor :role

      # @return [String] Database principal name.
      attr_accessor :name

      # @return [DatabasePrincipalType] Database principal type. Possible
      # values include: 'App', 'Group', 'User'
      attr_accessor :type

      # @return [String] Database principal fully qualified name.
      attr_accessor :fqn

      # @return [String] Database principal email if exists.
      attr_accessor :email

      # @return [String] Application id - relevant only for application
      # principal type.
      attr_accessor :app_id


      #
      # Mapper for DatabasePrincipal class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DatabasePrincipal',
          type: {
            name: 'Composite',
            class_name: 'DatabasePrincipal',
            model_properties: {
              role: {
                client_side_validation: true,
                required: true,
                serialized_name: 'role',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              fqn: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fqn',
                type: {
                  name: 'String'
                }
              },
              email: {
                client_side_validation: true,
                required: false,
                serialized_name: 'email',
                type: {
                  name: 'String'
                }
              },
              app_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'appId',
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
