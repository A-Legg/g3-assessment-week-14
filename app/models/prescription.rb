class Prescription < ActiveRecord::Base

  has_many :medications
  belongs_to :user

  validates :medication, presence: true
  validates :dosage, presence: true
  validates :schedule, presence: true
  validates :starts_on, presence: true
  validates :ends_on, presence: true
end
