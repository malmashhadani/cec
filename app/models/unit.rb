class Unit < ActiveRecord::Base
  has_many :projects

  validates :name, presence: true
  validates :name, length: { maximum: 100 }
end
