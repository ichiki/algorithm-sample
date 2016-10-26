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

def fetch_prime_by_eratosthenes(num)
end

(1..100).each do |num|
  puts num if prime?(num)
end
