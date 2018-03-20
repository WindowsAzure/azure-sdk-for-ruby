# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2016_10_10
  #
  # ApiManagement Client
  #
  class Products
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Products class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ApiManagementClient] reference to the ApiManagementClient
    attr_reader :client

    #
    # Lists a collection of products in the specified service instance.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param filter [String] | Field       | Supported operators    | Supported
    # functions                         |
    # |-------------|------------------------|---------------------------------------------|
    # | id          | ge, le, eq, ne, gt, lt | substringof, contains, startswith,
    # endswith |
    # | name        | ge, le, eq, ne, gt, lt | substringof, contains, startswith,
    # endswith |
    # | description | ge, le, eq, ne, gt, lt | substringof, contains, startswith,
    # endswith |
    # | terms       | ge, le, eq, ne, gt, lt | substringof, contains, startswith,
    # endswith |
    # | state       | eq                     |
    # |
    # @param top [Integer] Number of records to return.
    # @param skip [Integer] Number of records to skip.
    # @param expand_groups [Boolean] When set to true, the response contains an
    # array of groups that have visibility to the product. The default is false.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<ProductContract>] operation results.
    #
    def list_by_service(resource_group_name, service_name, filter:nil, top:nil, skip:nil, expand_groups:nil, custom_headers:nil)
      first_page = list_by_service_as_lazy(resource_group_name, service_name, filter:filter, top:top, skip:skip, expand_groups:expand_groups, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Lists a collection of products in the specified service instance.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param filter [String] | Field       | Supported operators    | Supported
    # functions                         |
    # |-------------|------------------------|---------------------------------------------|
    # | id          | ge, le, eq, ne, gt, lt | substringof, contains, startswith,
    # endswith |
    # | name        | ge, le, eq, ne, gt, lt | substringof, contains, startswith,
    # endswith |
    # | description | ge, le, eq, ne, gt, lt | substringof, contains, startswith,
    # endswith |
    # | terms       | ge, le, eq, ne, gt, lt | substringof, contains, startswith,
    # endswith |
    # | state       | eq                     |
    # |
    # @param top [Integer] Number of records to return.
    # @param skip [Integer] Number of records to skip.
    # @param expand_groups [Boolean] When set to true, the response contains an
    # array of groups that have visibility to the product. The default is false.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_service_with_http_info(resource_group_name, service_name, filter:nil, top:nil, skip:nil, expand_groups:nil, custom_headers:nil)
      list_by_service_async(resource_group_name, service_name, filter:filter, top:top, skip:skip, expand_groups:expand_groups, custom_headers:custom_headers).value!
    end

    #
    # Lists a collection of products in the specified service instance.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param filter [String] | Field       | Supported operators    | Supported
    # functions                         |
    # |-------------|------------------------|---------------------------------------------|
    # | id          | ge, le, eq, ne, gt, lt | substringof, contains, startswith,
    # endswith |
    # | name        | ge, le, eq, ne, gt, lt | substringof, contains, startswith,
    # endswith |
    # | description | ge, le, eq, ne, gt, lt | substringof, contains, startswith,
    # endswith |
    # | terms       | ge, le, eq, ne, gt, lt | substringof, contains, startswith,
    # endswith |
    # | state       | eq                     |
    # |
    # @param top [Integer] Number of records to return.
    # @param skip [Integer] Number of records to skip.
    # @param expand_groups [Boolean] When set to true, the response contains an
    # array of groups that have visibility to the product. The default is false.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_service_async(resource_group_name, service_name, filter:nil, top:nil, skip:nil, expand_groups:nil, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MaxLength': '50'" if !service_name.nil? && service_name.length > 50
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MinLength': '1'" if !service_name.nil? && service_name.length < 1
      fail ArgumentError, "'service_name' should satisfy the constraint - 'Pattern': '^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$'" if !service_name.nil? && service_name.match(Regexp.new('^^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$$')).nil?
      fail ArgumentError, "'top' should satisfy the constraint - 'InclusiveMinimum': '1'" if !top.nil? && top < 1
      fail ArgumentError, "'skip' should satisfy the constraint - 'InclusiveMinimum': '0'" if !skip.nil? && skip < 0
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/products'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'serviceName' => service_name,'subscriptionId' => @client.subscription_id},
          query_params: {'$filter' => filter,'$top' => top,'$skip' => skip,'expandGroups' => expand_groups,'api-version' => @client.api_version},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ApiManagement::Mgmt::V2016_10_10::Models::ProductCollection.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets the details of the product specified by its identifier.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param product_id [String] Product identifier. Must be unique in the current
    # API Management service instance.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ProductContract] operation results.
    #
    def get(resource_group_name, service_name, product_id, custom_headers:nil)
      response = get_async(resource_group_name, service_name, product_id, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the details of the product specified by its identifier.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param product_id [String] Product identifier. Must be unique in the current
    # API Management service instance.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, service_name, product_id, custom_headers:nil)
      get_async(resource_group_name, service_name, product_id, custom_headers:custom_headers).value!
    end

    #
    # Gets the details of the product specified by its identifier.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param product_id [String] Product identifier. Must be unique in the current
    # API Management service instance.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, service_name, product_id, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MaxLength': '50'" if !service_name.nil? && service_name.length > 50
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MinLength': '1'" if !service_name.nil? && service_name.length < 1
      fail ArgumentError, "'service_name' should satisfy the constraint - 'Pattern': '^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$'" if !service_name.nil? && service_name.match(Regexp.new('^^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$$')).nil?
      fail ArgumentError, 'product_id is nil' if product_id.nil?
      fail ArgumentError, "'product_id' should satisfy the constraint - 'MaxLength': '256'" if !product_id.nil? && product_id.length > 256
      fail ArgumentError, "'product_id' should satisfy the constraint - 'MinLength': '1'" if !product_id.nil? && product_id.length < 1
      fail ArgumentError, "'product_id' should satisfy the constraint - 'Pattern': '^[^*#&+:<>?]+$'" if !product_id.nil? && product_id.match(Regexp.new('^^[^*#&+:<>?]+$$')).nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/products/{productId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'serviceName' => service_name,'productId' => product_id,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ApiManagement::Mgmt::V2016_10_10::Models::ProductContract.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Creates or Updates a product.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param product_id [String] Product identifier. Must be unique in the current
    # API Management service instance.
    # @param parameters [ProductContract] Create or update parameters.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def create_or_update(resource_group_name, service_name, product_id, parameters, custom_headers:nil)
      response = create_or_update_async(resource_group_name, service_name, product_id, parameters, custom_headers:custom_headers).value!
      nil
    end

    #
    # Creates or Updates a product.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param product_id [String] Product identifier. Must be unique in the current
    # API Management service instance.
    # @param parameters [ProductContract] Create or update parameters.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(resource_group_name, service_name, product_id, parameters, custom_headers:nil)
      create_or_update_async(resource_group_name, service_name, product_id, parameters, custom_headers:custom_headers).value!
    end

    #
    # Creates or Updates a product.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param product_id [String] Product identifier. Must be unique in the current
    # API Management service instance.
    # @param parameters [ProductContract] Create or update parameters.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(resource_group_name, service_name, product_id, parameters, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MaxLength': '50'" if !service_name.nil? && service_name.length > 50
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MinLength': '1'" if !service_name.nil? && service_name.length < 1
      fail ArgumentError, "'service_name' should satisfy the constraint - 'Pattern': '^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$'" if !service_name.nil? && service_name.match(Regexp.new('^^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$$')).nil?
      fail ArgumentError, 'product_id is nil' if product_id.nil?
      fail ArgumentError, "'product_id' should satisfy the constraint - 'MaxLength': '256'" if !product_id.nil? && product_id.length > 256
      fail ArgumentError, "'product_id' should satisfy the constraint - 'MinLength': '1'" if !product_id.nil? && product_id.length < 1
      fail ArgumentError, "'product_id' should satisfy the constraint - 'Pattern': '^[^*#&+:<>?]+$'" if !product_id.nil? && product_id.match(Regexp.new('^^[^*#&+:<>?]+$$')).nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::ApiManagement::Mgmt::V2016_10_10::Models::ProductContract.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/products/{productId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'serviceName' => service_name,'productId' => product_id,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 201 || status_code == 204
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Update product.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param product_id [String] Product identifier. Must be unique in the current
    # API Management service instance.
    # @param parameters [ProductUpdateParameters] Update parameters.
    # @param if_match [String] ETag of the Product Entity. ETag should match the
    # current entity state from the header response of the GET request or it should
    # be * for unconditional update.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def update(resource_group_name, service_name, product_id, parameters, if_match, custom_headers:nil)
      response = update_async(resource_group_name, service_name, product_id, parameters, if_match, custom_headers:custom_headers).value!
      nil
    end

    #
    # Update product.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param product_id [String] Product identifier. Must be unique in the current
    # API Management service instance.
    # @param parameters [ProductUpdateParameters] Update parameters.
    # @param if_match [String] ETag of the Product Entity. ETag should match the
    # current entity state from the header response of the GET request or it should
    # be * for unconditional update.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def update_with_http_info(resource_group_name, service_name, product_id, parameters, if_match, custom_headers:nil)
      update_async(resource_group_name, service_name, product_id, parameters, if_match, custom_headers:custom_headers).value!
    end

    #
    # Update product.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param product_id [String] Product identifier. Must be unique in the current
    # API Management service instance.
    # @param parameters [ProductUpdateParameters] Update parameters.
    # @param if_match [String] ETag of the Product Entity. ETag should match the
    # current entity state from the header response of the GET request or it should
    # be * for unconditional update.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def update_async(resource_group_name, service_name, product_id, parameters, if_match, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MaxLength': '50'" if !service_name.nil? && service_name.length > 50
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MinLength': '1'" if !service_name.nil? && service_name.length < 1
      fail ArgumentError, "'service_name' should satisfy the constraint - 'Pattern': '^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$'" if !service_name.nil? && service_name.match(Regexp.new('^^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$$')).nil?
      fail ArgumentError, 'product_id is nil' if product_id.nil?
      fail ArgumentError, "'product_id' should satisfy the constraint - 'MaxLength': '256'" if !product_id.nil? && product_id.length > 256
      fail ArgumentError, "'product_id' should satisfy the constraint - 'MinLength': '1'" if !product_id.nil? && product_id.length < 1
      fail ArgumentError, "'product_id' should satisfy the constraint - 'Pattern': '^[^*#&+:<>?]+$'" if !product_id.nil? && product_id.match(Regexp.new('^^[^*#&+:<>?]+$$')).nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      fail ArgumentError, 'if_match is nil' if if_match.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['If-Match'] = if_match unless if_match.nil?
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::ApiManagement::Mgmt::V2016_10_10::Models::ProductUpdateParameters.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/products/{productId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'serviceName' => service_name,'productId' => product_id,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:patch, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 204
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Delete product.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param product_id [String] Product identifier. Must be unique in the current
    # API Management service instance.
    # @param if_match [String] ETag of the Product Entity. ETag should match the
    # current entity state from the header response of the GET request or it should
    # be * for unconditional update.
    # @param delete_subscriptions [Boolean] Delete existing subscriptions to the
    # product or not.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(resource_group_name, service_name, product_id, if_match, delete_subscriptions:nil, custom_headers:nil)
      response = delete_async(resource_group_name, service_name, product_id, if_match, delete_subscriptions:delete_subscriptions, custom_headers:custom_headers).value!
      nil
    end

    #
    # Delete product.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param product_id [String] Product identifier. Must be unique in the current
    # API Management service instance.
    # @param if_match [String] ETag of the Product Entity. ETag should match the
    # current entity state from the header response of the GET request or it should
    # be * for unconditional update.
    # @param delete_subscriptions [Boolean] Delete existing subscriptions to the
    # product or not.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, service_name, product_id, if_match, delete_subscriptions:nil, custom_headers:nil)
      delete_async(resource_group_name, service_name, product_id, if_match, delete_subscriptions:delete_subscriptions, custom_headers:custom_headers).value!
    end

    #
    # Delete product.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param product_id [String] Product identifier. Must be unique in the current
    # API Management service instance.
    # @param if_match [String] ETag of the Product Entity. ETag should match the
    # current entity state from the header response of the GET request or it should
    # be * for unconditional update.
    # @param delete_subscriptions [Boolean] Delete existing subscriptions to the
    # product or not.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, service_name, product_id, if_match, delete_subscriptions:nil, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MaxLength': '50'" if !service_name.nil? && service_name.length > 50
      fail ArgumentError, "'service_name' should satisfy the constraint - 'MinLength': '1'" if !service_name.nil? && service_name.length < 1
      fail ArgumentError, "'service_name' should satisfy the constraint - 'Pattern': '^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$'" if !service_name.nil? && service_name.match(Regexp.new('^^[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$$')).nil?
      fail ArgumentError, 'product_id is nil' if product_id.nil?
      fail ArgumentError, "'product_id' should satisfy the constraint - 'MaxLength': '256'" if !product_id.nil? && product_id.length > 256
      fail ArgumentError, "'product_id' should satisfy the constraint - 'MinLength': '1'" if !product_id.nil? && product_id.length < 1
      fail ArgumentError, "'product_id' should satisfy the constraint - 'Pattern': '^[^*#&+:<>?]+$'" if !product_id.nil? && product_id.match(Regexp.new('^^[^*#&+:<>?]+$$')).nil?
      fail ArgumentError, 'if_match is nil' if if_match.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['If-Match'] = if_match unless if_match.nil?
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/products/{productId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'serviceName' => service_name,'productId' => product_id,'subscriptionId' => @client.subscription_id},
          query_params: {'deleteSubscriptions' => delete_subscriptions,'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 204
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Lists a collection of products in the specified service instance.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ProductCollection] operation results.
    #
    def list_by_service_next(next_page_link, custom_headers:nil)
      response = list_by_service_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists a collection of products in the specified service instance.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_service_next_with_http_info(next_page_link, custom_headers:nil)
      list_by_service_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # Lists a collection of products in the specified service instance.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_service_next_async(next_page_link, custom_headers:nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ApiManagement::Mgmt::V2016_10_10::Models::ProductCollection.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Lists a collection of products in the specified service instance.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param service_name [String] The name of the API Management service.
    # @param filter [String] | Field       | Supported operators    | Supported
    # functions                         |
    # |-------------|------------------------|---------------------------------------------|
    # | id          | ge, le, eq, ne, gt, lt | substringof, contains, startswith,
    # endswith |
    # | name        | ge, le, eq, ne, gt, lt | substringof, contains, startswith,
    # endswith |
    # | description | ge, le, eq, ne, gt, lt | substringof, contains, startswith,
    # endswith |
    # | terms       | ge, le, eq, ne, gt, lt | substringof, contains, startswith,
    # endswith |
    # | state       | eq                     |
    # |
    # @param top [Integer] Number of records to return.
    # @param skip [Integer] Number of records to skip.
    # @param expand_groups [Boolean] When set to true, the response contains an
    # array of groups that have visibility to the product. The default is false.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ProductCollection] which provide lazy access to pages of the
    # response.
    #
    def list_by_service_as_lazy(resource_group_name, service_name, filter:nil, top:nil, skip:nil, expand_groups:nil, custom_headers:nil)
      response = list_by_service_async(resource_group_name, service_name, filter:filter, top:top, skip:skip, expand_groups:expand_groups, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_by_service_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

  end
end
