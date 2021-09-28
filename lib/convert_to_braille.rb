class ConvertToBraille

  def initialize
    @lb = Library.new
  end

  def convert(input_file)
    #created an empty array to push newly converted braille
    array = []
    #called method split_string(message.txt) and find all characters
    split_string(input_file).each do |character|
      if character != '\n'
        #this converts the letters to braille and pushes it into the array
        array << change(character)
      end
    end
    #i now have removed the nils and transposed to get the top middle and bottom arrays split accordingly
    x = array.compact.transpose
    #to get the format correct, i'm mapping over x and removing quotations
    x.map { | row | row.join(' ')}.join("\n")
      x.map do |row|
        rj = row.join(' ')
        #i'm also breaking the rows off so the values return in different rows
      end.join("\n")
  end

  # my first attempt to break down the above method (single responsibility)
  def split_string(input_file)
    input_file.chars
  end

  def change(letter)
    #this dives into the library and find the braille value of the associated letter
    @lb.find_value(letter)
  end
end

# if rj.size > 80
#    x << ["a", "b", "c"]
#    rj[1..70].slice(80..-1)









