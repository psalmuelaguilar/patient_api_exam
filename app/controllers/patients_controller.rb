class PatientsController < ApplicationController

  def index
    patients = Patient.all
    data = Patient.all.map { |patient| serialize_patient(patient) }
    render json: { data: data }
  end

  def show
    patient = Patient.last #.find(params[:id])
    render json: { data: serialize_patient(patient) }
  end

  private

  def serialize_patient(patient)
    ::PatientSerializer.new(patient).as_json
  end
end
