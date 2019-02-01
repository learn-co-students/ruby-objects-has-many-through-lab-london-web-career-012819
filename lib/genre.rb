class Genre

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      if song.genre.name == @name
        song
      end
    end
  end

  def artists
    arr = []
    songs.select do |song|
      arr << song.artist
    end
    arr
  end

end
