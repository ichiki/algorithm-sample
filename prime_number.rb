include Math # for fetch_prime_by_eratosthenes

def prime?(num)
  if num == 1
    return false
  elsif num == 2
    return true
  else
    (2..num-1).each do |x|
      if num % x == 0
        return false
      end
    end
    return true
  end
end

(1..100).each do |num|
  puts num if prime?(num)
end

#
# エラトステネスの篩
# step 1 : 探索リストに2からxまでの整数を昇順で入れる
# step 2 : 探索リストの先頭の数を素数リストに追加し、その倍数を探索リストから削除する
# step 3 : 上記の方法を探索リストの先頭値がxの平方根に到達するまで繰り返す
# step 4 : 探索リストに残った数を素数リストに移動する
#
def fetch_prime_by_eratosthenes(max)
  list = (2..max).to_a
  prime_list = []
  sqrt = Math.sqrt(max).floor

  while val = list.shift
    prime_list << val
    if val > sqrt
      break
    end
    list.delete_if{ |num| num % val == 0 }
  end

  return prime_list.concat(list)
end

p fetch_prime_by_eratosthenes(100)

