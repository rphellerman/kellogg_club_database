class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :category_id
      t.string :category
      t.string :role

      t.timestamps

    end
  end
end
