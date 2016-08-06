class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :met_on_social_platform
      t.date :date_met
      t.string :availability
      t.integer :skillset
      t.text :notes

      t.timestamps null: false
    end
  end
end
