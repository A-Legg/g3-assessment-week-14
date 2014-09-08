class DashboardController < ApplicationController
  def index
    @user = current_user
    @patients = Patient.order(:first_name, :last_name)
    @medications = Medication.order(:name)


  end

end