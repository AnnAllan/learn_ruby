def measure(x=1)
	benchmarks = []
	x.times do
		before = Time.now
		yield
		benchmarks.push(Time.now - before)
	end
	benchmarks.inject { |sum, y| sum + y } / x

end
