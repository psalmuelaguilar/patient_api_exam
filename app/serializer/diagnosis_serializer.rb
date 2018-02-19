class DiagnosisSerializer
  def initialize(diagnosis)
    @diagnosis = diagnosis
  end

  def as_json(*)
    data = {
      name: @diagnosis.name,
      diagnosis_details: build_diagnosis_details
    }
  end

  private

  def build_diagnosis_details
    DiagnosisDetailSerializer.new(@diagnosis.diagnosis_detail).as_json
  end
end
