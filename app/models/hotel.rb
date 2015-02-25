# encoding: utf-8
class Hotel
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :city, type: String
  field :neighborhood, type: String
  field :unavailability, type: Array

end