class NightWriter
  attr_reader :input_file,
              :output_file

  def initialize()
    @input_file = ARGV[0]
    @output_file = ARGV[1]
  end

  def read
    file = File.open(input_file).read
  end

  def convert_message
    read
  end

  def read_and_write
    message = convert_message
    File.open(output_file, "w") do |file|
      file.write(message)
    end
    puts "Created #{output_file} containing #{message.size - 1} characters"
  end

end
# NightWriter.new.read
NightWriter.new.read_and_write
