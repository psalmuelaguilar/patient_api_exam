require 'faker'

FactoryBot.define do
  factory :patient do
    patient_serial '12312132'
    name Faker::Name.unique.name
  end
end
