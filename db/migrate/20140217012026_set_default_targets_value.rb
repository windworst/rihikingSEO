class SetDefaultTargetsValue < ActiveRecord::Migration
  def change
    change_column :targets, :name, :string, :null => false
    change_column :targets, :status, :integer, :default => 10 , :null => false
    change_column :targets, :selector, :string, :default => 'a:not([href^="javascript"])', :null => false
    change_column :targets, :linkreg, :string, :default => "\D+"
    change_column :targets, :scancount, :integer, :default => 0, :null => false
  end

end
