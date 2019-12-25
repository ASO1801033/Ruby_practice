def tax(cart) #消費税を上乗せして合計金額を計算するメソッド
  return (cart * 1.08).to_i #returnで計算結果を返す
end

puts "この商品の中からどの商品をいくつ買いますか？(商品を3種類選んで下さい)"
proname = ["りんご(1個)", "いちご(1パック)", "まぐろ(300g)", "チュール(3本)", "どら焼き(1個)", "トマト(1個)", "たまねぎ(1個)", "フォアグラ(100g)"]
proprice = [100, 150, 700, 250, 80, 100, 90, 10000]
besym = [] #商品名のカッコ前までの文字数を格納する配列

(0..proname.length - 1).each do |no|
  puts "[" + no.to_s + "]" + proname[no] + "：" + proprice[no].to_s + "円"
  besym.push(proname[no.to_i].rindex("(") - 1) #配列名.push(値)
  #↑rindexメソッドを使って商品名のカッコ前までの文字数を検索(文字列は0から数えるのため検索結果に-1をする)
  #rindexメソッドの使い方：rindex(pattern[, pos])
end

puts "\n買うものを選びましょう！(番号を入力してね)"
cnt = 1 #何種類目まで選んでいるかを管理する変数
cart = 0 #選んだ商品の単価 * 数量を足していく変数
while cnt <= 3
  print cnt.to_s + "種類目："
  prono = gets.to_i

  unless prono < 0 || prono > proname.length - 1 #unless文は条件式が偽の時にTrueになる
    puts "\"" + proname[prono].slice(0..besym[prono]).to_s + "\"をいくつ買いますか？(数量を入力してね)"
    #↑sliceメソッドを使って商品名のカッコ前までの文字列のみ表示させる(商品名のカッコ前までの文字数はbesym[prono]に格納されている)
    #rangeの場合の書式は(num1..num2)という形になる
    print cnt.to_s + "種類目の数量："
    prokazu = gets.to_i
    puts ""
    cnt += 1
    cart += proprice[prono] * prokazu #選んだ商品の単価 * 数量
  else
    break
  end
end

puts "合計は" + tax(cart).to_s + "円になります！"#メソッドの呼び出し・実行
puts "まいどあり！！"
