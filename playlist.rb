class Song 

attr_reader :track

  def initialize(track, artist) 
    @track = track
    @artist = artist
    puts "Loading #{track} by #{artist}."
  end
  
  def play 
    puts "Now playing #{track}."
  end
  
end

class Playlist
  
attr_reader :track

  def initialize(*track) 
    @track = track
    @list = []
    track.each {|i| @list << i }
    puts "Loading new playlist."
  end  
  
  def add(*track) 
    track.each {|i| @list << i }
    puts "Adding new music to your playlist."
  end

  def num_of_tracks
    return @list.length
  end
  
  def remove(*track) 
    track.each {|i| @list.delete i }
    puts "Removing music from your playlist."    
  end
  
  def play_all 
    puts "Now playing:" 
    @list.each {|i| puts "- " + i.track } 
  end
  
  def display 
    puts "The playlist contains:" 
    @list.each {|i| puts "- " + i.track } 
  end 
  
  def includes?(track)
    if @list.include?(track)
        return true
    else
        return false
    end
  end

  #def shuffle
  #  puts "Random song: "
  #  puts @list.shuffle.first
  #end

end

# DRIVER CODE - ALL OF THIS RUNS PROPERLY!!!!

one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace") 
going_under = Song.new("Going Under", "Evanescence")
 
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
 
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display

#my_playlist.shuffle

# OUTSTANDING QUESTIONS

# 1) Why couldn't I get the correct song name to show up via #{track} within the
# print statements in the add and remove methods in Playlist? I was able to
# get this to work for Song. I won't get a shuffle method to work until I figure
# this out.