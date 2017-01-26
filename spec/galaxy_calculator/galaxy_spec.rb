require 'spec_helper'

describe GalaxyCalculator::Galaxy do
  describe '.set_galaxy_units' do

    it 'returns expected result' do
      unit = GalaxyCalculator::Galaxy.set_galaxy_units(unit: 'tegj', value: 'L')
      expect(GalaxyCalculator::Galaxy.get_galaxy_units(unit: 'tegj')).to eq 'L'
    end
  end

  describe '.galaxy_units_to_roman_units' do
    let(:set_galaxy_units) do
      GalaxyCalculator::Galaxy.set_galaxy_units(unit: 'glob', value: 'I')
      GalaxyCalculator::Galaxy.set_galaxy_units(unit: 'glob', value: 'I')
    end

    it 'returns expected result' do
      set_galaxy_units
      expect(GalaxyCalculator::Galaxy.galaxy_units_to_roman_units(galaxy_units: 'glob glob')).to eq 2
    end
  end
end
