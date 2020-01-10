require "date" #DateとDateTimeクラスを使えるようにする
date = DateTime.now
puts date

puts "生まれた日から今日までの日数計算 \\('O' \\)"
puts "生まれた日を入力してください"
print "西暦："
Byear = gets.to_i
print "月："
Bmonth = gets.to_i
print "日："
Bday = gets.to_i

Bdate = Time.gm(Byear, Bmonth, Bday) #生年月日のTimeオブジェクトを返す
diff = Time.now - Bdate #今日までの経過時間を計算
day_seconds = 60 * 60 * 24
days = diff / day_seconds #経過時間を1日の秒数で割って日数を計算

puts "あなたが生まれた日：" + (Bdate.strftime("%Y/%m/%d (%a)")).to_s

if days.round < 0
  puts "今日(#{(Date.today).strftime("%Y/%m/%d")})よりも後の日付が入力されました！！"
elsif days.round == 0
  puts "まだ生まれて1日も経っていません！"
else
  puts "あなたが生まれてから#{ days.round }日が経ちました！" #四捨五入する
end
