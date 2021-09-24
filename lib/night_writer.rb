class NightWriter
  def message_output
    file = File.open("message.txt").read
    puts file
  end
end
NightWriter.new.message_output
