# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2018_02_01
  module Models
    #
    # Performance monitor sample in a set.
    #
    class PerfMonSample

      include MsRestAzure

      # @return [DateTime] Point in time for which counter was measured.
      attr_accessor :time

      # @return [String] Name of the server on which the measurement is made.
      attr_accessor :instance_name

      # @return [Float] Value of counter at a certain time.
      attr_accessor :value


      #
      # Mapper for PerfMonSample class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PerfMonSample',
          type: {
            name: 'Composite',
            class_name: 'PerfMonSample',
            model_properties: {
              time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'time',
                type: {
                  name: 'DateTime'
                }
              },
              instance_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'instanceName',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
