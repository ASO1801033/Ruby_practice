puts "***************************************************************"
puts "sort/sort!メソッドの実行結果"
a = [2, 3, 1, 4, 5, 1]
puts "元の配列：" + a.to_s
puts "---------------------------------------------------------------"
puts "sortメソッド(昇順)：" + (a.sort).to_s #array.sort
puts "sort.reverseメソッド(降順)：" + (a.sort.reverse).to_s #array.sort.reverse

puts "---------------------------------------------------------------"
puts "ブロックを渡したsortメソッド(昇順)：" + (a.sort { |a, b| a <=> b }).to_s #array.sort { |a, b| block }
puts "ブロックを渡したsortメソッド(降順)：" + (a.sort { |a, b| b <=> a }).to_s #array.sort { |a, b| block }

puts "---------------------------------------------------------------"
puts "sort!メソッド(昇順)：" + (a.sort!).to_s #array.sort!
puts "sort!メソッド(降順)：" + (a.sort!.reverse!).to_s #array.sort!.reverse!

a = [2, 3, 1, 4, 5, 1] #配列の初期化やりなおし

puts "---------------------------------------------------------------"
puts "ブロックを渡したsort!メソッド(昇順)：" + (a.sort! { |a, b| a <=> b }).to_s #array.sort! { |a, b| block }
puts "ブロックを渡したsort!メソッド(降順)：" + (a.sort! { |a, b| b <=> a }).to_s #array.sort! { |a, b| block }
puts "***************************************************************"
