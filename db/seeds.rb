# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

patient = Patient.create(patient_serial: '123456789', name: 'Test')

urn = Diagnosis.create(name: 'Urinalysis', patient_id: patient.id)

cbc =  Diagnosis.create(name: 'Complete Blood Count', patient_id: patient.id)


cbc_details = cbc.create_diagnosis_detail(
  date: "2014-11-21",
  location: "MyHealth Clinic",
  physician: "Dr. Dexter Morgan",
  finding: analysis
)

analysis = {
	"Colour": {
		"value": "Pale Yellow",
	},
	"Appearance": {
		"value": "Clear",
	},
	"Specific Gravity": {
		"value": 1.016,
		"normal_range": "1.010-1.030",
	},
	"pH": {
		"value": 7.0,
		"normal_range": "4.8-7.4",
	},
	"Leucocytes": {
		"value": "Negative",
	},
	"Blood": {
		"value": "Negative",
	},
  "Nitrite": {
		"value": "Negative",
	},
	"Protein": {
		"value": "Negative",
	},
	"Glucose": {
		"value": "Negative",
	},
	"Ketones": {
		"value": "Negative",
	},
	"Urobilinogen": {
		"value": "Negative",
	},
	"White Blood Cell Count": {
		"value": 0,
		"unit": "/uL",
		"normal_range": "< 20",
  },
	"Red Blood Cell Count": {
		"value": 0,
		"unit": "/uL",
		"normal_range": "< 10",
	},
	"Ephithelial Cell Count": {
		"value": "None",
	},
	"Bacteria": {
		"value": "None",
	}
}

urn.create_diagnosis_detail(
  date: "2014-11-21",
  location: "MyHealth Clinic",
  physician: "Dr. Dexter Morgan",
  finding: analysis
)
