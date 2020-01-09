def outputchomp(word)
  #chompメソッドは文字列の末尾の改行文字を取り除いた新しい文字列を返す、改行文字は"\n"、"\r\n"、"\r"のどれでも取り除く
  print "\n入力時の文字列："
  p word
  print "chompメソッド実行結果："
  p (word.chomp).to_s
  print "chompメソッド実行後の文字列："
  p word
end

def outputchomp!(word)
  #chomp!メソッドは文字列の末尾の改行文字を取り除き、レシーバ自身を変更するメソッド(破壊的メソッド)
  #戻り値は、末尾に改行文字があったときはレシーバ自身、なかったときはnil
  print "\n入力時の文字列："
  p word
  print "chomp!メソッド実行結果："
  p (word.chomp!).to_s
  print "chomp!メソッド実行後の文字列："
  p word
end

puts "chomp/chomp!メソッドの練習\\('O' \\)"

print "文字列を入力しましょう → "
word = gets.to_s

outputchomp(word) #メソッドの実行
outputchomp!(word) #メソッドの実行
