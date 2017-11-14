# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_12_01
  module Models
    #
    # Operation status job extended info.
    #
    class OperationStatusJobExtendedInfo < OperationStatusExtendedInfo

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @objectType = "OperationStatusJobExtendedInfo"
      end

      attr_accessor :objectType

      # @return [String] ID of the job created for this protected item.
      attr_accessor :job_id


      #
      # Mapper for OperationStatusJobExtendedInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OperationStatusJobExtendedInfo',
          type: {
            name: 'Composite',
            class_name: 'OperationStatusJobExtendedInfo',
            model_properties: {
              objectType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'objectType',
                type: {
                  name: 'String'
                }
              },
              job_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'jobId',
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
