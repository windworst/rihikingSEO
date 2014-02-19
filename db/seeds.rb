#encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Status.create([
                { id: 10, name: "待处理"},
                { id: 20, name: "缺路线-1"},
                { id: 21, name: "缺路线-2"},
                { id: 22, name: "缺路线-3"},
                { id: 25, name: "缺路线-旅游"},
                { id: 30, name: "等待审批"},
                { id: 40, name: "已发布"},
                { id: 45, name: "过期活动"},
                { id: 50, name: "重复数据"},
                { id: 60, name: "错误数据"}
                ])

Targetstatus.create([
                      { id: 10, name: "运行"},
                      { id: 20, name: "暂停"}
                      ])
