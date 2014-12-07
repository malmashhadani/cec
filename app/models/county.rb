class County < ActiveRecord::Base
  has_many :projects
  has_many :zipcodes
end
