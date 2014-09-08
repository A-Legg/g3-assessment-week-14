class Prescription < ActiveRecord::Base
  belongs_to :patient
  belongs_to :medication



  validates :medication_id, presence: true
  validates :dosage, presence: true
  validates :schedule, presence: true
  validates :starts_on, presence: true
  validates :ends_on, presence: true
end
