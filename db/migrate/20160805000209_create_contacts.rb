class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email
      t.string :phone
      t.string :met_on_social_platform
      t.date :date_met, null: false
      t.string :availability
      t.integer :skillset, null: false
      t.text :notes

      t.timestamps null: false
    end
  end
end
