# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2019_01_01
  module Models
    #
    # Issue update Parameters.
    #
    class IssueUpdateContract

      include MsRestAzure

      # @return [DateTime] Date and time when the issue was created.
      attr_accessor :created_date

      # @return [State] Status of the issue. Possible values include:
      # 'proposed', 'open', 'removed', 'resolved', 'closed'
      attr_accessor :state

      # @return [String] A resource identifier for the API the issue was
      # created for.
      attr_accessor :api_id

      # @return [String] The issue title.
      attr_accessor :title

      # @return [String] Text describing the issue.
      attr_accessor :description

      # @return [String] A resource identifier for the user created the issue.
      attr_accessor :user_id


      #
      # Mapper for IssueUpdateContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IssueUpdateContract',
          type: {
            name: 'Composite',
            class_name: 'IssueUpdateContract',
            model_properties: {
              created_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.createdDate',
                type: {
                  name: 'DateTime'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.state',
                type: {
                  name: 'String'
                }
              },
              api_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.apiId',
                type: {
                  name: 'String'
                }
              },
              title: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.title',
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
              user_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.userId',
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
