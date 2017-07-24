# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DataLakeAnalytics
  #
  # Creates an Azure Data Lake Analytics account management client.
  #
  class ComputePolicies

    #
    # Creates and initializes a new instance of the ComputePolicies class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [DataLakeAnalyticsAccountManagementClient] reference to the DataLakeAnalyticsAccountManagementClient
    attr_reader :client

    #
    # Creates or updates the specified compute policy. During update, the compute
    # policy with the specified name will be replaced with this new compute policy.
    # An account supports, at most, 50 policies
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account to
    # add or replace the compute policy.
    # @param compute_policy_name [String] The name of the compute policy to create
    # or update.
    # @param parameters [ComputePolicyCreateOrUpdateParameters] Parameters supplied
    # to create or update the compute policy. The max degree of parallelism per job
    # property, min priority per job property, or both must be present.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ComputePolicy] operation results.
    #
    def create_or_update(resource_group_name, account_name, compute_policy_name, parameters, custom_headers = nil)
      response = create_or_update_async(resource_group_name, account_name, compute_policy_name, parameters, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates or updates the specified compute policy. During update, the compute
    # policy with the specified name will be replaced with this new compute policy.
    # An account supports, at most, 50 policies
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account to
    # add or replace the compute policy.
    # @param compute_policy_name [String] The name of the compute policy to create
    # or update.
    # @param parameters [ComputePolicyCreateOrUpdateParameters] Parameters supplied
    # to create or update the compute policy. The max degree of parallelism per job
    # property, min priority per job property, or both must be present.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRest::HttpOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(resource_group_name, account_name, compute_policy_name, parameters, custom_headers = nil)
      create_or_update_async(resource_group_name, account_name, compute_policy_name, parameters, custom_headers).value!
    end

    #
    # Creates or updates the specified compute policy. During update, the compute
    # policy with the specified name will be replaced with this new compute policy.
    # An account supports, at most, 50 policies
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account to
    # add or replace the compute policy.
    # @param compute_policy_name [String] The name of the compute policy to create
    # or update.
    # @param parameters [ComputePolicyCreateOrUpdateParameters] Parameters supplied
    # to create or update the compute policy. The max degree of parallelism per job
    # property, min priority per job property, or both must be present.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(resource_group_name, account_name, compute_policy_name, parameters, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'account_name is nil' if account_name.nil?
      fail ArgumentError, 'compute_policy_name is nil' if compute_policy_name.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::ARM::DataLakeAnalytics::Models::ComputePolicyCreateOrUpdateParameters.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataLakeAnalytics/accounts/{accountName}/computePolicies/{computePolicyName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'accountName' => account_name,'computePolicyName' => compute_policy_name,'subscriptionId' => @client.subscription_id},
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
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::DataLakeAnalytics::Models::ComputePolicy.mapper()
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
    # Updates the specified compute policy.
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account to
    # which to update the compute policy.
    # @param compute_policy_name [String] The name of the compute policy to update.
    # @param parameters [ComputePolicy] Parameters supplied to update the compute
    # policy.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ComputePolicy] operation results.
    #
    def update(resource_group_name, account_name, compute_policy_name, parameters = nil, custom_headers = nil)
      response = update_async(resource_group_name, account_name, compute_policy_name, parameters, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Updates the specified compute policy.
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account to
    # which to update the compute policy.
    # @param compute_policy_name [String] The name of the compute policy to update.
    # @param parameters [ComputePolicy] Parameters supplied to update the compute
    # policy.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRest::HttpOperationResponse] HTTP response information.
    #
    def update_with_http_info(resource_group_name, account_name, compute_policy_name, parameters = nil, custom_headers = nil)
      update_async(resource_group_name, account_name, compute_policy_name, parameters, custom_headers).value!
    end

    #
    # Updates the specified compute policy.
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account to
    # which to update the compute policy.
    # @param compute_policy_name [String] The name of the compute policy to update.
    # @param parameters [ComputePolicy] Parameters supplied to update the compute
    # policy.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def update_async(resource_group_name, account_name, compute_policy_name, parameters = nil, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'account_name is nil' if account_name.nil?
      fail ArgumentError, 'compute_policy_name is nil' if compute_policy_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::ARM::DataLakeAnalytics::Models::ComputePolicy.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataLakeAnalytics/accounts/{accountName}/computePolicies/{computePolicyName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'accountName' => account_name,'computePolicyName' => compute_policy_name,'subscriptionId' => @client.subscription_id},
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
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::DataLakeAnalytics::Models::ComputePolicy.mapper()
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
    # Deletes the specified compute policy from the specified Data Lake Analytics
    # account
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account from
    # which to delete the compute policy.
    # @param compute_policy_name [String] The name of the compute policy to delete.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(resource_group_name, account_name, compute_policy_name, custom_headers = nil)
      response = delete_async(resource_group_name, account_name, compute_policy_name, custom_headers).value!
      nil
    end

    #
    # Deletes the specified compute policy from the specified Data Lake Analytics
    # account
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account from
    # which to delete the compute policy.
    # @param compute_policy_name [String] The name of the compute policy to delete.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRest::HttpOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, account_name, compute_policy_name, custom_headers = nil)
      delete_async(resource_group_name, account_name, compute_policy_name, custom_headers).value!
    end

    #
    # Deletes the specified compute policy from the specified Data Lake Analytics
    # account
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account from
    # which to delete the compute policy.
    # @param compute_policy_name [String] The name of the compute policy to delete.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, account_name, compute_policy_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'account_name is nil' if account_name.nil?
      fail ArgumentError, 'compute_policy_name is nil' if compute_policy_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataLakeAnalytics/accounts/{accountName}/computePolicies/{computePolicyName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'accountName' => account_name,'computePolicyName' => compute_policy_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 204
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end


        result
      end

      promise.execute
    end

    #
    # Gets the specified Data Lake Analytics compute policy.
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account from
    # which to get the compute policy.
    # @param compute_policy_name [String] The name of the compute policy to
    # retrieve.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ComputePolicy] operation results.
    #
    def get(resource_group_name, account_name, compute_policy_name, custom_headers = nil)
      response = get_async(resource_group_name, account_name, compute_policy_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the specified Data Lake Analytics compute policy.
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account from
    # which to get the compute policy.
    # @param compute_policy_name [String] The name of the compute policy to
    # retrieve.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRest::HttpOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, account_name, compute_policy_name, custom_headers = nil)
      get_async(resource_group_name, account_name, compute_policy_name, custom_headers).value!
    end

    #
    # Gets the specified Data Lake Analytics compute policy.
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account from
    # which to get the compute policy.
    # @param compute_policy_name [String] The name of the compute policy to
    # retrieve.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, account_name, compute_policy_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'account_name is nil' if account_name.nil?
      fail ArgumentError, 'compute_policy_name is nil' if compute_policy_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataLakeAnalytics/accounts/{accountName}/computePolicies/{computePolicyName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'accountName' => account_name,'computePolicyName' => compute_policy_name,'subscriptionId' => @client.subscription_id},
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

        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::DataLakeAnalytics::Models::ComputePolicy.mapper()
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
    # Lists the Data Lake Analytics compute policies within the specified Data Lake
    # Analytics account. An account supports, at most, 50 policies
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account from
    # which to get the compute policies.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ComputePolicyListResult] operation results.
    #
    def list_by_account(resource_group_name, account_name, custom_headers = nil)
      response = list_by_account_async(resource_group_name, account_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists the Data Lake Analytics compute policies within the specified Data Lake
    # Analytics account. An account supports, at most, 50 policies
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account from
    # which to get the compute policies.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRest::HttpOperationResponse] HTTP response information.
    #
    def list_by_account_with_http_info(resource_group_name, account_name, custom_headers = nil)
      list_by_account_async(resource_group_name, account_name, custom_headers).value!
    end

    #
    # Lists the Data Lake Analytics compute policies within the specified Data Lake
    # Analytics account. An account supports, at most, 50 policies
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account from
    # which to get the compute policies.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_account_async(resource_group_name, account_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'account_name is nil' if account_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataLakeAnalytics/accounts/{accountName}/computePolicies'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'accountName' => account_name,'subscriptionId' => @client.subscription_id},
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

        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::DataLakeAnalytics::Models::ComputePolicyListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end
