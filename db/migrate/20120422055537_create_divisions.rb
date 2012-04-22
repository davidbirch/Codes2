class CreateDivisions < ActiveRecord::Migration
  def change
    create_table :divisions do |t|
      t.string :code
      t.string :description
      t.string :overview
      t.string :slug

      t.timestamps
    end
  end
end
