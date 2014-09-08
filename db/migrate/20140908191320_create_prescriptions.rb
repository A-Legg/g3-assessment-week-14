class CreatePrescriptions < ActiveRecord::Migration
  def change
    create_table :prescriptions do |t|
      t.integer :patient_id
      t.integer :medication_id
      t.integer :user_id
      t.text :dosage
      t.text :schedule
      t.date :starts_on
      t.date :ends_on
      t.timestamps
    end
  end
end
