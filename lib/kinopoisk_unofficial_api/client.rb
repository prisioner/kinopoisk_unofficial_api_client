# frozen_string_literal: true

module KinopoiskUnofficialApi
  class Client
    attr_reader :secret_key, :url

    def initialize(secret_key, url: "https://kinopoiskapiunofficial.tech")
      @secret_key = secret_key
      @url = url
    end

    def connection
      @connection ||= Faraday.new(url: url, headers: { "X-API-KEY" => secret_key }) do |faraday|
        faraday.adapter KinopoiskUnofficialApi.configuration.adapter
        faraday.options.timeout = KinopoiskUnofficialApi.configuration.connection_timeout
        faraday.options.open_timeout = KinopoiskUnofficialApi.configuration.connection_open_timeout
      end
    end

    def method_missing(method_name, *args, &block)
      return super unless ENDPOINTS.key?(method_name)

      result = call(method_name, *args)

      ENDPOINTS[method_name][:response_type].call(result)
    end

    def respond_to_missing?(*args)
      method_name = args[0]

      ENDPOINTS.key?(method_name) || super
    end

    def call(method_name, raw_params = {})
      params = build_params(method_name, raw_params)
      path = build_path(method_name, params)
      response = connection.get(path, params)
      raise Exceptions::ResponseError.new(response: response) unless response.status == 200

      JSON.parse(response.body)
    end

    private

    def build_params(method_name, raw_params)
      return {} if ENDPOINTS[method_name][:no_params]

      schema_name = method_name.to_s.split("_").map(&:capitalize).join

      schema = KinopoiskUnofficialApi::RequestSchemas.const_get(schema_name)

      schema.call(raw_params).to_params_hash
    end

    def build_path(method_name, params)
      endpoint = ENDPOINTS[method_name]
      version = endpoint[:version]
      path = endpoint[:path]

      endpoint[:path_params]&.each do |param|
        path = path.gsub("{#{param}}", params.delete(param))
      end

      (+"/api/").concat(version, path)
    end
  end
end
