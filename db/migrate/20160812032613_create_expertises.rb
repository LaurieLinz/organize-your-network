class CreateExpertises < ActiveRecord::Migration
  def change
    create_table :expertises do |t|
      t.string :discipline

      t.timestamps null: false
    end
  end
end
