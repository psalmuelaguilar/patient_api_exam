class DiagnosisDetailSerializer
  def initialize(diagnosis_detail)
    @diagnosis_detail = diagnosis_detail
  end

  def as_json(*)
    data = {
      date: @diagnosis_detail.date,
      location: @diagnosis_detail.location,
      physician: @diagnosis_detail.physician,
      finding: @diagnosis_detail.finding
    }
  end
end
