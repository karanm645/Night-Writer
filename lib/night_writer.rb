require_relative 'library'
require_relative 'convert_to_braille'

class NightWriter
  attr_reader :input_file,
              :output_file

  def initialize()
    #input file is the message.txt
    @input_file = ARGV[0]
    #output file is braille.txt
    @output_file = ARGV[1]
    #ctb instance variable i call from ConvertToBraille class which converts the message.txt file into braille characters
    @ctb = ConvertToBraille.new
    @character_hash = Library.new.char_hash
  end

  def read
    # reads the file "message.txt"
    file = File.open(input_file).read
  end

  def convert_message
    # converts letters into braille
    @ctb.convert(read)
  end

  def read_and_write
    # the message is now the braille code
    message = convert_message
    #here i'm writing the message to the braille.txt file
    File.open(output_file, "w") do |file|
      file.write(message)
    end
    #this is what the user of the terminal would see
    puts "Created #{output_file} containing #{input_file.size} characters"
  end
end
#i'm calling the read_and_write method
NightWriter.new.read_and_write
