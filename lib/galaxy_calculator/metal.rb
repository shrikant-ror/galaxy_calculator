module GalaxyCalculator
  class Metal
    @metal_values ||= {}

    # Store metal units into the @galaxy_units
    # EX: {'Silver'=>17.0, 'Gold'=>14450.0, 'Iron'=>195.5}
    def self.set_metal_values(galaxy_units: required, metal: required, credits: required)
      numeral = Galaxy.galaxy_units_to_roman_units(galaxy_units: galaxy_units)
      @metal_values[metal] = credits.to_i / numeral.to_f
    end

    def self.get_metal_values(metal: metal)
      @metal_values[metal]
    end

    # Calculate the metal values
    def self.calculate_metal_values(galaxy_units: required, metal: required)
      (Galaxy.galaxy_units_to_roman_units(galaxy_units: galaxy_units) * get_metal_values(metal: metal)).to_i
    end
  end
end
