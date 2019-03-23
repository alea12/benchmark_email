require 'json'
require 'benchmark_email'

RSpec.describe BenchmarkEmail::Client do
  client = BenchmarkEmail::Client.new

  describe '#get_contact_lists' do
    it 'returns a list of contact lists' do
      response = client.get_contact_lists
      expect(response).to be_a_kind_of(Hash)
    end
  end
end
