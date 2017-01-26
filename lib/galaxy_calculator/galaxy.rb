module GalaxyCalculator
  class Galaxy
    @galaxy_units ||= {}

    # Store galaxy units into the @galaxy_units
    # EX: {'glob'=>'I', 'prok'=>'V', 'pish'=>'X', 'tegj'=>'L'} 
    def self.set_galaxy_units(unit: required, value: required)
      @galaxy_units[unit] = value
    end

    # Get galaxy unit
    def self.get_galaxy_units(unit: required)
      @galaxy_units[unit]
    end

    # This method performs following steps
    # 1. Convert galaxy unit into roman unit
    # 2. Convert roman unit into roman numeral
    def self.galaxy_units_to_roman_units(galaxy_units: required)
      roman_unit = ''
      galaxy_units.split.each do |unit|
        roman_unit << get_galaxy_units(unit: unit)
      end
      Roman.roman_units_to_numeral(roman_unit: roman_unit)
    end
  end
end
