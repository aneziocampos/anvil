module Anvil
  class Client
    require 'anvil/vulnerability'

    attr_reader :api_key, :base_url

    def initialize(api_key, environment)
      @api_key = api_key
      load_base_url_for(environment)
    end

    def vulnerabilities
      Anvil::Vulnerability.new(self)
    end

    private

    def load_base_url_for(environment)
      case environment
      when 'production'
        @base_url = 'https://app.conviso.com.br'
      when 'staging'
        @base_url = 'https://homologa.conviso.com.br'
      else
        raise ArgumentError, "environment must be 'production' or 'staging'"
      end
    end
  end
end
