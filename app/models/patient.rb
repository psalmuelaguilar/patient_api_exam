class Patient
  include Mongoid::Document
  field :patient_serial, type: String
  field :name, type: String
  has_many :diagnoses
end
