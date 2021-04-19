class MoodBefore < ApplicationRecord
  belongs_to :patient, class_name: "patient", foreign_key: "patient_id"
end
