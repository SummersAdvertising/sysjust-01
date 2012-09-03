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

category_01 = Category.new
category_01.name = "獨家操作教戰"
category_01.save

category_02 = Category.new
category_02.name = "獨家資訊教戰"
category_02.save

category_03 = Category.new
category_03.name = "獨家分析教戰"
category_03.save

#news_update_01 = NewsUpdate.new
#news_update_01.title= "title 01"
#news_update_01.source= "source 01"
#news_update_01.category= "category 01"
#news_update_01.content= "content 01"
#news_update_01.save
#
#news_update_02 = NewsUpdate.new
#news_update_02.title= "title 02"
#news_update_02.source= "source 02"
#news_update_02.category= "category 02"
#news_update_02.content= "content 02"
#news_update_02.save
#
#news_update_03 = NewsUpdate.new
#news_update_03.title= "title 03"
#news_update_03.source= "source 03"
#news_update_03.category= "category 03"
#news_update_03.content= "content 03"
#news_update_03.save
#
#two_days_latter = Time.now + 2.days
#three_days_latter = Time.now + 3.days
#four_days_latter = Time.now + 4.days
#five_days_latter = Time.now + 5.days
#six_days_latter = Time.now + 6.days
#seven_days_latter = Time.now + 7.days
#
#course_01 = Course.new
#course_01.session = "session 01"
#course_01.subject = "subject 01"
#course_01.start_time = two_days_latter.month.to_s()+"/"+two_days_latter.day.to_s()+"/"+two_days_latter.year.to_s()+" "+two_days_latter.hour.to_s()+":"+two_days_latter.min.to_s()
#course_01.end_time = three_days_latter.month.to_s()+"/"+three_days_latter.day.to_s()+"/"+three_days_latter.year.to_s()+" "+three_days_latter.hour.to_s()+":"+three_days_latter.min.to_s()
#course_01.lecturer = "lecturer 01"
#course_01.address = "address 01"
#course_01.content = "content 01"
#course_01.registration_quota = 3
#course_01.is_display = true
#course_01.save
#
#course_02 = Course.new
#course_02.session = "session 02"
#course_02.subject = "subject 02"
#course_02.start_time = four_days_latter.month.to_s()+"/"+four_days_latter.day.to_s()+"/"+four_days_latter.year.to_s()+" "+four_days_latter.hour.to_s()+":"+four_days_latter.min.to_s()
#course_02.end_time = five_days_latter.month.to_s()+"/"+five_days_latter.day.to_s()+"/"+five_days_latter.year.to_s()+" "+five_days_latter.hour.to_s()+":"+five_days_latter.min.to_s()
#course_02.lecturer = "lecturer 02"
#course_02.address = "address 02"
#course_02.content = "content 02"
#course_02.registration_quota = 3
#course_02.is_display = true
#course_02.save
#
#course_03 = Course.new
#course_03.session = "session 03"
#course_03.subject = "subject 03"
#course_03.start_time = six_days_latter.month.to_s()+"/"+six_days_latter.day.to_s()+"/"+six_days_latter.year.to_s()+" "+six_days_latter.hour.to_s()+":"+six_days_latter.min.to_s()
#course_03.end_time = seven_days_latter.month.to_s()+"/"+seven_days_latter.day.to_s()+"/"+seven_days_latter.year.to_s()+" "+seven_days_latter.hour.to_s()+":"+seven_days_latter.min.to_s()
#course_03.lecturer = "lecturer 03"
#course_03.address = "address 03"
#course_03.content = "content 03"
#course_03.registration_quota = 3
#course_03.is_display = true
#course_03.save
