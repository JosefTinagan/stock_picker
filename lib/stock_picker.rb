class StockPicker
	def stock_picker(arr)
		x = 0
		array_of_results = []
		
		while x < arr.length
			y = x
			while y < arr.length
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

	end
end

sp = StockPicker.new
stocks = [17,3,6,9,15,8,6,15,10]
buy,sell = sp.stock_picker(stocks)
puts buy.to_s + " " + sell.to_s
