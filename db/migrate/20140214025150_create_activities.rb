class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.references :category, index: true
      t.string :link
      t.integer :status

      t.timestamps
    end
  end
end
