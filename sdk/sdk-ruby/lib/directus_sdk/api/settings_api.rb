=begin
#directus.io

#API for directus.io

OpenAPI spec version: 1.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.0-SNAPSHOT

=end

require "uri"

module DirectusSDK
  class SettingsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Returns settings
    # 
    # @param [Hash] opts the optional parameters
    # @return [GetSettings]
    def get_settings(opts = {})
      data, _status_code, _headers = get_settings_with_http_info(opts)
      return data
    end

    # Returns settings
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetSettings, Fixnum, Hash)>] GetSettings data, response status code and response headers
    def get_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SettingsApi.get_settings ..."
      end
      # resource path
      local_var_path = "/settings"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetSettings')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsApi#get_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns settings for collection
    # 
    # @param collection_name Name of collection to return settings for
    # @param [Hash] opts the optional parameters
    # @return [GetSettingsFor]
    def get_settings_for(collection_name, opts = {})
      data, _status_code, _headers = get_settings_for_with_http_info(collection_name, opts)
      return data
    end

    # Returns settings for collection
    # 
    # @param collection_name Name of collection to return settings for
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetSettingsFor, Fixnum, Hash)>] GetSettingsFor data, response status code and response headers
    def get_settings_for_with_http_info(collection_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SettingsApi.get_settings_for ..."
      end
      # verify the required parameter 'collection_name' is set
      if @api_client.config.client_side_validation && collection_name.nil?
        fail ArgumentError, "Missing the required parameter 'collection_name' when calling SettingsApi.get_settings_for"
      end
      # resource path
      local_var_path = "/settings/{collectionName}".sub('{' + 'collectionName' + '}', collection_name.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetSettingsFor')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsApi#get_settings_for\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update settings
    # 
    # @param collection_name Name of collection to return settings for
    # @param custom_data Data based on your specific schema eg: active&#x3D;1&amp;title&#x3D;LoremIpsum
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_settings(collection_name, custom_data, opts = {})
      update_settings_with_http_info(collection_name, custom_data, opts)
      return nil
    end

    # Update settings
    # 
    # @param collection_name Name of collection to return settings for
    # @param custom_data Data based on your specific schema eg: active&#x3D;1&amp;title&#x3D;LoremIpsum
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_settings_with_http_info(collection_name, custom_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SettingsApi.update_settings ..."
      end
      # verify the required parameter 'collection_name' is set
      if @api_client.config.client_side_validation && collection_name.nil?
        fail ArgumentError, "Missing the required parameter 'collection_name' when calling SettingsApi.update_settings"
      end
      # verify the required parameter 'custom_data' is set
      if @api_client.config.client_side_validation && custom_data.nil?
        fail ArgumentError, "Missing the required parameter 'custom_data' when calling SettingsApi.update_settings"
      end
      # resource path
      local_var_path = "/settings/{collectionName}".sub('{' + 'collectionName' + '}', collection_name.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(custom_data)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettingsApi#update_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
