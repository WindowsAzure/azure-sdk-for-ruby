# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StreamAnalytics
  module Models
    #
    # A function object, containing all information associated with the named
    # function. All functions are contained under a streaming job.
    #
    class Function < MsRestAzure::SubResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [FunctionProperties] The properties that are associated with a
      # function.
      attr_accessor :properties


      #
      # Mapper for Function class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Function',
          type: {
            name: 'Composite',
            class_name: 'Function',
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
              properties: {
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'type',
                  uber_parent: 'FunctionProperties',
                  class_name: 'FunctionProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
