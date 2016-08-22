class CreateJoinTableExpertiseContact < ActiveRecord::Migration
  def change
    create_join_table :expertises, :contacts do |t|
      # t.index [:expertise_id, :contact_id]
      # t.index [:contact_id, :expertise_id]
    end
  end
end
