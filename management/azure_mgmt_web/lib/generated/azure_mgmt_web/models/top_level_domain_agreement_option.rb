# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Options for retrieving the list of top level domain legal agreements.
    #
    class TopLevelDomainAgreementOption

      include MsRestAzure

      include MsRest::JSONable
      # @return [Boolean] If <code>true</code>, then the list of agreements
      # will include agreements for domain privacy as well; otherwise,
      # <code>false</code>.
      attr_accessor :include_privacy

      # @return [Boolean] If <code>true</code>, then the list of agreements
      # will include agreements for domain transfer as well; otherwise,
      # <code>false</code>.
      attr_accessor :for_transfer


      #
      # Mapper for TopLevelDomainAgreementOption class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'TopLevelDomainAgreementOption',
          type: {
            name: 'Composite',
            class_name: 'TopLevelDomainAgreementOption',
            model_properties: {
              include_privacy: {
                required: false,
                serialized_name: 'includePrivacy',
                type: {
                  name: 'Boolean'
                }
              },
              for_transfer: {
                required: false,
                serialized_name: 'forTransfer',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
