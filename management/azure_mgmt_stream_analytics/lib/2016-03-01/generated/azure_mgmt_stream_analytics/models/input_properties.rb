# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StreamAnalytics::Mgmt::V2016_03_01
  module Models
    #
    # The properties that are associated with an input.
    #
    class InputProperties

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["Reference"] = "ReferenceInputProperties"
      @@discriminatorMap["Stream"] = "StreamInputProperties"

      def initialize
        @type = "InputProperties"
      end

      attr_accessor :type

      # @return [Serialization] Describes how data from an input is serialized
      # or how data is serialized when written to an output. Required on PUT
      # (CreateOrReplace) requests.
      attr_accessor :serialization

      # @return [Diagnostics] Describes conditions applicable to the Input,
      # Output, or the job overall, that warrant customer attention.
      attr_accessor :diagnostics

      # @return [String] The current entity tag for the input. This is an
      # opaque string. You can use it to detect whether the resource has
      # changed between requests. You can also use it in the If-Match or
      # If-None-Match headers for write operations for optimistic concurrency.
      attr_accessor :etag


      #
      # Mapper for InputProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'InputProperties',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'type',
            uber_parent: 'InputProperties',
            class_name: 'InputProperties',
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
              }
            }
          }
        }
      end
    end
  end
end
