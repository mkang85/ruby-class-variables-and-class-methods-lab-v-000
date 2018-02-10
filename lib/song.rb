class Song
  attr_accessor :name, :artist, :genre
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  @@count = 0
  @@artists = []
  @@genres = []

  def self.count
    return @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end


  def self.genre_count
    genres = {}
    @@genres.each do |key|
      if genres[key]
        genres[key] += 1
      else
        genres[key] == 1
      end
    end
    return genres
  end

end
