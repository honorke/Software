
book = [
    [1,2,3],
    [4,5,6]
]
def loadDataSet()
  return {
     1 => [1,3,4],
     2 => [2,3,5],
     3 => [1,2,3,5],
    4 =>  [2,5]
  }
end

def createC1()
  dataSet = [
       [1,3,4],
      [2,3,5],
       [1,2,3,5],
        [2,5]
  ]
  arr = []
  for transaction in dataSet
    for item in transaction
      if !arr.include?(item)
        arr.push(item)
      end
    end
  end
  arr = arr.sort
  #puts arr
  res = Array.new {Array.new}

  #data = Array.new(5){ Array.new(5, 0)}
  res = Array.new(100){ Array.new(100)}
  for i in 0..99
    for j in 0..99
      res[i][j] = 0
    end
  end
  for i in arr
    for j in arr
      for transaction in dataSet
        if i != j && transaction.include?(i) && transaction.include?(j)
          res[i][j]+=1
        end

      end
    end
    for i in 0..res.length-1
      for j in 0..res[i].length-1
       if res[i][j]!=0
         puts("res["+ i.to_s + "]" + "[" + j.to_s + "]= " + res[i][j].to_s  )
       end
      end
    end
    resp = []



  end




end

def createC2()
  dataSet = [
      [1,3,4],
      [2,3,5],
      [1,2,3,5],
      [2,5]
  ]

  arr = dataSet.flatten
  arr = arr.uniq
  puts(arr)


  arr2 = Array.new(5)
  puts("arr2")
  puts arr2[0] == nil
  puts arr2[0] == 0

  MyName.new



end


def test3()
  selected = []
  0.upto 5 do |value|
    selected << value if value == 2 .. value == 4
  end
  p selected
end

def test4()
  selected = []
  0.upto 5 do |value|
    selected << value if value ==2 ... value == 6
  end
  p selected
end

require 'rexml/document'
include REXML

def testxml()
  books1 = [
      [1, ' 计算机是怎样跑起来的', 'http://img3m2.ddimg.cn/39/22/23709252-1_b_1.jpg', '¥30.80', 'Alan', '人民邮电出版社', ' /2015-05-01'],
      [2, ' 穿越计算机的迷雾（第2版）', 'http://img3m7.ddimg.cn/4/24/25247677-1_b_5.jpg', '¥37.90', 'Clements', '电子工业出版社', ' /2018-03-01'],
      [3, ' 大话计算机——计算机系统底层架构原理极限剖析', 'http://img3m7.ddimg.cn/49/31/27862807-1_b_7.jpg', '¥406.70', '矢泽久雄', '清华大学出版社', ' /2019-04-13']
  ]

  for i in 0..books1.length-1
    id = books1[i][0]
    name = books1[i][1]
    url = books1[i][2]
    price = books1[i][3]
    puts price
    price = price[1, price.length].to_f

    puts(price + 2)

  end
end
def  testArray
  a = Array.new(-1)
  a[0] = 1
  a[2] = 3
  for i in 0..a.length-1
    puts a[i]
  end
  puts a[2] == 0
end



#DELETE FROM sqlite_sequence WHERE name = 'TblName';
# require 'rmmseg'
# require 'rmmseg/ferret'
# def testword(word = "计算机算法设计与分析")
#   analyzer = RMMSeg::Ferret::Analyzer.new do
#
# end
#
def testUUId()
  require 'uuid'
  uuid = UUID.new
  for i in 0..10

    puts uuid.generate
    puts Time.now
  end
end
testUUId
