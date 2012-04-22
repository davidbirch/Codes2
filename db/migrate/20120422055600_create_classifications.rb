class CreateClassifications < ActiveRecord::Migration
  def change
    create_table :classifications do |t|
      t.string :code
      t.string :description
      t.string :group_code
      t.integer :group_id
      t.string :slug

      t.timestamps
    end
  end
end
