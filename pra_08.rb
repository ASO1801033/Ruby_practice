puts "★ 配列操作でしりとり"
words = ["ぷりん", "らんぷ", "まくら", "ごま", "りんご", "しりとり"]

puts "\n今の配列の並びはこんな感じです！"
words.each do |word1|
  puts word1
end

puts "\n配列の要素を逆順で表示すると「しりとり」ができます！"
words.reverse_each do |word2|
  puts word2
end
#配列の要素を逆順で表示したいときは、配列名.reverse_each do |ブロック変数|を使う
