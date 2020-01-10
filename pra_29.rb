require "date" #DateとDateTimeクラスを使えるようにする

puts "うるう年判定キット！"
print "判定する西暦(1873年以降)を入力してください："
year = gets.to_i

if year < 1873
  puts "1873よひ小さい値が入力されました、、"
else
  yeardays = Time.new(year, 12, 31)
  if (yeardays.strftime("%j")).to_i == 366 #平年は355、うるう年は366が返される
    #変数名.strftime("%j")で年中の通算日(001-366)を求める
    puts "判定結果：うるう年です！"
  else
    puts "判定結果：平年です！"
  end
end
