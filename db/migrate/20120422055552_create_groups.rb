class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :code
      t.string :description
      t.string :subdivision_code
      t.integer :subdivision_id

      t.timestamps
    end
  end
end
