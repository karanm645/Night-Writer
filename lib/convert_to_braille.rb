class ConvertToBraille

  def initialize
    @lb = Library.new
  end

  def convert(input_file)
    array = []
    split_string(input_file).find_all do |character|
      if character != '\n'
        array << change(character)
      end
    end
    x = array.compact.transpose
    x.map { | row | row.join(' ')}.join("\n")
      x.map do |row|
        rj = row.join(' ')

      end.join("\n")
  end

  def split_string(input_file)
    input_file.chars
  end

  def change(letter)
    @lb.find_value(letter)
  end
end
  # def convert_to_english(input_file)
  #   array = []
  #   input_file
  #   require "pry"; binding.pry
  # end
  # def self.check_for_less_than_eighty_characters(rj)
  #
  #   if rj.size > 80
  #
  #   end
  #   #braille.txt (output/ARGV[1], check if character count > 80 \n -- keep printing)
  #   # else character.size <= 80 then return converted row
  # end

# if rj.size > 80
#    x << ["a", "b", "c"]
#    rj[1..70].slice(80..-1)









