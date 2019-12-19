puts "算数ドリル"
puts "スタートしますか？ はい＝1 / いいえ＝0"
switch = gets.to_i #getsは文字列だから整数型に変換
cnt = 0

case switch
when 0 then #thenは省略可能
  puts "おわります"
when 1 #whenは複数記載可能
  puts "問題は3つあります！"
  puts "第1問　1 + 3"
  print "答え："
  ans1 = gets.to_i
  if ans1 == 1 + 3
    puts "正解です！！"
    cnt += 1
    puts ""
  else
    puts "違います、、"
    puts ""
  end

  puts "第2問　4 + 2"
  print "答え："
  ans2 = gets.to_i
  if ans2 == 4 + 2
    puts "正解です！！"
    cnt += 1
    puts ""
  else
    puts "違います、、"
    puts ""
  end

  puts "第3問　5 + 7"
  print "答え："
  ans3 = gets.to_i
  if ans3 == 5 + 7
    puts "正解です！！"
    cnt += 1
    puts ""
  else
    puts "違います、、"
    puts ""
  end

  puts "合計の正解数は…"
  puts cnt.to_s + "問でした！"

  if cnt == 3
    puts "よくできました！"
  elsif cnt == 0
    puts "もっとがんばりましょう"
  end
else #上記以外の場合
  puts "おわります"
end
