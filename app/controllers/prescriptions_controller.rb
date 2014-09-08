class PrescriptionsController < ApplicationController

  def new
    @prescription = Prescription.new

    @patient = Patient.find(params[:patient_id])
    @medications = Medication.all

  end

  def create
    @patient = Patient.find_by(params[:id])

    @prescription = Prescription.new
    @prescription.medication_id = params[:prescription][:medication_id]
    @prescription.patient_id = @patient.id
    @prescription.user_id = current_user.id
    @prescription.dosage = params[:prescription][:dosage]
    @prescription.schedule = params[:prescription][:schedule]
    @prescription.starts_on = Date.civil(params[:prescription]['starts_on(1i)'].to_i, params[:prescription]['starts_on(2i)'].to_i, params[:prescription]['starts_on(3i)'].to_i)
    @prescription.ends_on = Date.civil(params[:prescription]['ends_on(1i)'].to_i, params[:prescription]['ends_on(2i)'].to_i, params[:prescription]['ends_on(3i)'].to_i)


    if @prescription.save
      flash[:notice] = "Your prescription has been successfully created!"
      redirect_to patient_path(@patient.id)
    else
      flash[:error] = "Your prescription could not be saved"
      render :new
    end
  end

  private


end