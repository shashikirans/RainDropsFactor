class Raindropfactor
	VERSION = 1
	def self.convert(num)
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
		res = dup.to_s if (!a.include?(3) && !a.include?(5))
		return res		
	end
end