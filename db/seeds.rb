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