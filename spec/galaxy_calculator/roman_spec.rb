require 'spec_helper'

describe GalaxyCalculator::Roman do

  describe '.roman_units_to_numeral' do
    it 'returns expected result' do
      expect(GalaxyCalculator::Roman.roman_units_to_numeral(roman_unit: 'MCMIII')).to eq 1903
    end
  end
end
