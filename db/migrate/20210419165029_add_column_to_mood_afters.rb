class AddColumnToMoodAfters < ActiveRecord::Migration[6.1]
  def change
    add_column :mood_afters, :anxiety_level, :string
    add_column :mood_afters, :motivation_level, :string
    add_column :mood_afters, :mood_level, :string
    add_column :mood_afters, :cardiac_frecuency, :string
    add_column :mood_afters, :respiratory_rate, :string
    add_column :mood_afters, :pain, :string
    add_column :mood_afters, :other_thoughts, :text
    add_reference :mood_afters, :patient, foreign_key: true

  end
end
