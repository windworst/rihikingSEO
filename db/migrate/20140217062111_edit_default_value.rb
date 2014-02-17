class EditDefaultValue < ActiveRecord::Migration
  def change
    change_column :targets, :linkreg, :string, :default => ""
    change_column :targets, :namereg, :string, :default => "\D+"
  end
end
