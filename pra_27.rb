def outputchop(word)
  #chopメソッドは、文字列の末尾から1文字を取り除いた新しい文字列を返す、
  #末尾が"\r\n"で終わっている場合は"\r\n"の2文字を"\n"で終わっている場合は"\n"の1文字を取り除く
  print "\n入力時の文字列："
  p word
  print "chopメソッド実行結果："
  p (word.chop).to_s
  print "chopメソッド実行後の文字列："
  p word
end

def outputchop!(word)
  #chop!メソッドはレシーバの文字列の末尾の1文字を取り除き、レシーバ自身を変更するメソッド(破壊的メソッド)
  #戻り値は、末尾に改行文字があったときはレシーバ自身、なかったときはnil
  print "\n入力時の文字列："
  p word
  print "chop!メソッド実行結果："
  p (word.chop!).to_s
  print "chop!メソッド実行後の文字列："
  p word
  puts "------------------------------------"
end

def boxoutputchop(text)
  print "② 変数textに入っている値：" + text.to_s + "\n\n"
  print "実行前の文字列："
  p text
  print "chopメソッド実行結果："
  p (text.chop).to_s
  print "chopメソッド実行後の文字列："
  p text
end

def boxoutputchop!(text)
  print "\n実行前の文字列："
  p text
  print "chop!メソッド実行結果："
  p (text.chop!).to_s
  print "chop!メソッド実行後の文字列："
  p text
end

puts "chop/chop!メソッドの練習です！\\('O' \\)"

print "① 文字列を入力しましょう → "
word = gets.to_s

outputchop(word) #メソッドの実行
outputchop!(word) #メソッドの実行

text = word
boxoutputchop(text) #メソッドの実行
boxoutputchop!(text) #メソッドの実行
