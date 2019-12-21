puts "★ 繰り返し処理　each doの練習"
puts "① 範囲演算子なしで配列の要素を表示"
monthJ = ["睦月", "如月", "弥生", "卯月", "皐月", "水無月", "文月", "葉月", "長月", "神無月", "霜月", "師走"]
cnt = 1

monthJ.each do |name| #配列名.each do |ブロック変数(省略可)|
  puts (printf("%2d", cnt).to_s + "月：" + name)
  cnt += 1
end

puts "\n② 範囲演算子ありで配列の要素を表示"
monthE = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
(1..12).each do |cnt| #(開始値..終了値).each do |ブロック変数(省略可)|
  puts (printf("%2d", cnt).to_s + "月：" + monthE[cnt - 1])
end

#printf("%2d", cnt)でcntの値を2桁で表示
#printf("%2d", cnt).to_sで文字列としてcntの値を2桁で表示
#puts (printf("%2d", cnt).to_s + "月：" + name)で1行分表示(例→ 1月：睦月)後に改行する
