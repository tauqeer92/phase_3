class StringRepeater
  
  def initialize(kernel)
    @kernel = kernel
  end

  def run
    @kernel.puts 'Hello. I will repeat a string many times.'
    @kernel.puts "Please enter a string"
    @string = @kernel.gets.chomp
    @kernel.puts 'Please enter a number of repeats'
    @number = @kernel.gets.chomp.to_i
    @kernel.puts "Here is your result:"
    @kernel.puts "#{@string*@number}"
  end

end