require 'spec_helper'

describe HuApi::V1::Hotel do
  include Rack::Test::Methods

  def app
    HuApi::V1
  end

  it 'should return list of hotels' do
    get '/api/hu/hotels'
    expect(last_response.status).to eq(200)
  end
end