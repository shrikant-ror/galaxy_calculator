require 'spec_helper'

describe GalaxyCalculator::Metal do

  # {'glob'=>'I', 'prok'=>'V', 'pish'=>'X', 'tegj'=>'L'}
  before do |f|
    GalaxyCalculator::Galaxy.set_galaxy_units(unit: 'glob', value: 'I')
    GalaxyCalculator::Galaxy.set_galaxy_units(unit: 'prok', value: 'V')
    GalaxyCalculator::Galaxy.set_galaxy_units(unit: 'pish', value: 'X')
    GalaxyCalculator::Galaxy.set_galaxy_units(unit: 'tegj', value: 'L')
  end

  describe '.set_metal_values' do
    it 'returns expected result' do
      GalaxyCalculator::Metal.set_metal_values(galaxy_units: 'glob glob', metal: 'Silver', credits: 34)
      expect(GalaxyCalculator::Metal.get_metal_values(metal: 'Silver')).to eq 17
    end
  end

  describe '.calculate_metal_values' do
    it 'returns expected result' do
      GalaxyCalculator::Metal.set_metal_values(galaxy_units: 'glob glob', metal: 'Silver', credits: 34)
      expect(GalaxyCalculator::Metal.calculate_metal_values(galaxy_units: 'glob glob', metal: 'Silver')).to eq 34
    end
  end
end
