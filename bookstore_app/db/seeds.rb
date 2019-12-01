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
Book.create!(
    title: "计算机科学概论（原书第5版）",
    price: 62.40,
    author: "韦瑟罗尔",
    publish: "机械工业出版社",
    time: "2016-05-16",
    path: "D:/PictureList/20698869-1_b_0.jpg",
    picLocation: "http://img3m8.ddimg.cn/57/6/23962908-1_b_2.jpg")

Book.create!(
    title: "计算机程序设计艺术 卷1 基本算法（第3版）",
    price: 156.40,
    author: "Dald E. Kuh",
    publish: "电子工业出版社",
    time: "2016-01-01",
    path: "http://img3m9.ddimg.cn/23/29/25122659-1_b_3.jpg",
    picLocation: "http://img3m2.ddimg.cn/86/27/23839682-1_b_8.jpg")
Book.create!(
    title: " 计算机视觉——一种现代方法（第二版）",
    price: 79.60,
    author: "赫恩",
    publish: "电子工业出版社",
    time: "2017-07-01",
    path: "http://img3m9.ddimg.cn/23/29/25122659-1_b_3.jpg",
    picLocation: "http://img3m9.ddimg.cn/23/29/25122659-1_b_3.jpg")



book_list = {
    1 => {
        title: "  计算机体系结构：量化研究方法（第5版）",
        price: 86.10,
        author: "Andrew",
        publish: "人民邮电出版社",
        time: "2013-01-01",
        path: "http://img3m9.ddimg.cn/23/29/25122659-1_b_3.jpg",
        picLocation: "http://img3m4.ddimg.cn/47/13/22938644-1_b_1.jpg"
    },

    2 => {
        title: "计算机时代的统计推断：算法、演化和数据科学",
        price: 94.60,
        author: "Brookshear",
        publish: "机械工业出版社",
        time: "2019-06-15",
        path: "http://img3m9.ddimg.cn/23/29/25122659-1_b_3.jpg",
        picLocation: "http://img3m6.ddimg.cn/25/3/27887236-1_b_3.jpg"

    },

    3 => {
        title: " 计算机程序设计艺术 卷4A：组合算法（一）",
        price: 179.90,
        author: "道格拉斯·科莫",
        publish: "人民邮电出版社",
        time: "2019-06-01",
        path: "http://img3m9.ddimg.cn/23/29/25122659-1_b_3.jpg",
        picLocation: "http://img3m5.ddimg.cn/63/29/27902025-1_b_1.jpg"

    },

    4 => {
        title: " 计算机程序设计艺术 卷3：排序与查找",
        price: 94.00,
        author: "Amin",
        publish: "人民邮电出版社",
        time: "2010-10-01",
        path: "http://img3m9.ddimg.cn/23/29/25122659-1_b_3.jpg",
        picLocation: "http://img3m0.ddimg.cn/84/26/20949870-1_b_2.jpg"

    },

    5 => {
        title: " 计算机组成与设计：硬件/软件接口",
        price: 79.60,
        author: "龚征",
        publish: "机械工业出版社",
        time: "2014-02-01",
        path: "http://img3m9.ddimg.cn/23/29/25122659-1_b_3.jpg",
        picLocation: "http://img3m8.ddimg.cn/43/13/23452648-1_b_0.jpg	"

    }

}
book_list.keys.each do |index|
  book = Book.create!(
      title: book_list[index][:title],
      price: book_list[index][:price],
      author: book_list[index][:author],
      publish: book_list[index][:publish],
      time: book_list[index][:time],
      path: book_list[index][:path],
      picLocation: book_list[index][:picLocation]

  )
end






