require_relative('venue')
require_relative('room')
require_relative('refreshment')
require_relative('guest')
require_relative('song')


class Viewer

  def start
    puts "Welcome to CodeClan karaoke!"
    puts "What is you name?"
    name = gets.chomp
    puts "Well, #{name} are you ready to sing your heart out?"
    answer = gets.chomp.downcase
    if answer == "yes"
      puts "Right then lets get you a room. Please see the rooms we have available;"
      @venue.display_rooms
      end
    elsif answer == "no"
      "What in the name of the wee man are you doing in a karaoke club then?!?!?! GET OUT."
    else
      "That was a yes or no question, don't know what you're talking about."
    end
  end
end

viewer = Viewer.new()
viewer.start()
