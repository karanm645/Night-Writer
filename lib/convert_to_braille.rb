
class ConvertToBraille

  def initialize

  end

  def self.convert(input_file)
    array = []
    input_file.chars.find_all do |character|
      if character != '\n'
        array << change(character)
      end
    end
    array.compact.flatten
  end

  def self.change(letter)
    Library.find_value(letter)
  end
end
