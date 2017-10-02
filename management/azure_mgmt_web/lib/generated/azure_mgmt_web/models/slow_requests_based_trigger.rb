# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Trigger based on request execution time.
    #
    class SlowRequestsBasedTrigger

      include MsRestAzure

      # @return [String] Time taken.
      attr_accessor :time_taken

      # @return [Integer] Count.
      attr_accessor :count

      # @return [String] Time interval.
      attr_accessor :time_interval


      #
      # Mapper for SlowRequestsBasedTrigger class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SlowRequestsBasedTrigger',
          type: {
            name: 'Composite',
            class_name: 'SlowRequestsBasedTrigger',
            model_properties: {
              time_taken: {
                required: false,
                serialized_name: 'timeTaken',
                type: {
                  name: 'String'
                }
              },
              count: {
                required: false,
                serialized_name: 'count',
                type: {
                  name: 'Number'
                }
              },
              time_interval: {
                required: false,
                serialized_name: 'timeInterval',
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
