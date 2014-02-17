#encoding: utf-8
class SetInitData < ActiveRecord::Migration
  def self.up
    create_table :statuses do |t|
      t.string :name

      t.timestamps
    end
    Status.create :id => 10, :name => '待处理'
    Status.create :id => 20, :name => '缺路线-1'
    Status.create :id => 21, :name => '缺路线-2'
    Status.create :id => 22, :name => '缺路线-3'
    Status.create :id => 25, :name => '缺路线-旅游'
    Status.create :id => 30, :name => '等待审批'
    Status.create :id => 40, :name => '已发布'
    Status.create :id => 45, :name => '过期活动'
    Status.create :id => 50, :name => '重复数据'
    Status.create :id => 60, :name => '错误数据'
  end

  def self.down
    drop_table :statuses
  end
end
