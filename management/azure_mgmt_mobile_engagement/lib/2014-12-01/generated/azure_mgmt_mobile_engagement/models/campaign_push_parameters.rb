# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MobileEngagement::Mgmt::V2014_12_01
  module Models
    #
    # Model object.
    #
    #
    class CampaignPushParameters

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<String>] Device identifiers to push as a JSON array of
      # strings. Note that if you want to push the same campaign several times
      # to the same device, you need to make several API calls.
      #
      attr_accessor :device_ids

      # @return [Campaign] Alternative campaign's content to use instead of the
      # referenced campaign. All campaign's properties can be overridden except
      # for the following: `name`, `manualPush`, `audience`, `startTime` and
      # `timezone`. `endTime` can be overridden while keeping original
      # `timezone` parameter. The effect is to change the client side
      # expiration of the received campaign for the specific devices. If your
      # campaign is a *poll*, the provided data should contain the same number
      # of questions and choices that the one you created with the create
      # command. Please note that all the push messages created using this
      # parameter will expire after 4 weeks at maximum (`endTime` property of
      # the campaign will be used if lower than 4 weeks in the future).
      attr_accessor :data


      #
      # Mapper for CampaignPushParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CampaignPushParameters',
          type: {
            name: 'Composite',
            class_name: 'CampaignPushParameters',
            model_properties: {
              device_ids: {
                client_side_validation: true,
                required: true,
                serialized_name: 'deviceIds',
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
              },
              data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'data',
                type: {
                  name: 'Composite',
                  class_name: 'Campaign'
                }
              }
            }
          }
        }
      end
    end
  end
end
