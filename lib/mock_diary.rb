class Diary

    def initialize
      @entries = []
    end
    
    def add(entry)
      @entries << entry
    end
    
    def entries
      return @entries
    end
    
    def count_words
      return @entries.map do |entries|
        entries.count_words
      end.sum
    end
end