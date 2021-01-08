class Raindropfactor
    def self.convert(num)
        p num
		dup = num
		a = []
		while num > 1
			for i in (2..num)
				if num%i == 0
					num = num / i
					a << i
					break
				end
			end
		end
		res= ""
		res << 'Pling' if a.include?(3)
        res << 'Plang' if a.include?(5)
		res << 'Plong' if a.include?(7)
		res = dup.to_s if (!a.include?(3) && !a.include?(5) && !a.include?(7))
		return res		
	end
end