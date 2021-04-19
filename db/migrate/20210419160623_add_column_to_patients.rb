class AddColumnToPatients < ActiveRecord::Migration[6.1]
  def change
    add_column :patients, :first_name, :string
    add_column :patients, :last_name, :string
    add_column :patients, :birthday, :date
    add_column :patients, :gender, :string
    add_column :patients, :phone_number, :integer
    add_column :patients, :address, :string
    add_column :patients, :pre_existing_disease, :string
    add_reference :patients, :psychologist, foreign_key: true
  end
end
