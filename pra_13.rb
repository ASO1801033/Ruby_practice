data = [
   { :name => "ねこ", :age => 10 },
   { name:"ぱんだ", age:8 },
   { name:"きつつき", age:7 }
]#ハッシュの書き方
#変数 = { :key1 => 値1, :key2 => 値2 } 「:」が付いているものはシンボルをあらわす

puts "会員リスト"
puts "どの操作をしますか？(会員の追加：0 / 会員リストの表示：1)"
print "→ "
switch = gets.to_i

case switch
when 0 then #会員追加
  print "\n会員名を入力："
  name = gets.to_s

  print "年齢を入力："
  age = gets.to_i

  if age < 0
    puts "入力エラーです"
  else
    name = name.delete("\n") #入力後のnameには"\n"が入っているので削除して変数に入れ直す
    data.push({:name => name, :age => age}) #会員の追加処理

    puts "\n★ 会員追加後の会員リストはこちら！"

    (1..data.length).each do |cnt| #会員リストの表示
      print printf("会員番号：%03d", cnt).to_s + ", 氏名：" + data[cnt.to_i - 1][:name] + ", 年齢：" + (data[cnt.to_i - 1][:age]).to_s + "歳\n"
    end
  end
when 1 #会員リストの表示
  puts "\n★ 会員リストはこちら！"

  (1..data.length).each do |cnt|
    print printf("会員番号：%03d", cnt).to_s + ", 氏名：" + data[cnt.to_i - 1][:name] + ", 年齢：" + (data[cnt.to_i - 1][:age]).to_s + "歳\n"
  end
else
  puts "終了します"
end
