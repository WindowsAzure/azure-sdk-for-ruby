# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Data used for requesting a SAS.
    #
    class GrantAccessData

      include MsRestAzure

      # @return [AccessLevel] Possible values include: 'None', 'Read'
      attr_accessor :access

      # @return [Integer] Time duration in seconds until the SAS access
      # expires.
      attr_accessor :duration_in_seconds


      #
      # Mapper for GrantAccessData class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'GrantAccessData',
          type: {
            name: 'Composite',
            class_name: 'GrantAccessData',
            model_properties: {
              access: {
                required: true,
                serialized_name: 'access',
                type: {
                  name: 'Enum',
                  module: 'AccessLevel'
                }
              },
              duration_in_seconds: {
                required: true,
                serialized_name: 'durationInSeconds',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
