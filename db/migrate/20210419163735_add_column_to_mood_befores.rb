class AddColumnToMoodBefores < ActiveRecord::Migration[6.1]
  def change
    add_column :mood_befores, :anxiety_level, :string
    add_column :mood_befores, :motivation_level, :string
    add_column :mood_befores, :mood_level, :string
    add_column :mood_befores, :cardiac_frecuency, :string
    add_column :mood_befores, :respiratory_rate, :string
    add_column :mood_befores, :pain, :string
    add_column :mood_befores, :other_thoughts, :text
    add_reference :mood_befores, :patient, foreign_key: true

  end
end
