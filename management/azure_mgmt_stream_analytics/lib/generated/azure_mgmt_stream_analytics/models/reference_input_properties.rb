# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StreamAnalytics
  module Models
    #
    # The properties that are associated with an input containing reference
    # data.
    #
    class ReferenceInputProperties < InputProperties

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @type = "Reference"
      end

      attr_accessor :type

      # @return [ReferenceInputDataSource] Describes an input data source that
      # contains reference data. Required on PUT (CreateOrReplace) requests.
      attr_accessor :datasource


      #
      # Mapper for ReferenceInputProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Reference',
          type: {
            name: 'Composite',
            class_name: 'ReferenceInputProperties',
            model_properties: {
              serialization: {
                required: false,
                serialized_name: 'serialization',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'type',
                  uber_parent: 'Serialization',
                  class_name: 'Serialization'
                }
              },
              diagnostics: {
                required: false,
                read_only: true,
                serialized_name: 'diagnostics',
                type: {
                  name: 'Composite',
                  class_name: 'Diagnostics'
                }
              },
              etag: {
                required: false,
                read_only: true,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              datasource: {
                required: false,
                serialized_name: 'datasource',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'type',
                  uber_parent: 'ReferenceInputDataSource',
                  class_name: 'ReferenceInputDataSource'
                }
              }
            }
          }
        }
      end
    end
  end
end
