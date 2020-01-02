def sub
  puts "\n★ subメソッド → パターンにマッチした最初の部分を文字列に置換する！" #subメソッド string.sub(pat1tern, rep1lace)

  puts "見本になる文章を入力しましょう"
  print "→ "
  before1 = gets.to_s
  before1 = before1.delete("\n") #入力後には"\n"が入っているので削除して変数に入れ直す

  puts "\n次に置き換える対象文字列と置き換える言葉を入力しましょう"
  print "置き換える対象文字列："
  pat1 = gets.to_s
  pat1 = pat1.delete("\n") #入力後には"\n"が入っているので削除して変数に入れ直す

  print "置き換える言葉："
  rep1 = gets.to_s
  rep1 = rep1.delete("\n") #入力後には"\n"が入っているので削除して変数に入れ直す

  after1 = before1.sub(pat1, rep1)
  puts "置き換え後の文字列；" + after1
end

def gsub
  puts "\n★ gsubメソッド → パターンにマッチした部分全てを文字列に置換する！" #gsubメソッド string.gsub(pat1tern, rep1lace)

  puts "見本になる文章を入力しましょう"
  print "→ "
  before2 = gets.to_s
  before2 = before2.delete("\n") #入力後には"\n"が入っているので削除して変数に入れ直す

  puts "\n次に置き換える対象文字列と置き換える言葉を入力しましょう"
  print "置き換える対象文字列："
  pat2 = gets.to_s
  pat2 = pat2.delete("\n") #入力後には"\n"が入っているので削除して変数に入れ直す

  print "置き換える言葉："
  rep2 = gets.to_s
  rep2 = rep2.delete("\n") #入力後には"\n"が入っているので削除して変数に入れ直す

  after2 = before2.gsub(pat2, rep2)
  puts "置き換え後の文字列；" + after2
end

puts "正規表現を使った文字列操作マシーン！"
puts "パターンが2つありますがどっちから試しますか？ subメソッド＝0 / gsubメソッド＝1"
select = gets.to_i

case select
  when 0
    sub
    puts "\nもう一つのパターンを試しますか？ はい＝0 / いいえ＝1"
    select2 = gets.to_i

    case select2
      when 0
        gsub
      when 1
        puts "終了します！！"
      else
        puts "入力エラーのため終わります、、"
    end

  when 1
    gsub
    puts "\nもう一つのパターンを試しますか？ はい＝0 / いいえ＝1"
    select2 = gets.to_i

    case select2
      when 0
        sub
      when 1
        puts "終了します！！"
      else
        puts "入力エラーのため終わります、、"
    end

  else
    puts "入力エラーのため終わります、、"
end
