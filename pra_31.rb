puts "タスク管理表"

while true
  print("\nタスクを入力してください\n")
  print("終わる時は end を入力してください\n")
  task = gets.chomp
  if task == "end"
    break
  end

  file = File.open("pra_31_file.txt", "a") #pra_31_file.txt：ファイル名 / "a"：追記を行う
  file.puts(task) #追記するデータ
  file.close #ファイルを閉じる
end

puts ""

no = 1
File.open("pra_31_file.txt", "r"){|f|
    f.each_line{|line|
      print "タスク"
      printf("%02d", no.to_s)
      puts "：" + line
      no += 1
    }
}
