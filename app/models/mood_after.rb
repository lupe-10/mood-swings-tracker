class MoodAfter < ApplicationRecord
  belongs_to :patient, class_name: "psychologist", foreign_key: "psychologist_id"
end
