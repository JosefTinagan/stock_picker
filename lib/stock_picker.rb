def stock_picker(arr)
	x = 0
	array_of_results = []
	
	while x < arr.length
		y = x
		while y < arr.length
			#puts arr[x].to_s + " " + arr[y].to_s
			if(arr[y] == arr[x])
				y += 1
			else
				temp = arr[y] - arr[x]
				array_of_results.push(temp)
				y += 1
			end
		end	
		x += 1
	end
	
	best_stock = array_of_results.max
	z = 0
	
	while z < arr.length
		v = 0
			while v < arr.length	
				if(arr[v] == arr[z])
					v += 1
				else
					temp = arr[v] - arr[z]
					if (temp == best_stock)
						buy_day, sell_day = z,v
						v = arr.length #exits loop, get the earliest day profit
					end
					v += 1
				end

			end
		z += 1
	end
	return buy_day, sell_day
	#puts best_stock
	#puts "Day to buy: " + buy_day.to_s + ", " + "Day to sell: " + sell_day.to_s
	#puts array_of_results
	#puts buy.to_s + " " + sell.to_s
end

buy,sell = stock_picker([17,3,6,9,15,8,6,15,10])
puts buy.to_s + " " + sell.to_s