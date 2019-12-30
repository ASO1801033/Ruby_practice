class BillRecord
  attr_accessor :price
  def plustax
    return (@price * 0.15).to_i
  end
end

data = BillRecord.new #インスタンス生成

puts "消費税15%分の金額計算マシーン！"
print "税抜き価格を入力してください："
data.price = gets.to_i
puts data.price.to_s + "円の消費税額は" + data.plustax.to_s + "円です！"
puts "税込価格は" + (data.price.to_i + data.plustax.to_i).to_s + "円になります！"
