class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :club_id
      t.string :name

      t.timestamps

    end
  end
end
