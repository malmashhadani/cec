class Project < ActiveRecord::Base
  has_many :mailaddresses
  has_many :physicaladdresses
  belongs_to :originator
  belongs_to :county
  belongs_to :zipcode
  belongs_to :unit

  validates :name, :description, :objective, :synopsis, :background, :comment, :url, :urldescription, :coursenumber, presence: true
  validates :coursedepartment, :coursenotes, :picture, :originator_id, :unit_id, :county_id, :zipcode_id, presence: true
  validates :name, :urldescription, length: { maximum: 100 }
  validates :originator_id, :unit_id, :county_id, :zipcode_id, numericality: { only_integer: true }
end
