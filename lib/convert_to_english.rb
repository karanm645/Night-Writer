class ConvertToEnglish
  attr_reader :array

  def initialize
    # @lb = Library.new
    @array = []
  end

  def convert(string)
    string.chars.each do |str|
      if str != '\n'
        array << change(letter)
    require "pry"; binding.pry
      end
    end
  end

  def change(letter)
    @lb.find_letter_value(letter)
    require "pry"; binding.pry
  end
end