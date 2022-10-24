class Song
  attr_accessor :name, :genre, :artist
  @@count = 0
  @@genres = Array.new
  @@artists = Array.new
  @@genre_count = Hash.new
  @@artist_count = Hash.new

  def initialize(name, artist, genre)
    @@count += 1
    @@genres << genre
    @@artists << artist
    @name = name
    @genre = genre
    @artist = artist
  end

  # Returns the total number of songs created
  def self.count
    @@count
  end

  # Returns an array of all genres of exitiing songs
  def self.genres
    @@genres.uniq
  end

  # Returns an array of all artists of exitiing songs
  def self.artists
    @@artists.uniq
  end

  # Returns a hash of all genres of existing songs and the count
  def self.genre_count
    @@genre_count = @@genres.tally
  end

  def self.artist_count
    # Iterates through array of artisits and counts each artist
    @@artists.each do |artist|
      if @@artist_count[artist]
        @@artist_count[artist] += 1
      else
        @@artist_count[artist] = 1
      end
    end
    @@artist_count
  end
end
