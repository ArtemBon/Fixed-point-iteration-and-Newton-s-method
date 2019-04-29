def Phi x
	return (x*x*x - 4*x*x + 13) / 7.0
end



eps = 1e-4
xprev = 4.5
xcur = Phi xprev
count = 1


while (xcur-xprev).abs > eps
	xprev = xcur
	xcur = Phi xcur
	count += 1
end

puts count
puts xcur
