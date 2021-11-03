class Song
    @@count = 0
    @@genres = []
    @@artists= []
    attr_accessor :name, :artist, :genre
    def initialize(name, artist, genre) 
        @name = name
        @@count += 1
        @artist = artist
        @@artists << @artist
        @genre = genre
        @@genres << @genre
    end 
    
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
        @@genres.tally
    end
    
    def self.artist_count
        @@artists.tally
    end

end
    

        