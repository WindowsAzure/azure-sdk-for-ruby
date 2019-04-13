require 'time'
# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

module MsRestAzure
  #
  # Class that provides access to access tokens generated by the azure cli.
  #
  class AzureCliTokenProvider < MsRest::TokenProvider
    private

    # @return [String] the type of token.
    attr_reader :cli_path

    # @return [ActiveDirectoryServiceSettings] settings.
    attr_accessor :settings

    # @return [String] auth token.
    attr_accessor :token
    
    # @return [Time] the date when the current token expires.
    attr_accessor :token_expires_on
    
    # @return [Integer] the amount of time we refresh token before it expires.
    attr_reader :expiration_threshold
    
    # @return [String] the type of token.
    attr_reader :token_type

    public

    #
    # Creates and initialize new instance of the AzureCliTokenProvider class.
    # @param settings [ActiveDirectoryServiceSettings] active directory setting.
    def initialize(settings = ActiveDirectoryServiceSettings.get_azure_settings)
      fail ArgumentError, 'Azure AD settings cannot be nil' if settings.nil?
      raise AzureCliError, 'Azure CLI is not installed' unless locate_azure_cli

      @settings = settings

      @expiration_threshold = 5 * 60
    end
    
    #
    # Gets an authentication header string using an access token from the Azure cli
    # @param settings [ActiveDirectoryServiceSettings] active directory settings.
    #
    # @return [String] The authenticaiton header string
    def get_authentication_header
      acquire_token if token_expired?
      "#{token_type} #{token}"
    end
    
    private
    
    #
    # Checks whether token is about to expire.
    #
    # @return [Bool] True if token is about to expire, false otherwise.
    def token_expired?
      @token.nil? || Time.now >= @token_expires_on + expiration_threshold
    end

    #
    # Checks if the Azure CLI is installed
    #
    # @return [Boolean] Does the az command exist on the path
    def locate_azure_cli
      exts = ENV['PATHEXT'] ? ENV['PATHEXT'].split(';') : ['']
      ENV['PATH'].split(File::PATH_SEPARATOR).each do |path|
        exts.each do |ext|
          executable = File.join(path, "az#{ext}")
          return @cli_path = executable if File.executable?(executable) && !File.directory?(executable)
        end
      end

      return nil
    end
    
    #
    # Acquires a new access token from teh azure CLI
    #
    # @return [String] The access token to the desired resource
    def acquire_token()
      response_body = JSON.load(`#{cli_path} account get-access-token -o json --resource #{@settings.token_audience}`)
      
      @token_expires_on = Time.parse(response_body['expiresOn'])
      @token_type = response_body['tokenType']
      @token = response_body['accessToken']
    rescue
      raise AzureCliError, 'Error acquiring token from the Azure CLI'
    end
  end

end