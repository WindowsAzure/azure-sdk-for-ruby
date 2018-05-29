# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2016_07_07
  module Models
    #
    # Parameters supplied to the Update User operation.
    #
    class UserUpdateParameters

      include MsRestAzure

      # @return [String] Email address.
      attr_accessor :email

      # @return [String] Password.
      attr_accessor :password

      # @return [String] First name.
      attr_accessor :first_name

      # @return [String] Last name.
      attr_accessor :last_name

      # @return [UserStateContract] Account state. Possible values include:
      # 'Active', 'Blocked'
      attr_accessor :state

      # @return [String] Note about user.
      attr_accessor :note


      #
      # Mapper for UserUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'UserUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'UserUpdateParameters',
            model_properties: {
              email: {
                required: false,
                serialized_name: 'email',
                type: {
                  name: 'String'
                }
              },
              password: {
                required: false,
                serialized_name: 'password',
                type: {
                  name: 'String'
                }
              },
              first_name: {
                required: false,
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
                required: false,
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
                required: false,
                serialized_name: 'state',
                type: {
                  name: 'Enum',
                  module: 'UserStateContract'
                }
              },
              note: {
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
