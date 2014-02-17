class CreateTargetstatuses < ActiveRecord::Migration
  def change
    create_table :targetstatuses do |t|
      t.string :name

      t.timestamps
    end
  end
end
