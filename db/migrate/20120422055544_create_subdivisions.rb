class CreateSubdivisions < ActiveRecord::Migration
  def change
    create_table :subdivisions do |t|
      t.string :code
      t.string :description
      t.string :division_code
      t.integer :division_id

      t.timestamps
    end
  end
end
