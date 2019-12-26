data = [
  { :name => "たろう", :age => 10 },
  { name:"じろう", age:8 },
  { name:"さぶろう", age:7 }
]#ハッシュの書き方
#変数 = { :key1 => 値1, :key2 => 値2 } 「:」が付いているものはシンボルをあらわす

puts "会員リストを表示します" #会員リストの表示

(1..data.length).each do |cnt|
  print "会員番号：" + cnt.to_s + ", 氏名：" + data[cnt.to_i - 1][:name] + ", 年齢：" + (data[cnt.to_i - 1][:age]).to_s + "歳\n"
  #puts (printf('会員番号：%03d, 氏名：%10s, 年齢：%3d歳', cnt.to_s, data[cnt.to_i - 1][:name], data[cnt.to_i - 1][:age]))
end
