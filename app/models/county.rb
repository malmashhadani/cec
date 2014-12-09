class County < ActiveRecord::Base
  has_many :projects
  has_many :zipcodes

  validates :name, presence: true
  validates :name, length: { maximum: 100 }
end
