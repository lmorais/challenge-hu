# encoding: utf-8
class Package
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :daily, type: Integer
  field :guests, type: Integer
  field :price, type: Integer

end