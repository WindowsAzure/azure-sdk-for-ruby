# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 2.2.27.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2017_07_01
  module Models
    #
    # Base class for restore request. Workload-specific restore requests are
    # derived from this class.
    #
    class RestoreRequest

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["AzureFileShareRestoreRequest"] = "AzureFileShareRestoreRequest"
      @@discriminatorMap["AzureWorkloadRestoreRequest"] = "AzureWorkloadRestoreRequest"
      @@discriminatorMap["AzureWorkloadSAPHanaPointInTimeRestoreRequest"] = "AzureWorkloadSAPHanaPointInTimeRestoreRequest"
      @@discriminatorMap["AzureWorkloadSAPHanaRestoreRequest"] = "AzureWorkloadSAPHanaRestoreRequest"
      @@discriminatorMap["AzureWorkloadSQLPointInTimeRestoreRequest"] = "AzureWorkloadSQLPointInTimeRestoreRequest"
      @@discriminatorMap["AzureWorkloadSQLRestoreRequest"] = "AzureWorkloadSQLRestoreRequest"
      @@discriminatorMap["IaasVMRestoreRequest"] = "IaasVMRestoreRequest"

      def initialize
        @objectType = "RestoreRequest"
      end

      attr_accessor :objectType


      #
      # Mapper for RestoreRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RestoreRequest',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'objectType',
            uber_parent: 'RestoreRequest',
            class_name: 'RestoreRequest',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
