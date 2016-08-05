class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :service
      t.date :date
      t.string :availability
      t.integer :skillset
      t.text :notes

      t.timestamps null: false
    end
  end
end
