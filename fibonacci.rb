def fibs(n)
  array = []
  i = 1
  for i in i..n do
    if i <= 2
      array << i-1
    else
      array << array[-1] + array[-2]
    end
  end
  array
end

p fibs(8)

def fibs_rec(n)
  if n <= 2
   Array.new(n) {|i| i}
  else
    array = fibs_rec(n-1)
    array << array[-2] + array[-1]
  end
end

p fibs_rec(8)