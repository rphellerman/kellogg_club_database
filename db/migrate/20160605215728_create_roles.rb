class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :title
      t.string :eligibility
      t.integer :time_commitment
      t.string :description
      t.integer :available
      t.string :club_id

      t.timestamps

    end
  end
end
