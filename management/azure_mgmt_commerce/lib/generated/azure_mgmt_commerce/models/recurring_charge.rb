# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Commerce
  module Models
    #
    # Indicates a recurring charge is present for this offer.
    #
    class RecurringCharge < OfferTermInfo

      include MsRestAzure


      def initialize
        @Name = "Recurring Charge"
      end

      attr_accessor :Name

      # @return [Integer] The amount of recurring charge as per the offer term.
      attr_accessor :recurring_charge


      #
      # Mapper for RecurringCharge class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Recurring Charge',
          type: {
            name: 'Composite',
            class_name: 'RecurringCharge',
            model_properties: {
              effective_date: {
                required: false,
                serialized_name: 'EffectiveDate',
                type: {
                  name: 'DateTime'
                }
              },
              Name: {
                required: true,
                serialized_name: 'Name',
                type: {
                  name: 'String'
                }
              },
              recurring_charge: {
                required: false,
                serialized_name: 'RecurringCharge',
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
