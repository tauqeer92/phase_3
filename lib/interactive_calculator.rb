class InteractiveCalculator
  
  def initialize(terminal)
    @terminal = terminal
  end

  def run
    @terminal.puts 'Hello I will subtract 2 numbers'
    @terminal.puts 'Please enter a number'
    @number_1 = get_number
    @terminal.puts 'Please enter another number'
    @number_2 = get_number #we're entering a string but converting it to a int
    @terminal.puts "Here is your result"
    @terminal.puts "#{@number_1} - #{@number_2} = #{@number_1 - @number_2}"

  end

  def get_number #we're trying to figure out if a number is represented as a string
    # so in the double we want to give a string because gets can only take a string but then it gets converted to an int
    response = @terminal.gets # this is a string
    return response.to_i if response.to_i.to_s == response # this will fail if iven a string
    fail 'You must enter a number' # this will execute if the string is not the same when converted to int then string
                                   # because when jim is converted to int is 0, then converted to string its '0'
  end


end