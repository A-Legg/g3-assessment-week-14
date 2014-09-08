class PrescriptionsController < ApplicationController

  def new
    @prescription = Prescription.new
    @medications = Medication.all
    @patient = Patient.find_by(params[:id])

  end

  def create
    @patient = Patient.find_by(params[:id])
    @prescription = Prescription.new(
      medication: params[:prescription][:medication],
      dosage: params[:prescription][:dosage],
      schedule: params[:prescription][:dosage],
      # starts_on: Date.new(params[:date]['date(1i)'].to_i, params[:date]['date(2i)'].to_i, params[:date]['date(3i)'].to_i),
      # ends_on: Date.new(params[:date]['date(1i)'].to_i, params[:date]['date(2i)'].to_i, params[:date]['date(3i)'].to_i)
    )

    if @prescription.save
      redirect to patient_path(@patient.id)
    else
      render :new
    end
  end
end