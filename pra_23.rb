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

#Main
puts "縦・横・斜めにある数字の和が等しい魔法陣を表示します！"
min = 3
max = 9
print "縦横が何マスの魔法陣をつくるか入力してください(" + min.to_s + "以上" + max.to_s + "以下の奇数) → "
N = gets.to_i

if (N >= min && N <= max) && (N % 2 == 1)
  magiccamp = Array.new(N + 1) { Array.new(N + 1) } #配列の宣言
  sum = (N * N * N + N) / 2 #数字の和を計算

  (0..magiccamp.length - 2).each do |y| #行のループ
    (0..magiccamp.length - 2).each do |x| #列のループ
      magiccamp[y][x] = 0 #初期値の設定
    end
    magiccamp[y][magiccamp.length - 1] = "right" #一番右端の列だった場合
  end

  (0..magiccamp.length - 2).each do |x|
    magiccamp[magiccamp.length - 1][x] = "bottom" #一番下の行だった場合
  end

  magiccamp[magiccamp.length - 1][magiccamp.length - 1] = "corner" #角だった場合

  #配列の下から2行目・列の真ん中に1を代入する
  y = N - 1 #行
  x = (N - 1) / 2 #列
  num = 1 #数字
  magiccamp[y][x] = num

  while num <= (N * N) #numが「N * N」以下の間ループする
    yb = y #1回前のyの値を代入
    xb = x #1回前のxの値を代入

    y += 1 #次のyの値を設定
    x += 1 #次のxの値を設定

    if magiccamp[y][x] == "bottom" #要素の中身が「bottom」だった場合
      y = 0 #yの値を0にして0行目に移動する
    elsif magiccamp[y][x] == "right" #要素の中身が「right」だった場合
      x = 0 #xの値を0にして0列目に移動する
    elsif magiccamp[y][x] == "corner" #要素の中身が「corner」だった場合
      y = 0 #yの値を0にして0行目に移動する
      x = 0 #xの値を0にして0列目に移動する
    end

    if magiccamp[y][x] != 0 #要素の中身が「numの値」だった場合
      #現在の配列位置の上のマスになるようにyとxを再設定
      y = yb - 1
      x = xb
    end

    num += 1
    magiccamp[y][x] = num #数字を代入する
  end

  (0..magiccamp.length - 2).each do |y|
    call
    print "|"
    (0..magiccamp.length - 2).each do |x|
      printf("\s%02d\s|", magiccamp[y][x].to_s) #魔法陣の出力
    end
    puts ""
  end
  call
  puts "(/ 'O')/ ｶﾝｾｲﾅﾘ~" #正常終了
else
  puts "( ×_×) ﾆｭｳﾘｮｸｴﾗｰﾅﾉﾀﾞ､､" #異常終了
end
