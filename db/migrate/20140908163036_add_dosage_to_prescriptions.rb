class AddDosageToPrescriptions < ActiveRecord::Migration
  def change
    add_column :prescriptions, :dosage, :text
    add_column :prescriptions, :schedule, :text
    add_column :prescriptions, :starts_on, :date
    add_column :prescriptions, :ends_on, :date
  end
end
