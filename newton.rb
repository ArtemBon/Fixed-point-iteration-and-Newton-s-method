def f x
	return x*x*x - 4*x*x - 7*x + 13.0
end

def df x
	return 3*x*x - 8*x - 7.0
end

eps = 1e-4
xprev = 4.5
xcur = xprev - f(xprev) / df(xprev)
count = 1


while (xcur-xprev).abs > eps
	xprev = xcur
	xcur = xprev - f(xprev) / df(xprev)
	count += 1
end

puts count
puts xcur
