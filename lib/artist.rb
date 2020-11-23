class Artist
   attr_accessor :name, :song
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.each {|song| song.artist == self}
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        song.artist = self
    end

    def self.song_count
        Song.all.length
    end
end