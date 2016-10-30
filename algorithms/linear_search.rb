# Linear Search - 線形探索法
# 先頭から順番に探す

list = [10, 25, 11, 33 ,12, 13, 14, 15]

def search( list, obj )

  list.each do |num|
    puts num
    puts "Found!!!#{num}" if num == obj
  end

end

search(list, 13)
