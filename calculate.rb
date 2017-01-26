$LOAD_PATH.unshift File.expand_path('lib', __dir__)
require 'pry'
require 'galaxy_calculator'

file = (ARGV[0]) ? ARGV[0] : 'input.txt'

GalaxyCalculator.read_file(file)
