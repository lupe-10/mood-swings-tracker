class Patient < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
  has_many :moods_before, class_name: "mood_befores"
  has_many :moods_after, class_name: "mood_afters"
  #esto es para que podamos almacenar a traves de los id de los moods a los patients.
  #accepts_nested_attributes_for :mood_befores <- ver si lo pasamos como array en los params de patients
  #accepts_nested_attributes_for :mood_afters
  belongs_to :psychologist, class_name: "psychologist", foreign_key: "psychologist_id"
end
