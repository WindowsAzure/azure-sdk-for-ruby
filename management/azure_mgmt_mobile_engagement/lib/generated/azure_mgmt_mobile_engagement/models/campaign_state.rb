# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MobileEngagement
  module Models
    #
    # Model object.
    #
    #
    class CampaignState

      include MsRestAzure

      include MsRest::JSONable
      # @return [CampaignStates] State of the campaign, or 'queued' when
      # testing a campaign. Possible values include: 'draft', 'scheduled',
      # 'in-progress', 'finished', 'queued'
      attr_accessor :state


      #
      # Mapper for CampaignState class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CampaignState',
          type: {
            name: 'Composite',
            class_name: 'CampaignState',
            model_properties: {
              state: {
                required: false,
                serialized_name: 'state',
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
