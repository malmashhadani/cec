class Project < ActiveRecord::Base
  has_many :mailaddresses
  has_many :physicaladdresses
  belongs_to :originator
  belongs_to :county
  belongs_to :zipcode
  belongs_to :unit
end
