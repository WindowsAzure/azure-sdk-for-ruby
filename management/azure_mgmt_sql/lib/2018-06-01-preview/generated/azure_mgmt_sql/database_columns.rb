# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2018_06_01_preview
  #
  # The Azure SQL Database management API provides a RESTful set of web APIs
  # that interact with Azure SQL Database services to manage your databases.
  # The API enables users to create, retrieve, update, and delete databases,
  # servers, and other entities.
  #
  class DatabaseColumns
    include MsRestAzure

    #
    # Creates and initializes a new instance of the DatabaseColumns class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [SqlManagementClient] reference to the SqlManagementClient
    attr_reader :client

    #
    # List database columns
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param database_name [String] The name of the database.
    # @param schema_name [String] The name of the schema.
    # @param table_name [String] The name of the table.
    # @param filter [String] An OData filter expression that filters elements in
    # the collection.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<DatabaseColumn>] operation results.
    #
    def list_by_table(resource_group_name, server_name, database_name, schema_name, table_name, filter:nil, custom_headers:nil)
      first_page = list_by_table_as_lazy(resource_group_name, server_name, database_name, schema_name, table_name, filter:filter, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # List database columns
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param database_name [String] The name of the database.
    # @param schema_name [String] The name of the schema.
    # @param table_name [String] The name of the table.
    # @param filter [String] An OData filter expression that filters elements in
    # the collection.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_table_with_http_info(resource_group_name, server_name, database_name, schema_name, table_name, filter:nil, custom_headers:nil)
      list_by_table_async(resource_group_name, server_name, database_name, schema_name, table_name, filter:filter, custom_headers:custom_headers).value!
    end

    #
    # List database columns
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param database_name [String] The name of the database.
    # @param schema_name [String] The name of the schema.
    # @param table_name [String] The name of the table.
    # @param filter [String] An OData filter expression that filters elements in
    # the collection.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_table_async(resource_group_name, server_name, database_name, schema_name, table_name, filter:nil, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'server_name is nil' if server_name.nil?
      fail ArgumentError, 'database_name is nil' if database_name.nil?
      fail ArgumentError, 'schema_name is nil' if schema_name.nil?
      fail ArgumentError, 'table_name is nil' if table_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/databases/{databaseName}/schemas/{schemaName}/tables/{tableName}/columns'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'serverName' => server_name,'databaseName' => database_name,'schemaName' => schema_name,'tableName' => table_name,'subscriptionId' => @client.subscription_id},
          query_params: {'$filter' => filter,'api-version' => @client.api_version},
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
            result_mapper = Azure::SQL::Mgmt::V2018_06_01_preview::Models::DatabaseColumnListResult.mapper()
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
    # Get database column
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param database_name [String] The name of the database.
    # @param schema_name [String] The name of the schema.
    # @param table_name [String] The name of the table.
    # @param column_name [String] The name of the column.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [DatabaseColumn] operation results.
    #
    def get(resource_group_name, server_name, database_name, schema_name, table_name, column_name, custom_headers:nil)
      response = get_async(resource_group_name, server_name, database_name, schema_name, table_name, column_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get database column
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param database_name [String] The name of the database.
    # @param schema_name [String] The name of the schema.
    # @param table_name [String] The name of the table.
    # @param column_name [String] The name of the column.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, server_name, database_name, schema_name, table_name, column_name, custom_headers:nil)
      get_async(resource_group_name, server_name, database_name, schema_name, table_name, column_name, custom_headers:custom_headers).value!
    end

    #
    # Get database column
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param database_name [String] The name of the database.
    # @param schema_name [String] The name of the schema.
    # @param table_name [String] The name of the table.
    # @param column_name [String] The name of the column.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, server_name, database_name, schema_name, table_name, column_name, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'server_name is nil' if server_name.nil?
      fail ArgumentError, 'database_name is nil' if database_name.nil?
      fail ArgumentError, 'schema_name is nil' if schema_name.nil?
      fail ArgumentError, 'table_name is nil' if table_name.nil?
      fail ArgumentError, 'column_name is nil' if column_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/databases/{databaseName}/schemas/{schemaName}/tables/{tableName}/columns/{columnName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'serverName' => server_name,'databaseName' => database_name,'schemaName' => schema_name,'tableName' => table_name,'columnName' => column_name,'subscriptionId' => @client.subscription_id},
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
            result_mapper = Azure::SQL::Mgmt::V2018_06_01_preview::Models::DatabaseColumn.mapper()
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
    # List database columns
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [DatabaseColumnListResult] operation results.
    #
    def list_by_table_next(next_page_link, custom_headers:nil)
      response = list_by_table_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # List database columns
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_table_next_with_http_info(next_page_link, custom_headers:nil)
      list_by_table_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # List database columns
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_table_next_async(next_page_link, custom_headers:nil)
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
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::SQL::Mgmt::V2018_06_01_preview::Models::DatabaseColumnListResult.mapper()
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
    # List database columns
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param server_name [String] The name of the server.
    # @param database_name [String] The name of the database.
    # @param schema_name [String] The name of the schema.
    # @param table_name [String] The name of the table.
    # @param filter [String] An OData filter expression that filters elements in
    # the collection.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [DatabaseColumnListResult] which provide lazy access to pages of the
    # response.
    #
    def list_by_table_as_lazy(resource_group_name, server_name, database_name, schema_name, table_name, filter:nil, custom_headers:nil)
      response = list_by_table_async(resource_group_name, server_name, database_name, schema_name, table_name, filter:filter, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_by_table_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

  end
end
