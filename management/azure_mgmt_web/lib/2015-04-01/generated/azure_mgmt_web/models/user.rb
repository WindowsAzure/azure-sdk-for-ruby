# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2015_04_01
  module Models
    #
    # User crendentials used for publishing activity.
    #
    class User < ProxyOnlyResource

      include MsRestAzure

      # @return [String] Username
      attr_accessor :user_name

      # @return [String] Username used for publishing.
      attr_accessor :publishing_user_name

      # @return [String] Password used for publishing.
      attr_accessor :publishing_password

      # @return [String] Password hash used for publishing.
      attr_accessor :publishing_password_hash

      # @return [String] Password hash salt used for publishing.
      attr_accessor :publishing_password_hash_salt


      #
      # Mapper for User class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'User',
          type: {
            name: 'Composite',
            class_name: 'User',
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
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
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
              user_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.name',
                type: {
                  name: 'String'
                }
              },
              publishing_user_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.publishingUserName',
                type: {
                  name: 'String'
                }
              },
              publishing_password: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.publishingPassword',
                type: {
                  name: 'String'
                }
              },
              publishing_password_hash: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.publishingPasswordHash',
                type: {
                  name: 'String'
                }
              },
              publishing_password_hash_salt: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.publishingPasswordHashSalt',
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
