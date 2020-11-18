=begin
#directus.io

#API for directus.io

OpenAPI spec version: 1.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.0-SNAPSHOT

=end

require "uri"

module DirectusSDK
  class FilesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Creates file
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :data The file&#39;s Base64 content
    # @option opts [Integer] :active The file&#39;s status, default options are: 1 (active), 2 (inactive), 0 (deleted)
    # @option opts [String] :name The name used in the filesystem, including the extension, eg: \&quot;my-file.jpg\&quot;. This is generated by the system based on Global Settings
    # @option opts [String] :title The file&#39;s title
    # @option opts [String] :location Location of where the picture was taken, if any. Pulled from the IPTC location when available
    # @option opts [String] :type The file&#39;s mime type
    # @option opts [String] :tags A CSV of tags for this file. Pulled from the IPTC keywords when available
    # @option opts [String] :caption The file&#39;s caption or description. Pulled from the IPTC description when available
    # @return [nil]
    def create_file(opts = {})
      create_file_with_http_info(opts)
      return nil
    end

    # Creates file
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :data The file&#39;s Base64 content
    # @option opts [Integer] :active The file&#39;s status, default options are: 1 (active), 2 (inactive), 0 (deleted)
    # @option opts [String] :name The name used in the filesystem, including the extension, eg: \&quot;my-file.jpg\&quot;. This is generated by the system based on Global Settings
    # @option opts [String] :title The file&#39;s title
    # @option opts [String] :location Location of where the picture was taken, if any. Pulled from the IPTC location when available
    # @option opts [String] :type The file&#39;s mime type
    # @option opts [String] :tags A CSV of tags for this file. Pulled from the IPTC keywords when available
    # @option opts [String] :caption The file&#39;s caption or description. Pulled from the IPTC description when available
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def create_file_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FilesApi.create_file ..."
      end
      # resource path
      local_var_path = "/files"

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
      form_params["data"] = opts[:'data'] if !opts[:'data'].nil?
      form_params["active"] = opts[:'active'] if !opts[:'active'].nil?
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?
      form_params["title"] = opts[:'title'] if !opts[:'title'].nil?
      form_params["location"] = opts[:'location'] if !opts[:'location'].nil?
      form_params["type"] = opts[:'type'] if !opts[:'type'].nil?
      form_params["tags"] = opts[:'tags'] if !opts[:'tags'].nil?
      form_params["caption"] = opts[:'caption'] if !opts[:'caption'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilesApi#create_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns specific file by id
    # 
    # @param file_id ID of file to get
    # @param [Hash] opts the optional parameters
    # @return [GetFile]
    def get_file(file_id, opts = {})
      data, _status_code, _headers = get_file_with_http_info(file_id, opts)
      return data
    end

    # Returns specific file by id
    # 
    # @param file_id ID of file to get
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetFile, Fixnum, Hash)>] GetFile data, response status code and response headers
    def get_file_with_http_info(file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FilesApi.get_file ..."
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling FilesApi.get_file"
      end
      # resource path
      local_var_path = "/files/{fileId}".sub('{' + 'fileId' + '}', file_id.to_s)

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
        :return_type => 'GetFile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilesApi#get_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns files
    # 
    # @param [Hash] opts the optional parameters
    # @return [GetFiles]
    def get_files(opts = {})
      data, _status_code, _headers = get_files_with_http_info(opts)
      return data
    end

    # Returns files
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetFiles, Fixnum, Hash)>] GetFiles data, response status code and response headers
    def get_files_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FilesApi.get_files ..."
      end
      # resource path
      local_var_path = "/files"

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
        :return_type => 'GetFiles')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilesApi#get_files\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Creates file
    # 
    # @param file_id ID of file to get
    # @param [Hash] opts the optional parameters
    # @option opts [String] :data The file&#39;s Base64 content
    # @option opts [Integer] :active The file&#39;s status, default options are: 1 (active), 2 (inactive), 0 (deleted)
    # @option opts [String] :name The name used in the filesystem, including the extension, eg: \&quot;my-file.jpg\&quot;. This is generated by the system based on Global Settings
    # @option opts [String] :title The file&#39;s title
    # @option opts [String] :location Location of where the picture was taken, if any. Pulled from the IPTC location when available
    # @option opts [String] :type The file&#39;s mime type
    # @option opts [String] :tags A CSV of tags for this file. Pulled from the IPTC keywords when available
    # @option opts [String] :caption The file&#39;s caption or description. Pulled from the IPTC description when available
    # @option opts [String] :url File url relativity to Directus base url
    # @option opts [Integer] :width File width
    # @option opts [Integer] :height File height
    # @option opts [Integer] :size File size in bytes
    # @option opts [String] :embed_id ID of the embedded file. Ex Youtube ID
    # @option opts [Integer] :user File owner (who uploaded the file)
    # @option opts [String] :date_uploaded File uploaded date. TODO It should be an DateTime object
    # @option opts [String] :storage_adapter Storage adapter used to upload the file
    # @return [nil]
    def update_file(file_id, opts = {})
      update_file_with_http_info(file_id, opts)
      return nil
    end

    # Creates file
    # 
    # @param file_id ID of file to get
    # @param [Hash] opts the optional parameters
    # @option opts [String] :data The file&#39;s Base64 content
    # @option opts [Integer] :active The file&#39;s status, default options are: 1 (active), 2 (inactive), 0 (deleted)
    # @option opts [String] :name The name used in the filesystem, including the extension, eg: \&quot;my-file.jpg\&quot;. This is generated by the system based on Global Settings
    # @option opts [String] :title The file&#39;s title
    # @option opts [String] :location Location of where the picture was taken, if any. Pulled from the IPTC location when available
    # @option opts [String] :type The file&#39;s mime type
    # @option opts [String] :tags A CSV of tags for this file. Pulled from the IPTC keywords when available
    # @option opts [String] :caption The file&#39;s caption or description. Pulled from the IPTC description when available
    # @option opts [String] :url File url relativity to Directus base url
    # @option opts [Integer] :width File width
    # @option opts [Integer] :height File height
    # @option opts [Integer] :size File size in bytes
    # @option opts [String] :embed_id ID of the embedded file. Ex Youtube ID
    # @option opts [Integer] :user File owner (who uploaded the file)
    # @option opts [String] :date_uploaded File uploaded date. TODO It should be an DateTime object
    # @option opts [String] :storage_adapter Storage adapter used to upload the file
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_file_with_http_info(file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FilesApi.update_file ..."
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling FilesApi.update_file"
      end
      # resource path
      local_var_path = "/files/{fileId}".sub('{' + 'fileId' + '}', file_id.to_s)

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
      form_params["data"] = opts[:'data'] if !opts[:'data'].nil?
      form_params["active"] = opts[:'active'] if !opts[:'active'].nil?
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?
      form_params["title"] = opts[:'title'] if !opts[:'title'].nil?
      form_params["location"] = opts[:'location'] if !opts[:'location'].nil?
      form_params["type"] = opts[:'type'] if !opts[:'type'].nil?
      form_params["tags"] = opts[:'tags'] if !opts[:'tags'].nil?
      form_params["caption"] = opts[:'caption'] if !opts[:'caption'].nil?
      form_params["url"] = opts[:'url'] if !opts[:'url'].nil?
      form_params["width"] = opts[:'width'] if !opts[:'width'].nil?
      form_params["height"] = opts[:'height'] if !opts[:'height'].nil?
      form_params["size"] = opts[:'size'] if !opts[:'size'].nil?
      form_params["embed_id"] = opts[:'embed_id'] if !opts[:'embed_id'].nil?
      form_params["user"] = opts[:'user'] if !opts[:'user'].nil?
      form_params["date_uploaded"] = opts[:'date_uploaded'] if !opts[:'date_uploaded'].nil?
      form_params["storage_adapter"] = opts[:'storage_adapter'] if !opts[:'storage_adapter'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilesApi#update_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
