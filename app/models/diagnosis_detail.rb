class DiagnosisDetail
  include Mongoid::Document
  field :date, type: Date
  field :location, type: String
  field :physician, type: String
  field :finding, type: Hash
  embedded_in :diagnosis
end
