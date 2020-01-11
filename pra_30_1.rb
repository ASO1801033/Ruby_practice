#ファイルを扱うためにopenメソッドを使う(第一引数：ファイル名(ファイルのある場所)/第二引数：ファイルオプション)
file = File.open("pra_30_file1.txt", "w") #pra_30_file1.txt：ファイル名 / "w"：書き込みを行う
file.puts("書き込みされたよ！(write)") #新しく書き込むデータ
file.close #ファイルを閉じる

file = File.open("pra_30_file1.txt", "r") #pra_30_file1.txt：ファイル名 / "r"：読み込みを行う
puts "write実行後のpra_30_file1.txtの中身"
puts file.read #ファイルの中身を読み込んで表示
file.close #ファイルを閉じる

puts ""

file = File.open("pra_30_file1.txt", "a") #pra_30_file1.txt：ファイル名 / "a"：末尾に追記を行う
file.puts("追記されたよ！(append)") #追記するデータ
file.close #ファイルを閉じる

file = File.open("pra_30_file1.txt", "r") #pra_30_file1.txt：ファイル名 / "r"：読み込みを行う
puts "append実行後のpra_30_file1.txtの中身"
puts file.read #ファイルの中身を読み込んで表示
file.close #ファイルを閉じる

#初回実行時にファイルは作成される、その後の実行ではファイルへの内容に差分があれば反映される
=begin
ファイルオプションには3つ種類がある(目的によって使いわける)
・ファイルを読み込む(R:read)
・以前のデータを破棄して新規で書き込む(W:write)
・以前のデータの末尾に付け加える(A:append)
★ 3つの後に「＋」をつけるとファイルは読み書き両方で開くことができる
=end
