=begin
#directus.io

#API for directus.io

OpenAPI spec version: 1.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.0-SNAPSHOT

=end

require "uri"

module DirectusSDK
  class ActivityApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Returns activity
    # 
    # @param [Hash] opts the optional parameters
    # @return [GetActivity]
    def get_activity(opts = {})
      data, _status_code, _headers = get_activity_with_http_info(opts)
      return data
    end

    # Returns activity
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetActivity, Fixnum, Hash)>] GetActivity data, response status code and response headers
    def get_activity_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ActivityApi.get_activity ..."
      end
      # resource path
      local_var_path = "/activity"

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
        :return_type => 'GetActivity')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActivityApi#get_activity\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
