# File: lib/secret_diary.rb

class SecretDiary
    def initialize(diary) # diary is an instance of Diary
      # ...
      @diary = diary
      @lock = 'lock'
    end
  
    def read
      fail 'Go away!' if @lock == 'lock'
      if @lock == 'unlock'
        return @diary.read
      end
      # Raises the error "Go away!" if the diary is locked
      # Returns the diary's contents if the diary is unlocked
      # The diary starts off locked
    end
  
    def lock
      @lock = 'lock'
      # Locks the diary
      # Returns nothing
    end
  
    def unlock
      @lock = 'unlock'
      # Unlocks the diary
      # Returns nothing
    end
  end