class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

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
    list = []
    @@genres.each do |genre|
      list << genre unless list.include?(genre)
    end
    list
  end

  def self.artists
    list = []
    @@artists.each do |artist|
      list << artist unless list.include?(artist)
  end

end
