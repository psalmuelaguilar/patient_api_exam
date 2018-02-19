class PatientSerializer
  def initialize(patient)
    @patient = patient
  end

  def as_json(*)
    data = {
      patient_serial: @patient.patient_serial.to_s,
      name: @patient.name,
      diagnoses: build_diagnoses
    }
  end

  private

  def build_diagnoses
    @patient.diagnoses.map{ |d| DiagnosisSerializer.new(d).as_json }
  end
end
