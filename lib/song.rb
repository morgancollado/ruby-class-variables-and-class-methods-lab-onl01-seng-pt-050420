class Song
  @@count = 0 
  @@genres = []
  @@artists = []
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1 
    @@genres << genre
    @@artists << artist
  end 
  
  def self.count
    @@count
  end 
 
 def self.genres
   @@genres.uniq
 end 
 
 def self.artists
   @@artists.uniq
 end 
 
 def self.genre_count
   new_hash = {} 
   @@genres.collect do |genre|
     new_hash[genre] = @@genres.count(genre)
   end 
   new_hash
 end 

def self.artist_count
  artist_hash = {}
  @@artist.collect do |artist|
    artist_hash[artist] = @@artist.count(artist)
  end 
  artist_hash
end 


end 