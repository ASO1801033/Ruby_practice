puts "色々な繰り返し文"
puts "① timesメソッド"
5.times do |no| #0から初めて5回分処理を実行する
  puts (no + 1).to_s + "回目でごわす"
end

puts "\n② for文"
for cnt in 1..5 #開始値から終了値まで処理を実行する(値は開始値からスタートする)
  puts cnt.to_s + "回目だわん"
end

puts "\n③ until文"
cnt = 1
until cnt > 5 #条件を満たすまで(until)処理を実行する
  puts cnt.to_s + "回目だにゃー"
  cnt += 1
end

puts "\n④ loopメソッド"
cnt = 1
loop do
  break if cnt > 5 #loopメソッドは無限に処理を繰り返すためbreak ifで処理を抜ける条件をかく
  puts cnt.to_s + "回目であります！"
  cnt += 1
end
