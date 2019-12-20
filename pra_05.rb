puts "★ 今日のToDoリストはこちら！"
todo = ["課題をする", "テスト勉強をする", "課題を提出する", "ゲームをする", "寝る"]
puts todo

puts ""
puts "▶︎ \"YouTubeをみる\"を末尾に追加します！"
todo.push("YouTubeをみる") #配列名.push(値)
puts "★ 追加をしたToDoリストはこちら！"
puts todo

puts ""
puts "▶︎ 先頭の要素を無くします！"
todo.shift #配列名.shift
puts "★ 先頭の要素を無くしたToDoリストはこちら！"
puts todo

puts ""
puts "▶︎ 末尾の要素を無くします！"
todo.pop #配列名.pop
puts "★ 末尾の要素を無くしたToDoリストはこちら！"
puts todo

puts ""
puts "▶︎ 課題提出は面倒なので\"課題を提出する\"を削除します！"
todo.delete("課題を提出する") #配列名.delete(値)
puts "★ 削除をしたToDoリストはこちら！"
puts todo
