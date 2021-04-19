class AddColumnToPsychologists < ActiveRecord::Migration[6.1]
  def change
    add_column :psychologists, :first_name, :string
    add_column :psychologists, :last_name, :string
    add_column :psychologists, :phone_number, :integer
    add_column :psychologists, :address, :string
    add_column :psychologists, :professional_registration, :string
  end
end
