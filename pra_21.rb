puts "メタ文字を使った正規表現クイズ！"
puts "6問のうち半分の3問以上正解したら合格です！！\n"
cor = 0

(1..6).each do |cnt|
  case cnt
    when 1
      puts "\n第" + cnt.to_s + "問"
      str = "Apple"
      print "比較する文字列：" + str
      print "\n比較条件：Apple|apple\n"
      print "マッチする場合は0を、マッチしない場合は1を入力して下さい → "
      select = gets.to_i

      if str =~ /Apple|apple/ #｜(パイプ)を使う時にスペースを入れない
        ans = 0 #こっちが該当する(マッチする)
      else
        ans = 1
      end

      if ans == select
        puts "正解です(^ω^)\n"
        cor += 1
      else
        puts "不正解です('^')\n"
      end
    when 2
      puts "\n第" + cnt.to_s + "問"
      str = "aApple"
      print "比較する文字列：" + str
      print "\n比較条件：[aA]pple\n"
      print "マッチする場合は0を、マッチしない場合は1を入力して下さい → "
      select = gets.to_i

      if str =~ /[aA]pple/
        ans = 0 #こっちが該当する(マッチする)
      else
        ans = 1
      end
      if ans == select
        puts "正解です(^ω^)\n"
        cor += 1
      else
        puts "不正解です('^')\n"
      end
    when 3
      puts "\n第" + cnt.to_s + "問"
      str = "[aA]pple"
      print "比較する文字列：" + str
      print "\n比較条件：[aA]pple\n"
      print "マッチする場合は0を、マッチしない場合は1を入力して下さい → "
      select = gets.to_i

      if str =~ /[aA]pple/
        ans = 0
      else
        ans = 1 #こっちが該当する(マッチしない)
      end

      if ans == select
        puts "正解です(^ω^)\n"
        cor += 1
      else
        puts "不正解です('^')\n"
      end
    when 4
      puts "\n第" + cnt.to_s + "問"
      str = "03"
      print "比較する文字列：" + str
      print "\n比較条件：[0-9]{3}\n"
      print "マッチする場合は0を、マッチしない場合は1を入力して下さい → "
      select = gets.to_i

      if str =~ /[0-9]{3}/
        ans = 0
      else
        ans = 1 #こっちが該当する(マッチしない)
      end

      if ans == select
        puts "正解です(^ω^)\n"
        cor += 1
      else
        puts "不正解です('^')\n"
      end
    when 5
      puts "\n第" + cnt.to_s + "問"
      str = "12345"
      print "比較する文字列：" + str
      print "\n比較条件：[1][0-9]{3,4}\n"
      print "マッチする場合は0を、マッチしない場合は1を入力して下さい → "
      select = gets.to_i

      if str =~ /[1][0-9]{3,4}/
        ans = 0 #こっちが該当する(マッチする)
      else
        ans = 1
      end

      if ans == select
        puts "正解です(^ω^)\n"
        cor += 1
      else
        puts "不正解です('^')\n"
      end
    when 6
      puts "\n第" + cnt.to_s + "問"
      str = "000A"
      print "比較する文字列：" + str
      print "\n比較条件：0{3,4}\n"
      print "マッチする場合は0を、マッチしない場合は1を入力して下さい → "
      select = gets.to_i

      if str =~ /0{3,4}/
        ans = 0 #こっちが該当する(マッチする)
      else
        ans = 1
      end

      if ans == select
        puts "正解です(^ω^)\n"
        cor += 1
      else
        puts "不正解です('^')\n"
      end
  end
end

if cor >= 3
  puts "\n正解数が" + cor.to_s + "問で合格です！！"
  puts "ｽﾊﾞﾗｼｲ~ \\('O' \\)"
else
  puts "\n正解数が" + cor.to_s + "問で不合格です、、"
  puts "ｻﾞﾝﾈﾝ... (×_× )"
end
