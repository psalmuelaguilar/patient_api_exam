class Diagnosis
  include Mongoid::Document
  field :name, type: String
  belongs_to :patient
  embeds_one :diagnosis_detail
end
