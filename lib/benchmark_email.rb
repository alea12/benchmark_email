require "uri"
require "net/http"
require "benchmark_email/version"

module BenchmarkEmail
  class Error < StandardError; end
  # Your code goes here...

  class Client
    API_URL = 'https://clientapi.benchmarkemail.com'
    attr_accessor :access_token

    def initialize(access_token)
      @access_token = access_token
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
