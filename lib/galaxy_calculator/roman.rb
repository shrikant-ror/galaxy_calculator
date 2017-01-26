module GalaxyCalculator
  class Roman

  	# Few conclusions from the problem statement
		# 'I' can be subtracted from 'V' and 'X' only. 
		# 'X' can be subtracted from 'L' and 'C' only.
		# 'C' can be subtracted from 'D' and 'M' only.
		# 'V', 'L', and 'D' can never be subtracted.
		# ANd only one small-value symbol may be subtracted from any large-value symbol.
  	# So Constructed patterns from High to Low
    ROMAN_HASH_MAP = {
      'M' => 1000, 'CM' => 900, 'D' => 500, 'CD' => 400, 'C' => 100, 'XC' => 90,
      'L' => 50, 'XL' => 40, 'X' => 10, 'IX' => 9, 'V' => 5, 'IV' => 4, 'I' => 1
    }

    # Convert roman unit into roman numeral using ROMAN_LITERALS hash
    def self.roman_units_to_numeral(roman_unit: required)
      total = 0
      ROMAN_HASH_MAP.each do |key, value|
        while roman_unit.index(key) == 0
          total += value
          roman_unit.slice!(key)
        end
      end
      total
    end

  end
end
