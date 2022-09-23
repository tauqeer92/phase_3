class MusicLibrary
    def initialize
      @array = []
    end
  
    def add(track) 
      
      @array << track
      # track is an instance of Track
      # Track gets added to the library
      # Returns nothing
    end
  
    def all
      return @array
      # Returns a list of track objects
    end
    
    def search(keyword) 
      
      @array.each do |track|
        if track.matches?(keyword) == true
            return track 
        end
      end
      # we 
      # keyword is a string
      # Returns a list of tracks that match the keyword
    end
  end