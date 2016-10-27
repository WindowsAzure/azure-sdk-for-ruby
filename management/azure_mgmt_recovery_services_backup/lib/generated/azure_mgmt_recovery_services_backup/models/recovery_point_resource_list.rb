# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup
  module Models
    #
    # List of RecoveryPoint resources
    #
    class RecoveryPointResourceList < ResourceList

      include MsRestAzure

      # @return [Array<RecoveryPointResource>] List of resources.
      attr_accessor :value

      # return [Proc] with next page method call.
      attr_accessor :next_method

      #
      # Gets the rest of the items for the request, enabling auto-pagination.
      #
      # @return [Array<RecoveryPointResource>] operation results.
      #
      def get_all_items
        items = @value
        page = self
        while page.null != nil do
          page = page.get_next_page
          items.concat(page.value)
        end
        items
      end

      #
      # Gets the next page of results.
      #
      # @return [RecoveryPointResourceList] with next page content.
      #
      def get_next_page
        response = @next_method.call(@null).value! unless @next_method.nil?
        unless response.nil?
          @null = response.body.null
          @value = response.body.value
          self
        end
      end

      #
      # Mapper for RecoveryPointResourceList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RecoveryPointResourceList',
          type: {
            name: 'Composite',
            class_name: 'RecoveryPointResourceList',
            model_properties: {
              next_link: {
                required: false,
                serialized_name: 'nextLink',
                type: {
                  name: 'String'
                }
              },
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'RecoveryPointResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RecoveryPointResource'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
