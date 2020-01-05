def row3
  puts "+--------------+"
end

def row5
  puts "+------------------------+"
end

def row7
  puts "+----------------------------------+"
end

def row9
  puts "+--------------------------------------------+"
end

def call
  case N
    when 3
      row3
    when 5
      row5
    when 7
      row7
    when 9
      row9
  end
end

#Nは3として考える
puts "縦・横・斜めにある数字の和が等しい魔法陣を表示します！"
print "縦横が何マスの魔法陣をつくるか入力してください(3以上9以下の奇数) → "
N = gets.to_i

if (N >= 3 && N <= 9) && (N % 2 == 1)
  magiccamp = Array.new(N + 1) { Array.new(N + 1) } #[N + 1][N + 1]
  sum = (N * N * N + N) / 2 #(N * N * N + N) / 2

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

  y = N - 1 #y = N - 1
  x = (N - 1) / 2 #x = (N - 1) / 2
  num = 1
  magiccamp[y][x] = num

  while num <= (N * N) #numがN * N以下
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
    call
    print "|"
    (0..magiccamp.length - 2).each do |x|
      printf("\s%02d\s|", magiccamp[y][x].to_s)
    end
    puts ""
  end
  call
  puts "(/ 'O')/ ｶﾝｾｲﾅﾘ~"
else
  puts "( ×_×) ﾆｭｳﾘｮｸｴﾗｰﾅﾉﾀﾞ､､"
end
