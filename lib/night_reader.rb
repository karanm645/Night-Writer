require_relative 'convert_to_english'
class NightReader
  attr_reader :input_file,
              :output_file

  def initialize()
    @input_file = ARGV[0]
    @output_file = ARGV[1]
    @cte = ConvertToEnglish.new
    # @braille_hash = Library.new.braille_hash
  end

  def read
    File.open(input_file).read
  end

  def convert_message
    @cte.convert(read)
  end

  def braille_read_and_write
    message = convert_message
    File.open(output_file, "w") do |file|
      file.write(message)
    end
    puts "Created #{output_file} containing #{input_file.size} characters"
  end
end

NightReader.new.braille_read_and_write