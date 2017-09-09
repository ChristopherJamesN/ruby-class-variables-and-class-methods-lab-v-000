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
    @@genres.each_with_index do |i,index|
      if @@genres[index+1] == i
        @@genres.remove(index)
      end
    end
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
