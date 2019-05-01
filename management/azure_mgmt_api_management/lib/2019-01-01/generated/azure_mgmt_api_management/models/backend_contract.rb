# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2019_01_01
  module Models
    #
    # Backend details.
    #
    class BackendContract < Resource

      include MsRestAzure

      # @return [String] Backend Title.
      attr_accessor :title

      # @return [String] Backend Description.
      attr_accessor :description

      # @return [String] Management Uri of the Resource in External System.
      # This url can be the Arm Resource Id of Logic Apps, Function Apps or Api
      # Apps.
      attr_accessor :resource_id

      # @return [BackendProperties] Backend Properties contract
      attr_accessor :properties

      # @return [BackendCredentialsContract] Backend Credentials Contract
      # Properties
      attr_accessor :credentials

      # @return [BackendProxyContract] Backend Proxy Contract Properties
      attr_accessor :proxy

      # @return [BackendTlsProperties] Backend TLS Properties
      attr_accessor :tls

      # @return [String] Runtime Url of the Backend.
      attr_accessor :url

      # @return [BackendProtocol] Backend communication protocol. Possible
      # values include: 'http', 'soap'
      attr_accessor :protocol


      #
      # Mapper for BackendContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BackendContract',
          type: {
            name: 'Composite',
            class_name: 'BackendContract',
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
              title: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.title',
                constraints: {
                  MaxLength: 300,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
                constraints: {
                  MaxLength: 2000,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.resourceId',
                constraints: {
                  MaxLength: 2000,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.properties',
                type: {
                  name: 'Composite',
                  class_name: 'BackendProperties'
                }
              },
              credentials: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.credentials',
                type: {
                  name: 'Composite',
                  class_name: 'BackendCredentialsContract'
                }
              },
              proxy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.proxy',
                type: {
                  name: 'Composite',
                  class_name: 'BackendProxyContract'
                }
              },
              tls: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.tls',
                type: {
                  name: 'Composite',
                  class_name: 'BackendTlsProperties'
                }
              },
              url: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.url',
                constraints: {
                  MaxLength: 2000,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              protocol: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.protocol',
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
