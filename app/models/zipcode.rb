class Zipcode < ActiveRecord::Base
  belongs_to :county
  has_many :projects
end
