# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::LuisAuthoring::V2_0
  module Models
    #
    # Response containing the Application Info.
    #
    class ApplicationInfoResponse

      include MsRestAzure

      # @return The ID (GUID) of the application.
      attr_accessor :id

      # @return [String] The name of the application.
      attr_accessor :name

      # @return [String] The description of the application.
      attr_accessor :description

      # @return [String] The culture of the application. For example, "en-us".
      attr_accessor :culture

      # @return [String] Defines the scenario for the new application.
      # Optional. For example, IoT.
      attr_accessor :usage_scenario

      # @return [String] The domain for the new application. Optional. For
      # example, Comics.
      attr_accessor :domain

      # @return [Integer] Amount of model versions within the application.
      attr_accessor :versions_count

      # @return [String] The version's creation timestamp.
      attr_accessor :created_date_time

      # @return The Runtime endpoint URL for this model version.
      attr_accessor :endpoints

      # @return [Integer] Number of calls made to this endpoint.
      attr_accessor :endpoint_hits_count

      # @return [String] The version ID currently marked as active.
      attr_accessor :active_version


      #
      # Mapper for ApplicationInfoResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationInfoResponse',
          type: {
            name: 'Composite',
            class_name: 'ApplicationInfoResponse',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              culture: {
                client_side_validation: true,
                required: false,
                serialized_name: 'culture',
                type: {
                  name: 'String'
                }
              },
              usage_scenario: {
                client_side_validation: true,
                required: false,
                serialized_name: 'usageScenario',
                type: {
                  name: 'String'
                }
              },
              domain: {
                client_side_validation: true,
                required: false,
                serialized_name: 'domain',
                type: {
                  name: 'String'
                }
              },
              versions_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'versionsCount',
                type: {
                  name: 'Number'
                }
              },
              created_date_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'createdDateTime',
                type: {
                  name: 'String'
                }
              },
              endpoints: {
                client_side_validation: true,
                required: false,
                serialized_name: 'endpoints',
                type: {
                  name: 'Object'
                }
              },
              endpoint_hits_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'endpointHitsCount',
                type: {
                  name: 'Number'
                }
              },
              active_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'activeVersion',
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
