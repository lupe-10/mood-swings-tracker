class Patient < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
 has_many :moods_before, class_name: "mood_befores"
 has_many :moods_after, class_name: "mood_afters"
 belongs_to :psychologist, class_name: "psychologist", foreign_key: "psychologist_id"
end
