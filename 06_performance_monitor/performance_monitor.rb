def measure(n = 1)
	elapsed_time = 0
	n.times do 
	start_time = Time.now
	yield	
	end_time = Time.now
	elapsed_time += end_time - start_time
end
	elapsed_time/n
end




