# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # An Azure SQL Database server.
    #
    class Server < TrackedResource

      include MsRestAzure

      # @return [ResourceIdentity] The Azure Active Directory identity of the
      # server.
      attr_accessor :identity

      # @return [Enum] Kind of sql server. This is metadata used for the Azure
      # portal experience. Possible values include: '', 'v2.0', 'v12.0',
      # 'user', 'system', 'datawarehouse'
      attr_accessor :kind

      # @return [String] Administrator username for the server. Once created it
      # cannot be changed.
      attr_accessor :administrator_login

      # @return [String] The administrator login password (required for server
      # creation).
      attr_accessor :administrator_login_password

      # @return [String] The version of the server.
      attr_accessor :version

      # @return [String] The state of the server.
      attr_accessor :state

      # @return [String] The fully qualified domain name of the server.
      attr_accessor :fully_qualified_domain_name


      #
      # Mapper for Server class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Server',
          type: {
            name: 'Composite',
            class_name: 'Server',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              identity: {
                required: false,
                serialized_name: 'identity',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceIdentity'
                }
              },
              kind: {
                required: false,
                read_only: true,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              administrator_login: {
                required: false,
                serialized_name: 'properties.administratorLogin',
                type: {
                  name: 'String'
                }
              },
              administrator_login_password: {
                required: false,
                serialized_name: 'properties.administratorLoginPassword',
                type: {
                  name: 'String'
                }
              },
              version: {
                required: false,
                serialized_name: 'properties.version',
                type: {
                  name: 'String'
                }
              },
              state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.state',
                type: {
                  name: 'String'
                }
              },
              fully_qualified_domain_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.fullyQualifiedDomainName',
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
