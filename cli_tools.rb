# class NightWriter
#
#   def print
#     file = File.open("message.txt").read
#     puts file
#   end
#
#   def create_new_file
#     File.new("message.txt", "a+")
#   end
#
#   def rename_file
#     File.rename("message.txt", "message_two.txt")
#   end
#
#   def read_and_write(message)
#     message = "this is a newer message\n"
#     File.open("message.txt", "a+") do |file|
#       file.write(message)
#     end
#   end
# end
# NightWriter.new.print
# NightWriter.new.create_new_file
# NightWriter.new.rename_file
# NightWriter.new.read_and_write("message.txt")
