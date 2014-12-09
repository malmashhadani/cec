class Physicaladdress < ActiveRecord::Base
  belongs_to :project

  validates :address, :city, :state, :zipcode, :project_id, presence: true
  validates :address, :city, :state, length: { maximum: 100 }
  validates :zipcode, :project_id, numericality: { only_integer: true }
end
