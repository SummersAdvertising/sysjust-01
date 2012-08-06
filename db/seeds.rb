# -*- encoding : utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin_user = User.new
admin_user.email = "admin@sysjust.com.tw"
admin_user.password = "123456"
admin_user.password_confirmation = "123456"
admin_user.is_admin = true
admin_user.save!

user = User.new
user.email = "user@sysjust.com.tw"
user.password = "123456"
user.password_confirmation = "123456"
user.save!

banner_01 = Banner.new
banner_01.category = "應用篇"
banner_01.title_01 = "台美公司對應"
banner_01.content_01 = "對應相關公司，輕鬆掌握連動關係"
banner_01.hyperlink_01 = "http://www.yahoo.com.tw/news/20120716"
banner_01.title_02 = "台美公司對應"
banner_01.content_02 = "對應相關公司，輕鬆掌握連動關係"
banner_01.hyperlink_02 = "http://www.yahoo.com.tw/news/20120716"
banner_01.title_03 = "台美公司對應"
banner_01.content_03 = "對應相關公司，輕鬆掌握連動關係"
banner_01.hyperlink_03 = "http://www.yahoo.com.tw/news/20120716"
banner_01.save

banner_02 = Banner.new
banner_02.category = "籌碼篇"
banner_02.title_01 = "台美公司對應"
banner_02.content_01 = "對應相關公司，輕鬆掌握連動關係"
banner_02.hyperlink_01 = "http://www.yahoo.com.tw/news/20120716"
banner_02.title_02 = "台美公司對應"
banner_02.content_02 = "對應相關公司，輕鬆掌握連動關係"
banner_02.hyperlink_02 = "http://www.yahoo.com.tw/news/20120716"
banner_02.title_03 = "台美公司對應"
banner_02.content_03 = "對應相關公司，輕鬆掌握連動關係"
banner_02.hyperlink_03 = "http://www.yahoo.com.tw/news/20120716"
banner_02.save

banner_03 = Banner.new
banner_03.category = "選股篇"
banner_03.title_01 = "台美公司對應"
banner_03.content_01 = "對應相關公司，輕鬆掌握連動關係"
banner_03.hyperlink_01 = "http://www.yahoo.com.tw/news/20120716"
banner_03.title_02 = "台美公司對應"
banner_03.content_02 = "對應相關公司，輕鬆掌握連動關係"
banner_03.hyperlink_02 = "http://www.yahoo.com.tw/news/20120716"
banner_03.title_03 = "台美公司對應"
banner_03.content_03 = "對應相關公司，輕鬆掌握連動關係"
banner_03.hyperlink_03 = "http://www.yahoo.com.tw/news/20120716"
banner_03.save

banner_04 = Banner.new
banner_04.category = "技術分析篇"
banner_04.title_01 = "台美公司對應"
banner_04.content_01 = "對應相關公司，輕鬆掌握連動關係"
banner_04.hyperlink_01 = "http://www.yahoo.com.tw/news/20120716"
banner_04.title_02 = "台美公司對應"
banner_04.content_02 = "對應相關公司，輕鬆掌握連動關係"
banner_04.hyperlink_02 = "http://www.yahoo.com.tw/news/20120716"
banner_04.title_03 = "台美公司對應"
banner_04.content_03 = "對應相關公司，輕鬆掌握連動關係"
banner_04.hyperlink_03 = "http://www.yahoo.com.tw/news/20120716"
banner_04.save

service_email = ServiceEmail.new
service_email.email = "rails.test.action.mailer@gmail.com"
service_email.save