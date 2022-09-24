# File: lib/diary.rb

class DiaryUnit
    def initialize(contents)
      @contents = contents
      # contents is a string
    end
  
    def read
       return @contents
      # Returns the contents of the diary
    end
  end