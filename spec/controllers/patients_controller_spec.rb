require 'rails_helper'

RSpec.describe PatientsController, type: :controller do
  let!(:patient) { create(:patient) }
  let(:patient_pattern) do
    {
      patient_serial: String,
      name: String,
      diagnoses: Array
    }
  end

  describe 'GET index' do
    it 'gets all patients' do
      get :index
      expect(response).to be_success
      expect(response.body).to match_json_expression(data: [patient_pattern])
    end
  end

  describe 'GET show' do
    it 'gets a single patient' do
      get :show, params: { id: patient.id }
      expect(response).to be_success
      expect(response.body).to match_json_expression(data: patient_pattern)
    end
  end
end
