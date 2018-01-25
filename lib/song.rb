class Song
  attr_accessor :name, :artist, :genre

  @@count=0
  @@artists=[]
  @@genres=[]
  @@genre_count=Hash.new { |hash, key| hash[key] =0 }

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count+=1
    @@artists.push(@artist)
    @@genres.push(@genre)

    @@genre_count
  end



end
