puts "メタ文字を使った正規表現練習！"

#=~	正規表現演算子	a =~ /regex/	aが正規表現regexとマッチする
#｜(パイプ)を利用、どちらかに一致すればtrueとなる
puts "\n例：1"
str = "Apple"
print "比較する文字列：" + str
print "\n比較条件：Apple|apple\n"
if str =~ /Apple|apple/ #｜(パイプ)を使う時にスペースを入れない
  puts "比較結果：マッチした！" #こっちが該当する
else
  puts "比較結果：マッチしない、、"
end

#括弧( [] )で囲むことで、いずれかの文字と一致すればtrueとなる
puts "\n例：2"
str = "aApple"
print "比較する文字列：" + str
print "\n比較条件：[aA]pple\n"
if str =~ /[aA]pple/
  puts "比較結果：マッチした！" #こっちが該当する
else
  puts "比較結果：マッチしない、、"
end

puts "\n例：3"
str = "[aA]pple"
print "比較する文字列：" + str
print "\n比較条件：[aA]pple\n"
if str =~ /[aA]pple/
  puts "比較結果：マッチした！"
else
  puts "比較結果：マッチしない、、" #こっちが該当する
end

puts "\n例：4"
str = "0120"
print "比較する文字列：" + str
print "\n比較条件：[0-9]{3}\n"
if str =~ /[0-9]{3}/
  puts "比較結果：マッチした！" #こっちが該当する
else
  puts "比較結果：マッチしない、、"
end

puts "\n例：5"
str = "03"
print "比較する文字列：" + str
print "\n比較条件：[0-9]{3}\n"
if str =~ /[0-9]{3}/
  puts "比較結果：マッチした！"
else
  puts "比較結果：マッチしない、、" #こっちが該当する
end

puts "\n例：6"
str = "12345"
print "比較する文字列：" + str
print "\n比較条件：[1][0-9]{3,4}\n"
if str =~ /[1][0-9]{3,4}/
  puts "比較結果：マッチした！" #こっちが該当する
else
  puts "比較結果：マッチしない、、"
end

puts "\n例：7"
str = "1abcd"
print "比較する文字列：" + str
print "\n比較条件：1[a-zA-Z]{3,4}\n"
if str =~ /1[a-zA-Z]{3,4}/
  puts "比較結果：マッチした！" #こっちが該当する
else
  puts "比較結果：マッチしない、、"
end

puts "\n例：8"
str = "000A"
print "比較する文字列：" + str
print "\n比較条件：0{3,4}\n"
if str =~ /0{3,4}/
  puts "比較結果：マッチした！" #こっちが該当する
else
  puts "比較結果：マッチしない、、"
end

puts "\n例：9"
str = "United States of America"
print "比較する文字列：" + str
print "\n比較条件：[A-Z][a-zA-Z]\n"
if str =~ /[A-Z][a-zA-Z]*/
  puts "比較結果：マッチした！" #こっちが該当する
else
  puts "比較結果：マッチしない、、"
end

puts "\n例：10"
str = "0120-000-1234"
print "比較する文字列：" + str
print "\n比較条件：[0-9]{2,5}(-?)[0-9]{1,4}(-?)[0-9]{4}\n"
if str =~ /[0-9]{2,5}(-?)[0-9]{1,4}(-?)[0-9]{4}/
  puts "比較結果：マッチした！" #こっちが該当する
else
  puts "比較結果：マッチしない、、"
end
