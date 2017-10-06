# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MobileEngagement
  module Models
    #
    # Used to target devices who received a data push.
    #
    class DatapushFeedbackCriterion < Criterion

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @type = "datapush-feedback"
      end

      attr_accessor :type

      # @return [Integer] The unique identifier of the data push.
      attr_accessor :content_id

      # @return [CampaignFeedbacks] Action that was performed on the data push
      # (action depends on the return value in the callbacks you declared in
      # the client code).
      # . Possible values include: 'pushed', 'replied', 'actioned', 'exited'
      attr_accessor :action


      #
      # Mapper for DatapushFeedbackCriterion class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'datapush-feedback',
          type: {
            name: 'Composite',
            class_name: 'DatapushFeedbackCriterion',
            model_properties: {
              type: {
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              content_id: {
                required: false,
                serialized_name: 'content-id',
                type: {
                  name: 'Number'
                }
              },
              action: {
                required: false,
                serialized_name: 'action',
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
