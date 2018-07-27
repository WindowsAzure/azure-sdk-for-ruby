# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2017_09_01
  #
  # Network Client
  #
  class PacketCaptures
    include MsRestAzure

    #
    # Creates and initializes a new instance of the PacketCaptures class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [NetworkManagementClient] reference to the NetworkManagementClient
    attr_reader :client

    #
    # Create and start a packet capture on the specified VM.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param network_watcher_name [String] The name of the network watcher.
    # @param packet_capture_name [String] The name of the packet capture session.
    # @param parameters [PacketCapture] Parameters that define the create packet
    # capture operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PacketCaptureResult] operation results.
    #
    def create(resource_group_name, network_watcher_name, packet_capture_name, parameters, custom_headers:nil)
      response = create_async(resource_group_name, network_watcher_name, packet_capture_name, parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param resource_group_name [String] The name of the resource group.
    # @param network_watcher_name [String] The name of the network watcher.
    # @param packet_capture_name [String] The name of the packet capture session.
    # @param parameters [PacketCapture] Parameters that define the create packet
    # capture operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def create_async(resource_group_name, network_watcher_name, packet_capture_name, parameters, custom_headers:nil)
      # Send request
      promise = begin_create_async(resource_group_name, network_watcher_name, packet_capture_name, parameters, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::Network::Mgmt::V2017_09_01::Models::PacketCaptureResult.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Gets a packet capture session by name.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param network_watcher_name [String] The name of the network watcher.
    # @param packet_capture_name [String] The name of the packet capture session.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PacketCaptureResult] operation results.
    #
    def get(resource_group_name, network_watcher_name, packet_capture_name, custom_headers:nil)
      response = get_async(resource_group_name, network_watcher_name, packet_capture_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets a packet capture session by name.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param network_watcher_name [String] The name of the network watcher.
    # @param packet_capture_name [String] The name of the packet capture session.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, network_watcher_name, packet_capture_name, custom_headers:nil)
      get_async(resource_group_name, network_watcher_name, packet_capture_name, custom_headers:custom_headers).value!
    end

    #
    # Gets a packet capture session by name.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param network_watcher_name [String] The name of the network watcher.
    # @param packet_capture_name [String] The name of the packet capture session.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, network_watcher_name, packet_capture_name, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'network_watcher_name is nil' if network_watcher_name.nil?
      fail ArgumentError, 'packet_capture_name is nil' if packet_capture_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkWatchers/{networkWatcherName}/packetCaptures/{packetCaptureName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'networkWatcherName' => network_watcher_name,'packetCaptureName' => packet_capture_name,'subscriptionId' => @client.subscription_id},
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
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Network::Mgmt::V2017_09_01::Models::PacketCaptureResult.mapper()
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
    # Deletes the specified packet capture session.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param network_watcher_name [String] The name of the network watcher.
    # @param packet_capture_name [String] The name of the packet capture session.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    def delete(resource_group_name, network_watcher_name, packet_capture_name, custom_headers:nil)
      response = delete_async(resource_group_name, network_watcher_name, packet_capture_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # @param resource_group_name [String] The name of the resource group.
    # @param network_watcher_name [String] The name of the network watcher.
    # @param packet_capture_name [String] The name of the packet capture session.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def delete_async(resource_group_name, network_watcher_name, packet_capture_name, custom_headers:nil)
      # Send request
      promise = begin_delete_async(resource_group_name, network_watcher_name, packet_capture_name, custom_headers:custom_headers)

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
    # Stops a specified packet capture session.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param network_watcher_name [String] The name of the network watcher.
    # @param packet_capture_name [String] The name of the packet capture session.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    def stop(resource_group_name, network_watcher_name, packet_capture_name, custom_headers:nil)
      response = stop_async(resource_group_name, network_watcher_name, packet_capture_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # @param resource_group_name [String] The name of the resource group.
    # @param network_watcher_name [String] The name of the network watcher.
    # @param packet_capture_name [String] The name of the packet capture session.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def stop_async(resource_group_name, network_watcher_name, packet_capture_name, custom_headers:nil)
      # Send request
      promise = begin_stop_async(resource_group_name, network_watcher_name, packet_capture_name, custom_headers:custom_headers)

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
    # Query the status of a running packet capture session.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param network_watcher_name [String] The name of the Network Watcher
    # resource.
    # @param packet_capture_name [String] The name given to the packet capture
    # session.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PacketCaptureQueryStatusResult] operation results.
    #
    def get_status(resource_group_name, network_watcher_name, packet_capture_name, custom_headers:nil)
      response = get_status_async(resource_group_name, network_watcher_name, packet_capture_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param resource_group_name [String] The name of the resource group.
    # @param network_watcher_name [String] The name of the Network Watcher
    # resource.
    # @param packet_capture_name [String] The name given to the packet capture
    # session.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def get_status_async(resource_group_name, network_watcher_name, packet_capture_name, custom_headers:nil)
      # Send request
      promise = begin_get_status_async(resource_group_name, network_watcher_name, packet_capture_name, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::Network::Mgmt::V2017_09_01::Models::PacketCaptureQueryStatusResult.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Lists all packet capture sessions within the specified resource group.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param network_watcher_name [String] The name of the Network Watcher
    # resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PacketCaptureListResult] operation results.
    #
    def list(resource_group_name, network_watcher_name, custom_headers:nil)
      response = list_async(resource_group_name, network_watcher_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists all packet capture sessions within the specified resource group.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param network_watcher_name [String] The name of the Network Watcher
    # resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(resource_group_name, network_watcher_name, custom_headers:nil)
      list_async(resource_group_name, network_watcher_name, custom_headers:custom_headers).value!
    end

    #
    # Lists all packet capture sessions within the specified resource group.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param network_watcher_name [String] The name of the Network Watcher
    # resource.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(resource_group_name, network_watcher_name, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'network_watcher_name is nil' if network_watcher_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkWatchers/{networkWatcherName}/packetCaptures'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'networkWatcherName' => network_watcher_name,'subscriptionId' => @client.subscription_id},
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
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Network::Mgmt::V2017_09_01::Models::PacketCaptureListResult.mapper()
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
    # Create and start a packet capture on the specified VM.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param network_watcher_name [String] The name of the network watcher.
    # @param packet_capture_name [String] The name of the packet capture session.
    # @param parameters [PacketCapture] Parameters that define the create packet
    # capture operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PacketCaptureResult] operation results.
    #
    def begin_create(resource_group_name, network_watcher_name, packet_capture_name, parameters, custom_headers:nil)
      response = begin_create_async(resource_group_name, network_watcher_name, packet_capture_name, parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Create and start a packet capture on the specified VM.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param network_watcher_name [String] The name of the network watcher.
    # @param packet_capture_name [String] The name of the packet capture session.
    # @param parameters [PacketCapture] Parameters that define the create packet
    # capture operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_create_with_http_info(resource_group_name, network_watcher_name, packet_capture_name, parameters, custom_headers:nil)
      begin_create_async(resource_group_name, network_watcher_name, packet_capture_name, parameters, custom_headers:custom_headers).value!
    end

    #
    # Create and start a packet capture on the specified VM.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param network_watcher_name [String] The name of the network watcher.
    # @param packet_capture_name [String] The name of the packet capture session.
    # @param parameters [PacketCapture] Parameters that define the create packet
    # capture operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_create_async(resource_group_name, network_watcher_name, packet_capture_name, parameters, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'network_watcher_name is nil' if network_watcher_name.nil?
      fail ArgumentError, 'packet_capture_name is nil' if packet_capture_name.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::Network::Mgmt::V2017_09_01::Models::PacketCapture.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkWatchers/{networkWatcherName}/packetCaptures/{packetCaptureName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'networkWatcherName' => network_watcher_name,'packetCaptureName' => packet_capture_name,'subscriptionId' => @client.subscription_id},
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
        unless status_code == 201
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Network::Mgmt::V2017_09_01::Models::PacketCaptureResult.mapper()
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
    # Deletes the specified packet capture session.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param network_watcher_name [String] The name of the network watcher.
    # @param packet_capture_name [String] The name of the packet capture session.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def begin_delete(resource_group_name, network_watcher_name, packet_capture_name, custom_headers:nil)
      response = begin_delete_async(resource_group_name, network_watcher_name, packet_capture_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # Deletes the specified packet capture session.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param network_watcher_name [String] The name of the network watcher.
    # @param packet_capture_name [String] The name of the packet capture session.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_delete_with_http_info(resource_group_name, network_watcher_name, packet_capture_name, custom_headers:nil)
      begin_delete_async(resource_group_name, network_watcher_name, packet_capture_name, custom_headers:custom_headers).value!
    end

    #
    # Deletes the specified packet capture session.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param network_watcher_name [String] The name of the network watcher.
    # @param packet_capture_name [String] The name of the packet capture session.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_delete_async(resource_group_name, network_watcher_name, packet_capture_name, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'network_watcher_name is nil' if network_watcher_name.nil?
      fail ArgumentError, 'packet_capture_name is nil' if packet_capture_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkWatchers/{networkWatcherName}/packetCaptures/{packetCaptureName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'networkWatcherName' => network_watcher_name,'packetCaptureName' => packet_capture_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 204 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Stops a specified packet capture session.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param network_watcher_name [String] The name of the network watcher.
    # @param packet_capture_name [String] The name of the packet capture session.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def begin_stop(resource_group_name, network_watcher_name, packet_capture_name, custom_headers:nil)
      response = begin_stop_async(resource_group_name, network_watcher_name, packet_capture_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # Stops a specified packet capture session.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param network_watcher_name [String] The name of the network watcher.
    # @param packet_capture_name [String] The name of the packet capture session.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_stop_with_http_info(resource_group_name, network_watcher_name, packet_capture_name, custom_headers:nil)
      begin_stop_async(resource_group_name, network_watcher_name, packet_capture_name, custom_headers:custom_headers).value!
    end

    #
    # Stops a specified packet capture session.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param network_watcher_name [String] The name of the network watcher.
    # @param packet_capture_name [String] The name of the packet capture session.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_stop_async(resource_group_name, network_watcher_name, packet_capture_name, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'network_watcher_name is nil' if network_watcher_name.nil?
      fail ArgumentError, 'packet_capture_name is nil' if packet_capture_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkWatchers/{networkWatcherName}/packetCaptures/{packetCaptureName}/stop'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'networkWatcherName' => network_watcher_name,'packetCaptureName' => packet_capture_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Query the status of a running packet capture session.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param network_watcher_name [String] The name of the Network Watcher
    # resource.
    # @param packet_capture_name [String] The name given to the packet capture
    # session.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PacketCaptureQueryStatusResult] operation results.
    #
    def begin_get_status(resource_group_name, network_watcher_name, packet_capture_name, custom_headers:nil)
      response = begin_get_status_async(resource_group_name, network_watcher_name, packet_capture_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Query the status of a running packet capture session.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param network_watcher_name [String] The name of the Network Watcher
    # resource.
    # @param packet_capture_name [String] The name given to the packet capture
    # session.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_get_status_with_http_info(resource_group_name, network_watcher_name, packet_capture_name, custom_headers:nil)
      begin_get_status_async(resource_group_name, network_watcher_name, packet_capture_name, custom_headers:custom_headers).value!
    end

    #
    # Query the status of a running packet capture session.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param network_watcher_name [String] The name of the Network Watcher
    # resource.
    # @param packet_capture_name [String] The name given to the packet capture
    # session.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_get_status_async(resource_group_name, network_watcher_name, packet_capture_name, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'network_watcher_name is nil' if network_watcher_name.nil?
      fail ArgumentError, 'packet_capture_name is nil' if packet_capture_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkWatchers/{networkWatcherName}/packetCaptures/{packetCaptureName}/queryStatus'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'networkWatcherName' => network_watcher_name,'packetCaptureName' => packet_capture_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

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
            result_mapper = Azure::Network::Mgmt::V2017_09_01::Models::PacketCaptureQueryStatusResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 202
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Network::Mgmt::V2017_09_01::Models::PacketCaptureQueryStatusResult.mapper()
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
