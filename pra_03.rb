puts "算数ドリル ver2.0"
puts "問題は全部で3問あるよ！"
no = 1
cnt = 0
while no <= 3
  num1 = rand(1..10) #1~10までの乱数を生成する
  num2 = rand(20) #0~20までの乱数を生成する
  puts "第" + no.to_s + "問　" + num1.to_s + " + " + num2.to_s
  print "答え："
  ans = gets.to_i
  if ans == num1.to_i + num2.to_i
    puts "正解です！！"
    cnt += 1
    puts ""
  else
    puts "違います、、"
    puts ""
  end
  no += 1
end

puts "合計の正解数は…"
puts cnt.to_s + "問でした！"

if cnt == no - 1 #ループを抜けた時点でnoは4になっている
  puts "よくできました！"
elsif cnt == 0
  puts "もっとがんばりましょう、、"
end
