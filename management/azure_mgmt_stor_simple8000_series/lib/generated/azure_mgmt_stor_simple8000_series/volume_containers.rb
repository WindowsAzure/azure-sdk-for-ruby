# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StorSimple8000Series
  #
  # VolumeContainers
  #
  class VolumeContainers
    include MsRestAzure

    #
    # Creates and initializes a new instance of the VolumeContainers class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [StorSimple8000SeriesManagementClient] reference to the StorSimple8000SeriesManagementClient
    attr_reader :client

    #
    # Gets all the volume containers in a device.
    #
    # @param device_name [String] The device name
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [VolumeContainerList] operation results.
    #
    def list_by_device(device_name, resource_group_name, manager_name, custom_headers = nil)
      response = list_by_device_async(device_name, resource_group_name, manager_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets all the volume containers in a device.
    #
    # @param device_name [String] The device name
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_device_with_http_info(device_name, resource_group_name, manager_name, custom_headers = nil)
      list_by_device_async(device_name, resource_group_name, manager_name, custom_headers).value!
    end

    #
    # Gets all the volume containers in a device.
    #
    # @param device_name [String] The device name
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_device_async(device_name, resource_group_name, manager_name, custom_headers = nil)
      fail ArgumentError, 'device_name is nil' if device_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'manager_name is nil' if manager_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StorSimple/managers/{managerName}/devices/{deviceName}/volumeContainers'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'deviceName' => device_name,'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'managerName' => manager_name},
          skip_encoding_query_params: {'api-version' => @client.api_version},
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
            result_mapper = Azure::ARM::StorSimple8000Series::Models::VolumeContainerList.mapper()
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
    # Gets the properties of the specified volume container name.
    #
    # @param device_name [String] The device name
    # @param volume_container_name [String] The name of the volume container.
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [VolumeContainer] operation results.
    #
    def get(device_name, volume_container_name, resource_group_name, manager_name, custom_headers = nil)
      response = get_async(device_name, volume_container_name, resource_group_name, manager_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the properties of the specified volume container name.
    #
    # @param device_name [String] The device name
    # @param volume_container_name [String] The name of the volume container.
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(device_name, volume_container_name, resource_group_name, manager_name, custom_headers = nil)
      get_async(device_name, volume_container_name, resource_group_name, manager_name, custom_headers).value!
    end

    #
    # Gets the properties of the specified volume container name.
    #
    # @param device_name [String] The device name
    # @param volume_container_name [String] The name of the volume container.
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(device_name, volume_container_name, resource_group_name, manager_name, custom_headers = nil)
      fail ArgumentError, 'device_name is nil' if device_name.nil?
      fail ArgumentError, 'volume_container_name is nil' if volume_container_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'manager_name is nil' if manager_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StorSimple/managers/{managerName}/devices/{deviceName}/volumeContainers/{volumeContainerName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'deviceName' => device_name,'volumeContainerName' => volume_container_name,'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'managerName' => manager_name},
          skip_encoding_query_params: {'api-version' => @client.api_version},
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
            result_mapper = Azure::ARM::StorSimple8000Series::Models::VolumeContainer.mapper()
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
    # Creates or updates the volume container.
    #
    # @param device_name [String] The device name
    # @param volume_container_name [String] The name of the volume container.
    # @param parameters [VolumeContainer] The volume container to be added or
    # updated.
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [VolumeContainer] operation results.
    #
    def create_or_update(device_name, volume_container_name, parameters, resource_group_name, manager_name, custom_headers = nil)
      response = create_or_update_async(device_name, volume_container_name, parameters, resource_group_name, manager_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param device_name [String] The device name
    # @param volume_container_name [String] The name of the volume container.
    # @param parameters [VolumeContainer] The volume container to be added or
    # updated.
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def create_or_update_async(device_name, volume_container_name, parameters, resource_group_name, manager_name, custom_headers = nil)
      # Send request
      promise = begin_create_or_update_async(device_name, volume_container_name, parameters, resource_group_name, manager_name, custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::ARM::StorSimple8000Series::Models::VolumeContainer.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Deletes the volume container.
    #
    # @param device_name [String] The device name
    # @param volume_container_name [String] The name of the volume container.
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    def delete(device_name, volume_container_name, resource_group_name, manager_name, custom_headers = nil)
      response = delete_async(device_name, volume_container_name, resource_group_name, manager_name, custom_headers).value!
      nil
    end

    #
    # @param device_name [String] The device name
    # @param volume_container_name [String] The name of the volume container.
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def delete_async(device_name, volume_container_name, resource_group_name, manager_name, custom_headers = nil)
      # Send request
      promise = begin_delete_async(device_name, volume_container_name, resource_group_name, manager_name, custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Gets the metrics for the specified volume container.
    #
    # @param device_name [String] The device name
    # @param volume_container_name [String] The volume container name.
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param filter [String] OData Filter options
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MetricList] operation results.
    #
    def list_metrics(device_name, volume_container_name, resource_group_name, manager_name, filter, custom_headers = nil)
      response = list_metrics_async(device_name, volume_container_name, resource_group_name, manager_name, filter, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the metrics for the specified volume container.
    #
    # @param device_name [String] The device name
    # @param volume_container_name [String] The volume container name.
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param filter [String] OData Filter options
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_metrics_with_http_info(device_name, volume_container_name, resource_group_name, manager_name, filter, custom_headers = nil)
      list_metrics_async(device_name, volume_container_name, resource_group_name, manager_name, filter, custom_headers).value!
    end

    #
    # Gets the metrics for the specified volume container.
    #
    # @param device_name [String] The device name
    # @param volume_container_name [String] The volume container name.
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param filter [String] OData Filter options
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_metrics_async(device_name, volume_container_name, resource_group_name, manager_name, filter, custom_headers = nil)
      fail ArgumentError, 'device_name is nil' if device_name.nil?
      fail ArgumentError, 'volume_container_name is nil' if volume_container_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'manager_name is nil' if manager_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'filter is nil' if filter.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StorSimple/managers/{managerName}/devices/{deviceName}/volumeContainers/{volumeContainerName}/metrics'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'deviceName' => device_name,'volumeContainerName' => volume_container_name,'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'managerName' => manager_name},
          query_params: {'$filter' => filter},
          skip_encoding_query_params: {'api-version' => @client.api_version},
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
            result_mapper = Azure::ARM::StorSimple8000Series::Models::MetricList.mapper()
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
    # Gets the metric definitions for the specified volume container.
    #
    # @param device_name [String] The device name
    # @param volume_container_name [String] The volume container name.
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MetricDefinitionList] operation results.
    #
    def list_metric_definition(device_name, volume_container_name, resource_group_name, manager_name, custom_headers = nil)
      response = list_metric_definition_async(device_name, volume_container_name, resource_group_name, manager_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the metric definitions for the specified volume container.
    #
    # @param device_name [String] The device name
    # @param volume_container_name [String] The volume container name.
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_metric_definition_with_http_info(device_name, volume_container_name, resource_group_name, manager_name, custom_headers = nil)
      list_metric_definition_async(device_name, volume_container_name, resource_group_name, manager_name, custom_headers).value!
    end

    #
    # Gets the metric definitions for the specified volume container.
    #
    # @param device_name [String] The device name
    # @param volume_container_name [String] The volume container name.
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_metric_definition_async(device_name, volume_container_name, resource_group_name, manager_name, custom_headers = nil)
      fail ArgumentError, 'device_name is nil' if device_name.nil?
      fail ArgumentError, 'volume_container_name is nil' if volume_container_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'manager_name is nil' if manager_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StorSimple/managers/{managerName}/devices/{deviceName}/volumeContainers/{volumeContainerName}/metricsDefinitions'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'deviceName' => device_name,'volumeContainerName' => volume_container_name,'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'managerName' => manager_name},
          skip_encoding_query_params: {'api-version' => @client.api_version},
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
            result_mapper = Azure::ARM::StorSimple8000Series::Models::MetricDefinitionList.mapper()
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
    # Creates or updates the volume container.
    #
    # @param device_name [String] The device name
    # @param volume_container_name [String] The name of the volume container.
    # @param parameters [VolumeContainer] The volume container to be added or
    # updated.
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [VolumeContainer] operation results.
    #
    def begin_create_or_update(device_name, volume_container_name, parameters, resource_group_name, manager_name, custom_headers = nil)
      response = begin_create_or_update_async(device_name, volume_container_name, parameters, resource_group_name, manager_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates or updates the volume container.
    #
    # @param device_name [String] The device name
    # @param volume_container_name [String] The name of the volume container.
    # @param parameters [VolumeContainer] The volume container to be added or
    # updated.
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_create_or_update_with_http_info(device_name, volume_container_name, parameters, resource_group_name, manager_name, custom_headers = nil)
      begin_create_or_update_async(device_name, volume_container_name, parameters, resource_group_name, manager_name, custom_headers).value!
    end

    #
    # Creates or updates the volume container.
    #
    # @param device_name [String] The device name
    # @param volume_container_name [String] The name of the volume container.
    # @param parameters [VolumeContainer] The volume container to be added or
    # updated.
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_create_or_update_async(device_name, volume_container_name, parameters, resource_group_name, manager_name, custom_headers = nil)
      fail ArgumentError, 'device_name is nil' if device_name.nil?
      fail ArgumentError, 'volume_container_name is nil' if volume_container_name.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'manager_name is nil' if manager_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::ARM::StorSimple8000Series::Models::VolumeContainer.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StorSimple/managers/{managerName}/devices/{deviceName}/volumeContainers/{volumeContainerName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'deviceName' => device_name,'volumeContainerName' => volume_container_name,'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'managerName' => manager_name},
          skip_encoding_query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::StorSimple8000Series::Models::VolumeContainer.mapper()
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
    # Deletes the volume container.
    #
    # @param device_name [String] The device name
    # @param volume_container_name [String] The name of the volume container.
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def begin_delete(device_name, volume_container_name, resource_group_name, manager_name, custom_headers = nil)
      response = begin_delete_async(device_name, volume_container_name, resource_group_name, manager_name, custom_headers).value!
      nil
    end

    #
    # Deletes the volume container.
    #
    # @param device_name [String] The device name
    # @param volume_container_name [String] The name of the volume container.
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_delete_with_http_info(device_name, volume_container_name, resource_group_name, manager_name, custom_headers = nil)
      begin_delete_async(device_name, volume_container_name, resource_group_name, manager_name, custom_headers).value!
    end

    #
    # Deletes the volume container.
    #
    # @param device_name [String] The device name
    # @param volume_container_name [String] The name of the volume container.
    # @param resource_group_name [String] The resource group name
    # @param manager_name [String] The manager name
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_delete_async(device_name, volume_container_name, resource_group_name, manager_name, custom_headers = nil)
      fail ArgumentError, 'device_name is nil' if device_name.nil?
      fail ArgumentError, 'volume_container_name is nil' if volume_container_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'manager_name is nil' if manager_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StorSimple/managers/{managerName}/devices/{deviceName}/volumeContainers/{volumeContainerName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'deviceName' => device_name,'volumeContainerName' => volume_container_name,'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'managerName' => manager_name},
          skip_encoding_query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 202 || status_code == 204
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

  end
end
