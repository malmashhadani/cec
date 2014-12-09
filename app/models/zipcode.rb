class Zipcode < ActiveRecord::Base
  belongs_to :county
  has_many :projects

  validates :zipcode, :county_id, presence: true
  validates :zipcode, :project_id, numericality: { only_integer: true }
end
