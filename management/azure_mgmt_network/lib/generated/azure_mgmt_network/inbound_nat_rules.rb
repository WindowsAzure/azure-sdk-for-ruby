# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  #
  # Network Client
  #
  class InboundNatRules

    #
    # Creates and initializes a new instance of the InboundNatRules class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [NetworkManagementClient] reference to the NetworkManagementClient
    attr_reader :client

    #
    # Gets all the inbound nat rules in a load balancer.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param load_balancer_name [String] The name of the load balancer.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [InboundNatRuleListResult] operation results.
    #
    def list(resource_group_name, load_balancer_name, custom_headers = nil)
      response = list_async(resource_group_name, load_balancer_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets all the inbound nat rules in a load balancer.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param load_balancer_name [String] The name of the load balancer.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRest::HttpOperationResponse] HTTP response information.
    #
    def list_with_http_info(resource_group_name, load_balancer_name, custom_headers = nil)
      list_async(resource_group_name, load_balancer_name, custom_headers).value!
    end

    #
    # Gets all the inbound nat rules in a load balancer.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param load_balancer_name [String] The name of the load balancer.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(resource_group_name, load_balancer_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'load_balancer_name is nil' if load_balancer_name.nil?
      api_version = '2017-06-01'
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/loadBalancers/{loadBalancerName}/inboundNatRules'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'loadBalancerName' => load_balancer_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => api_version},
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
            result_mapper = Azure::ARM::Network::Models::InboundNatRuleListResult.mapper()
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
    # Deletes the specified load balancer inbound nat rule.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param load_balancer_name [String] The name of the load balancer.
    # @param inbound_nat_rule_name [String] The name of the inbound nat rule.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(resource_group_name, load_balancer_name, inbound_nat_rule_name, custom_headers = nil)
      response = delete_async(resource_group_name, load_balancer_name, inbound_nat_rule_name, custom_headers).value!
      nil
    end

    #
    # Deletes the specified load balancer inbound nat rule.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param load_balancer_name [String] The name of the load balancer.
    # @param inbound_nat_rule_name [String] The name of the inbound nat rule.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRest::HttpOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, load_balancer_name, inbound_nat_rule_name, custom_headers = nil)
      delete_async(resource_group_name, load_balancer_name, inbound_nat_rule_name, custom_headers).value!
    end

    #
    # Deletes the specified load balancer inbound nat rule.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param load_balancer_name [String] The name of the load balancer.
    # @param inbound_nat_rule_name [String] The name of the inbound nat rule.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, load_balancer_name, inbound_nat_rule_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'load_balancer_name is nil' if load_balancer_name.nil?
      fail ArgumentError, 'inbound_nat_rule_name is nil' if inbound_nat_rule_name.nil?
      api_version = '2017-06-01'
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/loadBalancers/{loadBalancerName}/inboundNatRules/{inboundNatRuleName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'loadBalancerName' => load_balancer_name,'inboundNatRuleName' => inbound_nat_rule_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 204 || status_code == 202 || status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end


        result
      end

      promise.execute
    end

    #
    # Gets the specified load balancer inbound nat rule.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param load_balancer_name [String] The name of the load balancer.
    # @param inbound_nat_rule_name [String] The name of the inbound nat rule.
    # @param expand [String] Expands referenced resources.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [InboundNatRule] operation results.
    #
    def get(resource_group_name, load_balancer_name, inbound_nat_rule_name, expand = nil, custom_headers = nil)
      response = get_async(resource_group_name, load_balancer_name, inbound_nat_rule_name, expand, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the specified load balancer inbound nat rule.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param load_balancer_name [String] The name of the load balancer.
    # @param inbound_nat_rule_name [String] The name of the inbound nat rule.
    # @param expand [String] Expands referenced resources.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRest::HttpOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, load_balancer_name, inbound_nat_rule_name, expand = nil, custom_headers = nil)
      get_async(resource_group_name, load_balancer_name, inbound_nat_rule_name, expand, custom_headers).value!
    end

    #
    # Gets the specified load balancer inbound nat rule.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param load_balancer_name [String] The name of the load balancer.
    # @param inbound_nat_rule_name [String] The name of the inbound nat rule.
    # @param expand [String] Expands referenced resources.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, load_balancer_name, inbound_nat_rule_name, expand = nil, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'load_balancer_name is nil' if load_balancer_name.nil?
      fail ArgumentError, 'inbound_nat_rule_name is nil' if inbound_nat_rule_name.nil?
      api_version = '2017-06-01'
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/loadBalancers/{loadBalancerName}/inboundNatRules/{inboundNatRuleName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'loadBalancerName' => load_balancer_name,'inboundNatRuleName' => inbound_nat_rule_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => api_version,'$expand' => expand},
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
            result_mapper = Azure::ARM::Network::Models::InboundNatRule.mapper()
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
    # Creates or updates a load balancer inbound nat rule.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param load_balancer_name [String] The name of the load balancer.
    # @param inbound_nat_rule_name [String] The name of the inbound nat rule.
    # @param inbound_nat_rule_parameters [InboundNatRule] Parameters supplied to
    # the create or update inbound nat rule operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [InboundNatRule] operation results.
    #
    def create_or_update(resource_group_name, load_balancer_name, inbound_nat_rule_name, inbound_nat_rule_parameters, custom_headers = nil)
      response = create_or_update_async(resource_group_name, load_balancer_name, inbound_nat_rule_name, inbound_nat_rule_parameters, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates or updates a load balancer inbound nat rule.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param load_balancer_name [String] The name of the load balancer.
    # @param inbound_nat_rule_name [String] The name of the inbound nat rule.
    # @param inbound_nat_rule_parameters [InboundNatRule] Parameters supplied to
    # the create or update inbound nat rule operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRest::HttpOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(resource_group_name, load_balancer_name, inbound_nat_rule_name, inbound_nat_rule_parameters, custom_headers = nil)
      create_or_update_async(resource_group_name, load_balancer_name, inbound_nat_rule_name, inbound_nat_rule_parameters, custom_headers).value!
    end

    #
    # Creates or updates a load balancer inbound nat rule.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param load_balancer_name [String] The name of the load balancer.
    # @param inbound_nat_rule_name [String] The name of the inbound nat rule.
    # @param inbound_nat_rule_parameters [InboundNatRule] Parameters supplied to
    # the create or update inbound nat rule operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(resource_group_name, load_balancer_name, inbound_nat_rule_name, inbound_nat_rule_parameters, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'load_balancer_name is nil' if load_balancer_name.nil?
      fail ArgumentError, 'inbound_nat_rule_name is nil' if inbound_nat_rule_name.nil?
      fail ArgumentError, 'inbound_nat_rule_parameters is nil' if inbound_nat_rule_parameters.nil?
      api_version = '2017-06-01'
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::ARM::Network::Models::InboundNatRule.mapper()
      request_content = @client.serialize(request_mapper,  inbound_nat_rule_parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/loadBalancers/{loadBalancerName}/inboundNatRules/{inboundNatRuleName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'loadBalancerName' => load_balancer_name,'inboundNatRuleName' => inbound_nat_rule_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 201 || status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::Network::Models::InboundNatRule.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::Network::Models::InboundNatRule.mapper()
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
