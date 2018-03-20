# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2016_07_07
  module Models
    #
    # Parameters supplied to the Create User operation.
    #
    class UserCreateParameters

      include MsRestAzure

      # @return [String] Email address. Must not be empty and must be unique
      # within the service instance.
      attr_accessor :email

      # @return [String] User Password.
      attr_accessor :password

      # @return [String] First name.
      attr_accessor :first_name

      # @return [String] Last name.
      attr_accessor :last_name

      # @return [UserStateContract] Account state. Specifies whether the user
      # is active or not. Blocked users are unable to sign into the developer
      # portal or call any APIs of subscribed products. Default state is
      # Active. Possible values include: 'Active', 'Blocked'. Default value:
      # 'Active' .
      attr_accessor :state

      # @return [String] Optional note about a user set by the administrator.
      attr_accessor :note


      #
      # Mapper for UserCreateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UserCreateParameters',
          type: {
            name: 'Composite',
            class_name: 'UserCreateParameters',
            model_properties: {
              email: {
                client_side_validation: true,
                required: true,
                serialized_name: 'email',
                constraints: {
                  MaxLength: 254,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              password: {
                client_side_validation: true,
                required: true,
                serialized_name: 'password',
                type: {
                  name: 'String'
                }
              },
              first_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'firstName',
                constraints: {
                  MaxLength: 100,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              last_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'lastName',
                constraints: {
                  MaxLength: 100,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'state',
                default_value: 'Active',
                type: {
                  name: 'Enum',
                  module: 'UserStateContract'
                }
              },
              note: {
                client_side_validation: true,
                required: false,
                serialized_name: 'note',
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
