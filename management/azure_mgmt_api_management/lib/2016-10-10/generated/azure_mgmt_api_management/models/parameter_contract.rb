# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2016_10_10
  module Models
    #
    # Operation parameters details.
    #
    class ParameterContract

      include MsRestAzure

      # @return [String] Parameter name.
      attr_accessor :name

      # @return [String] Parameter description.
      attr_accessor :description

      # @return [String] Parameter type.
      attr_accessor :type

      # @return [String] Default parameter value.
      attr_accessor :default_value

      # @return [Boolean] whether parameter is required or not.
      attr_accessor :required

      # @return [Array<String>] Parameter values.
      attr_accessor :values


      #
      # Mapper for ParameterContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ParameterContract',
          type: {
            name: 'Composite',
            class_name: 'ParameterContract',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
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
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              default_value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'defaultValue',
                type: {
                  name: 'String'
                }
              },
              required: {
                client_side_validation: true,
                required: false,
                serialized_name: 'required',
                type: {
                  name: 'Boolean'
                }
              },
              values: {
                client_side_validation: true,
                required: false,
                serialized_name: 'values',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
