class PrescriptionsController < ApplicationController

  def new
    @prescription = Prescription.new
    @medications = Medication.all
    @patient = Patient.find_by(params[:id])

  end

  def create
    @patient = Patient.find_by(params[:id])
    @medications = Medication.all
    @prescription = Prescription.new
      @prescription.medication_id = params[:prescription][:medication_id]
    @prescription.patient_id = @patient.id
    @prescription.user_id = current_user.id
      @prescription.dosage = params[:prescription][:dosage]
      @prescription.schedule = params[:prescription][:schedule]
      @prescription.starts_on = Date.new(params[:date]['date(1i)'].to_i, params[:date]['date(2i)'].to_i, params[:date]['date(3i)'].to_i)
      @prescription.ends_on = Date.new(params[:date]['date(1i)'].to_i, params[:date]['date(2i)'].to_i, params[:date]['date(3i)'].to_i)




    if @prescription.save
      redirect to patient_path(@patient.id)
    else
      render :new
    end
  end
end