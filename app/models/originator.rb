class Originator < ActiveRecord::Base
  has_many :projects

  validates :name, :phonenumber, :phonedescription, :email, :emaildescription, :faxnumber, presence: true
  validates :name, :phonenumber, :phonedescription, :email, :emaildescription, :faxnumber, length: { maximum: 100 }
  validates :email, format: { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
end
