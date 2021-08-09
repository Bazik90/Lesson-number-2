cart = Hash.new

	sum = 0

loop do

  	print "Введите название товара (или \"стоп\"): "
  
  	name = gets.chomp
  
  break if name == "стоп"
  
  	print "цену: "
  
  	price = gets.chomp.to_f
  
  	print "кол-во: "
  
  	count = gets.chomp.to_f

  	cart[name] = {"price" => price, "count" => count} 
   
  # sum += price * count
  
  # чтобы потренировать доступ к хешам, посчитаем сумму ниже
end 

cart.each {|name, hash| sum += hash["price"] * hash["count"]}

puts cart
puts "Итого: #{sum}" 
