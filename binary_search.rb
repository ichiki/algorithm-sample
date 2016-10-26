list = Array.new()
list = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]

def search (list, obj)
  header = 0
  tail = list.length-1
  center = (header + tail)/2

  jadge(header, tail, center, obj, list)
end

def jadge(header, tail, center, obj, list)
  
  p 'now... header:' + header.to_s + ', tail: ' + tail.to_s + ', center: ' + center.to_s

  if list[center] == obj
    p 'find obj' + obj.to_s
    return true
  elsif list[center] < obj
    header = center+1
    center = (header + tail)/2
  elsif list[center] > obj
    tail = center-1
    center = (header + tail)/2
  end 

  jadge(header, tail, center, obj, list)
end
search(list, 10)
