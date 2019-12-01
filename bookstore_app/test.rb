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



end

createC2()
