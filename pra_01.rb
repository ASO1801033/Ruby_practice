puts "三角形の面積を計算する！"

puts "底辺の長さを入力してください！(cm)"
tei = gets.to_f

puts "高さを入力してください！(cm)"
hei = gets.to_f

if tei <= 0 || hei <= 0
  puts "底辺か高さが0cm以下の値が設定されています！"
  puts "正しい値を入力してください！！"
else
  ans = (tei * hei) / 2
  puts "底辺が" + tei.to_s + "cm " + "高さが" + hei.to_s + "cmの三角形の面積は"
  puts ans.to_s + "平方センチメートルになります"
end
