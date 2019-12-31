class Login
  attr_accessor :name #属性アクセサの作成
  def initialize(name) #initializeメソッドの定義
    @name = name
    puts "\nこんにちは\"" + @name + "\"さん！"

    require "date" #DateとDateTimeクラスを使えるようにする
    today = Date.today #今日の日付を変数に代入
    time = DateTime.now #現在の時間を変数に代入
    puts "今日は#{today.year}年#{today.month}月#{today.day}日の#{time.hour}時#{time.minute}分#{time.second}秒です！！"
  end
end

puts "ログインのために名前とパスワードを登録してください"
print "名前："
name1 = gets.to_s
print "パスワード："
pass1 = gets.to_s

name1 = name1.delete("\n") #入力後には"\n"が入っているので削除して変数に入れ直す
pass1 = pass1.delete("\n") #入力後には"\n"が入っているので削除して変数に入れ直す
user = [ { :name => name1, :pass => pass1 } ] #情報を追加する

puts "\nログインします 名前とパスワードを入力してください"
print "名前："
name2 = gets.to_s
print "パスワード："
pass2 = gets.to_s

name2 = name2.delete("\n") #入力後には"\n"が入っているので削除して変数に入れ直す
pass2 = pass2.delete("\n") #入力後には"\n"が入っているので削除して変数に入れ直す

if (user[0][:name] == name2) && (user[0][:pass] == pass2)
  data = Login.new(user[0][:name])
else
  puts "ログイン情報に間違いがあります！"
end
