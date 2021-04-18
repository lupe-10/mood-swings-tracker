class CreateMoodAfters < ActiveRecord::Migration[6.1]
  def change
    create_table :mood_afters do |t|

      t.timestamps
    end
  end
end
