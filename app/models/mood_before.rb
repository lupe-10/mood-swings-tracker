class MoodBefore < ApplicationRecord
  belongs_to :patient, class_name: "patient", foreign_key: "patient_id"
  validates :other_thoughts, length: {maximum: 240}
  MOOD_BEFORE = ['Sad', 'Happy', 'Tired', 'Gloomy', "Relaxed"]

end
