class CreatePrimaryActivities < ActiveRecord::Migration
  def change
    create_table :primary_activities do |t|
      t.string :description
      t.string :classification_code
      t.integer :classification_id

      t.timestamps
    end
  end
end
