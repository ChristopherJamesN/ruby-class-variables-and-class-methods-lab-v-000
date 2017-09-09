class Song
  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre

  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres<<genre
    @@artists<<artist
  end

  def self.count
    @@count
  end

  def self.genres
    dup=@@genres.select{|element| @@genres.count(element) > 1 }
    @@genres
  end

  def self.artists
    @@artists
  end

  def self.genre_count
  end

  def self.artist_count
  end

end
