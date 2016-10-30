# Binary Search - 二分探索法
#
# step1 あらかじめ昇順 or 降順にsortされているデータが必要
# step2 配列の中央の要素を調べる
# step3 中央の要素が目的のデータより大きければ中央より後半の部分を調べる、また目的のデータより小さければ中央より前半の部分を調べる。
# step4 step2に戻る
#

def binary_search (arr_size, obj)
  list = (1..arr_size).to_a

  header = 0
  tail = list.length-1

  while header <= tail do
    center = (header + tail)/2

    p 'now... header:' + header.to_s + ', tail: ' + tail.to_s + ', center: ' + center.to_s

    if list[center] == obj
      p 'find obj' + obj.to_s
      return true
    elsif list[center] < obj
      header = center+1
    elsif list[center] > obj
      tail = center-1
    end
  end
end
binary_search(10, 10)
