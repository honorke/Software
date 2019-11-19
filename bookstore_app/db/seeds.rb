# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# books_list = [
#
#   ["title":" 计算机程序设计艺术 卷1：基本算法 （英文版?第3版）(计算机大师高德纳权威著作，精装版)", "price":94.00, "author":"戴士剑","publish": "机械工业出版社", "time":"2010-10-01","path":"D:/PictureList/20698869-1_b_0.jpg","picLocation":"http://img3m9.ddimg.cn/83/25/20949869-1_b_2.jpg"]
#
#
# ["title":"计算机科学概论（原书第5版）", "price":62.40, "author":"韦瑟罗尔","publish": "机械工业出版社","time":"2016-05-16","path":"D:/PictureList/23962908-1_b_2.jpg","picLocation":"http://img3m8.ddimg.cn/57/6/23962908-1_b_2.jpg" ]
#
# ]


# books_list.each  do |title, price, author, publish, time, path, picLocation|
#   Book.create( title: title, price: price, author: author, publish: publish, time: time, path: path, picLocation： picLocation)
#
# end

# books_list.each {|title, price, author, publish, time, path, picLocation|   Book.create( title: title, price: price, author: author, publish: publish, time: time, path: path, picLocation: picLocation ) }

Book.create!(title: " 计算机程序设计艺术",
             price: 94.00,
             author: "戴士剑",
             publish: "机械工业出版社",
             time: "2010-10-01",
             path: "D:/PictureList/20698869-1_b_0.jpg",
             picLocation: "http://img3m9.ddimg.cn/83/25/20949869-1_b_2.jpg")




