class Song
    attr_accessor :artist, :name
    @@all = []
   
    def initialize(name)
        @name = name
        @@all << self
    end

    def name
        @name
    end

    def self.all 
        @@all
    end

    def artist_name
        if self.artist != nil
            self.artist.name 
        else
            nil
        end
    end
end