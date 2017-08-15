# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Legal agreement for a top level domain.
    #
    class TldLegalAgreement

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Unique identifier for the agreement.
      attr_accessor :agreement_key

      # @return [String] Agreement title.
      attr_accessor :title

      # @return [String] Agreement details.
      attr_accessor :content

      # @return [String] URL where a copy of the agreement details is hosted.
      attr_accessor :url


      #
      # Mapper for TldLegalAgreement class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'TldLegalAgreement',
          type: {
            name: 'Composite',
            class_name: 'TldLegalAgreement',
            model_properties: {
              agreement_key: {
                required: true,
                serialized_name: 'agreementKey',
                type: {
                  name: 'String'
                }
              },
              title: {
                required: true,
                serialized_name: 'title',
                type: {
                  name: 'String'
                }
              },
              content: {
                required: true,
                serialized_name: 'content',
                type: {
                  name: 'String'
                }
              },
              url: {
                required: false,
                serialized_name: 'url',
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
