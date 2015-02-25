# encoding: utf-8
class HuApi::V1 < Grape::API
  version 'v1', using: :header, vendor: 'hu'

  prefix 'api'
  format :json


  mount Hotel
  mount Package


  rescue_from Mongoid::Errors::DocumentNotFound do |e|
    Rack::Response.new('Not found', 404, { "Content-type" => "text/error" }).finish
  end

end
