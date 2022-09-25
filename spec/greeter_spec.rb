require 'greeter'

RSpec.describe Greeter do
    it 'asks the user their name and says hello' do
      io = double :io
      expect(io).to receive(:puts).with("What is your name?").ordered
      expect(io).to receive(:gets).and_return('Kay').ordered
      expect(io).to receive(:puts).with('Hello, Kay!').ordered
      greeter = Greeter.new(io)
      greeter.greet 
    end
end