# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ResourceHealth::Mgmt::V2018_07_01
  module Models
    #
    # Frequently asked question for the service health event
    #
    class Faq

      include MsRestAzure

      # @return [String] FAQ question for the service health event.
      attr_accessor :question

      # @return [String] FAQ answer for the service health event.
      attr_accessor :answer

      # @return [String] FAQ locale for the service health event.
      attr_accessor :locale_code


      #
      # Mapper for Faq class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'faq',
          type: {
            name: 'Composite',
            class_name: 'Faq',
            model_properties: {
              question: {
                client_side_validation: true,
                required: false,
                serialized_name: 'question',
                type: {
                  name: 'String'
                }
              },
              answer: {
                client_side_validation: true,
                required: false,
                serialized_name: 'answer',
                type: {
                  name: 'String'
                }
              },
              locale_code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'localeCode',
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
