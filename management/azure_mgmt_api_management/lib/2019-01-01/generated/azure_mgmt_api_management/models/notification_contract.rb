# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2019_01_01
  module Models
    #
    # Notification details.
    #
    class NotificationContract < Resource

      include MsRestAzure

      # @return [String] Title of the Notification.
      attr_accessor :title

      # @return [String] Description of the Notification.
      attr_accessor :description

      # @return [RecipientsContractProperties] Recipient Parameter values.
      attr_accessor :recipients


      #
      # Mapper for NotificationContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NotificationContract',
          type: {
            name: 'Composite',
            class_name: 'NotificationContract',
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
                required: true,
                serialized_name: 'properties.title',
                constraints: {
                  MaxLength: 1000,
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
                type: {
                  name: 'String'
                }
              },
              recipients: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.recipients',
                type: {
                  name: 'Composite',
                  class_name: 'RecipientsContractProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
