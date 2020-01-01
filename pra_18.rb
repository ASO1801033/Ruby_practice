puts "文字列一致判断キット！"

puts "正規表現オブジェクトにしたい文字列を入力しましょう！"
print "→ "
base = gets.to_s

puts "\n文字の大小の違いを無視しますか？ はい＝1 / いいえ＝0"
print "→ "
select = gets.to_i

case select
  when 1
    word1 = Regexp.new(base, Regexp::IGNORECASE)  # 文字の大小の違いを無視する
  when 0
    word1 = Regexp.new(base)
  else
    puts "入力エラーのため終了します"
end

puts "\n比較する文字列を入力しましょう！"
print "→ "
com = gets.to_s

if word1.match(com)
  puts "\n検索結果：マッチしました！"
else
  puts "\n検索結果：マッチしませんでした、、"
end

#Regexp.new("文字列")でRegexpオブジェクトを生成する、引数に"文字列"を与える
