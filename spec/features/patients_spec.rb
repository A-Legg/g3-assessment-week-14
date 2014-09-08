require 'rails_helper'
require 'capybara/rails'

feature "Patients" do

  scenario "User sees all patients" do
    user = create_user
    patient = create_patient
    login(user)

    expect(page).to have_content(patient.first_name, patient.last_name)
  end

  scenario "User clicks on patient name and is take to patient's site" do
    visit "/"
    click_on "Finn Hudson"
    expect(page).to have_content("Prescriptions")
  end

end