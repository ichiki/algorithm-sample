list = Array.new()
list = [10, 25, 11, 33 ,12, 13, 14, 15]

def search( list, obj )
  
  for i in list do
    if obj == i
      p i
      p 'find obj'
      break
    end
    p 'skip' + i.to_s
  end

end

search(list, 13)
