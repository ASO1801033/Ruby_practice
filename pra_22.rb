#Nは3として考える
magiccamp = Array.new(4) { Array.new(4) } #[N + 1][N + 1]
sum = (3 * 3 * 3 + 3) / 2 #(N * N * N + N) / 2

(0..magiccamp.length - 2).each do |y|
  (0..magiccamp.length - 2).each do |x|
    magiccamp[y][x] = 0
  end
  magiccamp[y][magiccamp.length - 1] = "right"
end

(0..magiccamp.length - 2).each do |x|
  magiccamp[magiccamp.length - 1][x] = "bottom"
end

magiccamp[magiccamp.length - 1][magiccamp.length - 1] = "corner"

y = 2 #y = N - 1
x = (3 - 1) / 2 #x = (N - 1) / 2
num = 1
magiccamp[y][x] = num

while num <= (3 * 3) #numがN * N以下
  yb = y
  xb = x

  y += 1
  x += 1

  if magiccamp[y][x] == "bottom"
    y = 0
  elsif magiccamp[y][x] == "right"
    x = 0
  elsif magiccamp[y][x] == "corner"
    y = 0
    x = 0
  end

  if magiccamp[y][x] != 0
    y = yb - 1
    x = xb
  end

  num += 1
  magiccamp[y][x] = num
end

(0..magiccamp.length - 2).each do |y|
  (0..magiccamp.length - 2).each do |x|
    print magiccamp[y][x].to_s + "\s"
  end
  puts ""
end
