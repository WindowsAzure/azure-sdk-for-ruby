# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2018_10_01
  module Models
    #
    # List of HubVirtualNetworkConnections and a URL nextLink to get the next
    # set of results.
    #
    class ListHubVirtualNetworkConnectionsResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<HubVirtualNetworkConnection>] List of
      # HubVirtualNetworkConnections.
      attr_accessor :value

      # @return [String] URL to get the next set of operation list results if
      # there are any.
      attr_accessor :next_link

      # return [Proc] with next page method call.
      attr_accessor :next_method

      #
      # Gets the rest of the items for the request, enabling auto-pagination.
      #
      # @return [Array<HubVirtualNetworkConnection>] operation results.
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
      # @return [ListHubVirtualNetworkConnectionsResult] with next page
      # content.
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
      # Mapper for ListHubVirtualNetworkConnectionsResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ListHubVirtualNetworkConnectionsResult',
          type: {
            name: 'Composite',
            class_name: 'ListHubVirtualNetworkConnectionsResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'HubVirtualNetworkConnectionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'HubVirtualNetworkConnection'
                      }
                  }
                }
              },
              next_link: {
                client_side_validation: true,
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
