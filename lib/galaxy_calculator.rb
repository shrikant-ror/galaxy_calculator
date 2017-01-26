Dir.glob("#{File.dirname(__FILE__)}/galaxy_calculator/*", &method(:require))

module GalaxyCalculator

	# Check each line whether it is assignment line, credit line, question line or calculation line
	# Other wise return error message.
  def self.compute_line(line: line)
    literals = line.split
    if literals.size == 3 && literals[1] === 'is'
      Galaxy.set_galaxy_units(unit: literals[0], value: literals[2])
    elsif literals.last == 'Credits'
      words = line.split(/^([a-z ]+)([A-Z]\w+) is (\d+) Credits$/)
      Metal.set_metal_values(galaxy_units: words[1].chomp, metal: words[2].chomp, credits: words[3].chomp)
    elsif line.include?('how much is') && literals.last == '?'
      words = line.split(/^how much is ((\w+ )+)\?$/)
      res = Galaxy.galaxy_units_to_roman_units(galaxy_units: words[1])
      puts "#{words[1]}is #{res} Credits"
    elsif line.include?('how many') && literals.last == '?'
      words = line.split(/^how many Credits is ([a-z ]+)([A-Z]\w+) \?$/)
      res = Metal.calculate_metal_values(galaxy_units: words[1], metal: words[2])
      puts "#{words[1]} #{words[2]} is #{res} Credits"
    else
      puts 'I have no idea what you are talking about'
    end
  end

  # Read the specified file
  def self.read_file(file)
    File.read(file).each_line { |line| compute_line(line: line) }
  end
end
