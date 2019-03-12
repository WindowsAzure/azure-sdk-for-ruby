# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Signalr::Mgmt::V2018_10_01
  module Models
    #
    # Object that includes an array of SignalR services and a possible link for
    # next set.
    #
    class SignalRResourceList

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<SignalRResource>] List of SignalR services
      attr_accessor :value

      # @return [String] The URL the client should use to fetch the next page
      # (per server side paging).
      # It's null for now, added for future use.
      attr_accessor :next_link

      # return [Proc] with next page method call.
      attr_accessor :next_method

      #
      # Gets the rest of the items for the request, enabling auto-pagination.
      #
      # @return [Array<SignalRResource>] operation results.
      #
      def get_all_items
        items = @value
        page = self
        while page.next_link != nil do
          page = page.get_next_page
          items.concat(page.value)
        end
        items
      end

      #
      # Gets the next page of results.
      #
      # @return [SignalRResourceList] with next page content.
      #
      def get_next_page
        response = @next_method.call(@next_link).value! unless @next_method.nil?
        unless response.nil?
          @next_link = response.body.next_link
          @value = response.body.value
          self
        end
      end

      #
      # Mapper for SignalRResourceList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SignalRResourceList',
          type: {
            name: 'Composite',
            class_name: 'SignalRResourceList',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SignalRResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SignalRResource'
                      }
                  }
                }
              },
              next_link: {
                required: false,
                serialized_name: 'nextLink',
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
