# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_07_01
  module Models
    #
    # Base class for inputs to a Job.
    #
    class JobInput

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["#Microsoft.Media.JobInputClip"] = "JobInputClip"
      @@discriminatorMap["#Microsoft.Media.JobInputs"] = "JobInputs"
      @@discriminatorMap["#Microsoft.Media.JobInputAsset"] = "JobInputAsset"
      @@discriminatorMap["#Microsoft.Media.JobInputHttp"] = "JobInputHttp"

      def initialize
        @@odatatype = "JobInput"
      end

      attr_accessor :@odatatype


      #
      # Mapper for JobInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'JobInput',
          type: {
            name: 'Composite',
            polymorphic_discriminator: '@odata.type',
            uber_parent: 'JobInput',
            class_name: 'JobInput',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
