#チェリー本をみながらの練習
#nilについて(nilも偽として扱われる)
text1 = "Hello!!!"
text2 = "Hello!!!"

if text1 == nil
  puts "変数：text1に文字列は入っていません"
else
  puts "変数：text1に文字列は入っています"
end

if text2
  puts "変数：text2に文字列は入っています"
else
  puts "変数：text2に文字列は入っていません"
end

#上記のif文の意味は同じ、nilも偽として扱われるため text2 == nil の式と同じになる
