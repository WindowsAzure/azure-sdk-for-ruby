# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs
  #
  # Azure DevTest Labs REST API.
  #
  class GalleryImageOperations
    include Azure::ARM::DevTestLabs::Models
    include MsRestAzure

    #
    # Creates and initializes a new instance of the GalleryImageOperations class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [DevTestLabsClient] reference to the DevTestLabsClient
    attr_reader :client

    #
    # List gallery images in a given lab.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_name [String] The name of the lab.
    # @param filter [String] The filter to apply on the operation.
    # @param top [Integer] The maximum number of resources to return from the
    # operation.
    # @param order_by [String] The ordering expression for the results, using OData
    # notation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<GalleryImage>] operation results.
    #
    def list(resource_group_name, lab_name, filter = nil, top = nil, order_by = nil, custom_headers = nil)
      first_page = list_as_lazy(resource_group_name, lab_name, filter, top, order_by, custom_headers)
      first_page.get_all_items
    end

    #
    # List gallery images in a given lab.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_name [String] The name of the lab.
    # @param filter [String] The filter to apply on the operation.
    # @param top [Integer] The maximum number of resources to return from the
    # operation.
    # @param order_by [String] The ordering expression for the results, using OData
    # notation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(resource_group_name, lab_name, filter = nil, top = nil, order_by = nil, custom_headers = nil)
      list_async(resource_group_name, lab_name, filter, top, order_by, custom_headers).value!
    end

    #
    # List gallery images in a given lab.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_name [String] The name of the lab.
    # @param filter [String] The filter to apply on the operation.
    # @param top [Integer] The maximum number of resources to return from the
    # operation.
    # @param order_by [String] The ordering expression for the results, using OData
    # notation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(resource_group_name, lab_name, filter = nil, top = nil, order_by = nil, custom_headers = nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'lab_name is nil' if lab_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevTestLab/labs/{labName}/galleryimages'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'labName' => lab_name},
          query_params: {'$filter' => filter,'$top' => top,'$orderBy' => order_by,'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = ResponseWithContinuationGalleryImage.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # List gallery images in a given lab.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ResponseWithContinuationGalleryImage] operation results.
    #
    def list_next(next_page_link, custom_headers = nil)
      response = list_next_async(next_page_link, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # List gallery images in a given lab.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_next_with_http_info(next_page_link, custom_headers = nil)
      list_next_async(next_page_link, custom_headers).value!
    end

    #
    # List gallery images in a given lab.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_next_async(next_page_link, custom_headers = nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{nextLink}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'nextLink' => next_page_link},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = ResponseWithContinuationGalleryImage.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # List gallery images in a given lab.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_name [String] The name of the lab.
    # @param filter [String] The filter to apply on the operation.
    # @param top [Integer] The maximum number of resources to return from the
    # operation.
    # @param order_by [String] The ordering expression for the results, using OData
    # notation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ResponseWithContinuationGalleryImage] which provide lazy access to
    # pages of the response.
    #
    def list_as_lazy(resource_group_name, lab_name, filter = nil, top = nil, order_by = nil, custom_headers = nil)
      response = list_async(resource_group_name, lab_name, filter, top, order_by, custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_next_async(next_page_link, custom_headers)
        end
        page
      end
    end

  end
end
