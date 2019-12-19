fruits = ["りんご", "いちご", "みかん", "きゅうり", "ぶどう"]
no = 0

while no <= fruits.length - 1 #fruits.lengthは要素数にあわせて5になっている
  print "[" + no.to_s + "] "
  puts fruits[no.to_i]
  no += 1
end

no -= 1
puts "このなかで野菜が入っているのは何番目？(0〜" + no.to_s + ")の値を入力しましょう！"
print "答え："
ans = gets.to_i

if ans > no.to_i || ans < 0
  puts "強制終了！！"
elsif ans == 3
  puts "正解です！！"
else
  puts "不正解です、、"
end
