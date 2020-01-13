def weekday(wday)
  weekdays = ["日", "月", "火", "水", "木", "金", "土"]
  return weekdays[wday]
end

def show
  puts "日記の中身を確認しますか？ はい = 0 / いいえ = 1"
  select = gets.to_i
  case select
    when 0
      puts ""
      file = File.open("pra_32_file.txt", "r") #pra_32_file.txt：ファイル名 / "r"：読み込みを行う
      puts file.read #ファイルの中身を読み込んで表示
      file.close #ファイルを閉じる
    when 1
      puts "日記の登録が完了しました！"
  end
end

require "date" #DateとDateTimeクラスを使えるようにする
date = DateTime.now
outdate = "#{date.year}/#{date.month}/#{date.day} " + weekday(date.wday).to_s + "曜日"

puts "一言日記"
print "日記の内容を入力："
detail = gets.to_s.chomp
if detail.empty?
  puts "入力されていないので終了します"
else
  file = File.open("pra_32_file.txt", "a") #pra_32_file.txt：ファイル名 / "a"：末尾に追記を行う
  file.puts("\n", outdate, detail) #追記するデータ
  file.close #ファイルを閉じる
  show
end
