require "uri"
require "net/http"
require "benchmark_email/version"

module BenchmarkEmail
  class Error < StandardError; end
  class EmptyTokenError < StandardError; end

  class Client
    API_URL = 'https://clientapi.benchmarkemail.com'
    attr_accessor :access_token

    def initialize(access_token = nil)
      @access_token = access_token || ENV['BENCHMARK_EMAIL_TOKEN']
      raise EmptyTokenError if  @access_token.empty?
    end

    def get_contact_lists
      url = URI("#{API_URL}/Contact/")
      https = Net::HTTP.new(url.host, url.port)
      https.use_ssl = true
      request = Net::HTTP::Get.new(url)
      request["AuthToken"] = @access_token
      request["Content-Type"] = "application/json"
      JSON.parse(https.request(request).body)
    end
  end
end
