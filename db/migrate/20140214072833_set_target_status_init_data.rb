#encoding: utf-8
class SetTargetStatusInitData < ActiveRecord::Migration
  def self.up
    down()
    create_table :targetstatuses do |t|
      t.string :name

      t.timestamps
    end
    Targetstatus.create :id => 10, :name => '运行'
    Targetstatus.create :id => 20, :name => '暂停'
  end

  def self.down
    drop_table :targetstatuses
  end
end
