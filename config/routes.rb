# encoding: utf-8
HuRailsApi::Application.routes.draw do

  mount HuApi => '/'

  mount GrapeSwaggerRails::Engine => '/doc/api'
end
