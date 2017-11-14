# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServices::Mgmt::V2016_06_01
  #
  # Recovery Services Client
  #
  class Usages
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Usages class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [RecoveryServicesClient] reference to the RecoveryServicesClient
    attr_reader :client

    #
    # Fetches the usages of the vault.
    #
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param vault_name [String] The name of the recovery services vault.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [VaultUsageList] operation results.
    #
    def list_by_vaults(resource_group_name, vault_name, custom_headers = nil)
      response = list_by_vaults_async(resource_group_name, vault_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Fetches the usages of the vault.
    #
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param vault_name [String] The name of the recovery services vault.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_vaults_with_http_info(resource_group_name, vault_name, custom_headers = nil)
      list_by_vaults_async(resource_group_name, vault_name, custom_headers).value!
    end

    #
    # Fetches the usages of the vault.
    #
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param vault_name [String] The name of the recovery services vault.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_vaults_async(resource_group_name, vault_name, custom_headers = nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'vault_name is nil' if vault_name.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'Subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{vaultName}/usages'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'vaultName' => vault_name},
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
            result.body = Azure::RecoveryServices::Mgmt::V2016_06_01::Models::VaultUsageList.new.from_json(parsed_response)
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
