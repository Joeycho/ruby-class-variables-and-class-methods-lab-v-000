class Song
  attr_accessor :name, :artist, :genre

  @@count=0
  @@artists=[]
  @@genres=[]
  @@genre_count={}

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    self.genres.each {|x| @@genre_count[x]+=1}
    @@genre_count
  end

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count+=1
    @@artists.push(@artist)
    @@genres.push(@genre)

  end



end
