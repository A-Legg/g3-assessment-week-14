class Patient < ActiveRecord::Base
  has_many :users
  has_many :medications
  has_many :prescriptions


  validates_presence_of :first_name, :last_name

end