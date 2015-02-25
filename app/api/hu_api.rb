# encoding: utf-8
class HuApi < Grape::API
  mount HuApi::V1

  add_swagger_documentation
end