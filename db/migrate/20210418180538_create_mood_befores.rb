class CreateMoodBefores < ActiveRecord::Migration[6.1]
  def change
    create_table :mood_befores do |t|

      t.timestamps
    end
  end
end
