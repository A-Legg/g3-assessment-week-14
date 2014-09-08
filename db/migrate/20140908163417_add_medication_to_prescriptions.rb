class AddMedicationToPrescriptions < ActiveRecord::Migration
  def change
    add_column :prescriptions, :medication, :text
  end
end
