# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_03_01
  module Models
    #
    # A class that describes a test that failed during NSG and UDR validation.
    #
    class VnetValidationTestFailure < ProxyOnlyResource

      include MsRestAzure

      # @return [String] The name of the test that failed.
      attr_accessor :test_name

      # @return [String] The details of what caused the failure, e.g. the
      # blocking rule name, etc.
      attr_accessor :details


      #
      # Mapper for VnetValidationTestFailure class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VnetValidationTestFailure',
          type: {
            name: 'Composite',
            class_name: 'VnetValidationTestFailure',
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
              kind: {
                required: false,
                serialized_name: 'kind',
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
              test_name: {
                required: false,
                serialized_name: 'properties.testName',
                type: {
                  name: 'String'
                }
              },
              details: {
                required: false,
                serialized_name: 'properties.details',
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
