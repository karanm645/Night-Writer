
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
    x = array.compact.transpose
    x.map { | row | row.join(' ')}.join("\n")
    # first_row = []
  end

  def self.first_row(convert)
    input_file
  end

  def self.change(letter)
    Library.find_value(letter)
  end
end
