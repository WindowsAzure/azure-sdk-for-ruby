# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2014_04_01
  #
  # The Azure SQL Database management API provides a RESTful set of web
  # services that interact with Azure SQL Database services to manage your
  # databases. The API enables you to create, retrieve, update, and delete
  # databases.
  #
  class DatabaseTableAuditingPolicies
    include MsRestAzure

    #
    # Creates and initializes a new instance of the DatabaseTableAuditingPolicies class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [SqlManagementClient] reference to the SqlManagementClient
    attr_reader :client

    #
    # Gets a database's table auditing policy. Table auditing is deprecated, use
    # blob auditing instead.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param database_name [String] The name of the database for which the table
    # audit policy is defined.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [DatabaseTableAuditingPolicy] operation results.
    #
    def get(resource_group_name, server_name, database_name, custom_headers:nil)
      response = get_async(resource_group_name, server_name, database_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets a database's table auditing policy. Table auditing is deprecated, use
    # blob auditing instead.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param database_name [String] The name of the database for which the table
    # audit policy is defined.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, server_name, database_name, custom_headers:nil)
      get_async(resource_group_name, server_name, database_name, custom_headers:custom_headers).value!
    end

    #
    # Gets a database's table auditing policy. Table auditing is deprecated, use
    # blob auditing instead.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param database_name [String] The name of the database for which the table
    # audit policy is defined.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, server_name, database_name, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'server_name is nil' if server_name.nil?
      fail ArgumentError, 'database_name is nil' if database_name.nil?
      table_auditing_policy_name = 'default'
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/databases/{databaseName}/auditingPolicies/{tableAuditingPolicyName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'serverName' => server_name,'databaseName' => database_name,'tableAuditingPolicyName' => table_auditing_policy_name,'subscriptionId' => @client.subscription_id},
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
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::SQL::Mgmt::V2014_04_01::Models::DatabaseTableAuditingPolicy.mapper()
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
    # Creates or updates a database's table auditing policy. Table auditing is
    # deprecated, use blob auditing instead.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param database_name [String] The name of the database for which the table
    # auditing policy will be defined.
    # @param parameters [DatabaseTableAuditingPolicy] The database table auditing
    # policy.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [DatabaseTableAuditingPolicy] operation results.
    #
    def create_or_update(resource_group_name, server_name, database_name, parameters, custom_headers:nil)
      response = create_or_update_async(resource_group_name, server_name, database_name, parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates or updates a database's table auditing policy. Table auditing is
    # deprecated, use blob auditing instead.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param database_name [String] The name of the database for which the table
    # auditing policy will be defined.
    # @param parameters [DatabaseTableAuditingPolicy] The database table auditing
    # policy.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(resource_group_name, server_name, database_name, parameters, custom_headers:nil)
      create_or_update_async(resource_group_name, server_name, database_name, parameters, custom_headers:custom_headers).value!
    end

    #
    # Creates or updates a database's table auditing policy. Table auditing is
    # deprecated, use blob auditing instead.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param database_name [String] The name of the database for which the table
    # auditing policy will be defined.
    # @param parameters [DatabaseTableAuditingPolicy] The database table auditing
    # policy.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(resource_group_name, server_name, database_name, parameters, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'server_name is nil' if server_name.nil?
      fail ArgumentError, 'database_name is nil' if database_name.nil?
      table_auditing_policy_name = 'default'
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::SQL::Mgmt::V2014_04_01::Models::DatabaseTableAuditingPolicy.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/databases/{databaseName}/auditingPolicies/{tableAuditingPolicyName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'serverName' => server_name,'databaseName' => database_name,'tableAuditingPolicyName' => table_auditing_policy_name,'subscriptionId' => @client.subscription_id},
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
        unless status_code == 200 || status_code == 201
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::SQL::Mgmt::V2014_04_01::Models::DatabaseTableAuditingPolicy.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::SQL::Mgmt::V2014_04_01::Models::DatabaseTableAuditingPolicy.mapper()
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
    # Lists a database's table auditing policies. Table auditing is deprecated, use
    # blob auditing instead.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param database_name [String] The name of the database for which the table
    # audit policy is defined.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [DatabaseTableAuditingPolicyListResult] operation results.
    #
    def list_by_database(resource_group_name, server_name, database_name, custom_headers:nil)
      response = list_by_database_async(resource_group_name, server_name, database_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists a database's table auditing policies. Table auditing is deprecated, use
    # blob auditing instead.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param database_name [String] The name of the database for which the table
    # audit policy is defined.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_database_with_http_info(resource_group_name, server_name, database_name, custom_headers:nil)
      list_by_database_async(resource_group_name, server_name, database_name, custom_headers:custom_headers).value!
    end

    #
    # Lists a database's table auditing policies. Table auditing is deprecated, use
    # blob auditing instead.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param database_name [String] The name of the database for which the table
    # audit policy is defined.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_database_async(resource_group_name, server_name, database_name, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'server_name is nil' if server_name.nil?
      fail ArgumentError, 'database_name is nil' if database_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/databases/{databaseName}/auditingPolicies'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'serverName' => server_name,'databaseName' => database_name,'subscriptionId' => @client.subscription_id},
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
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::SQL::Mgmt::V2014_04_01::Models::DatabaseTableAuditingPolicyListResult.mapper()
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
