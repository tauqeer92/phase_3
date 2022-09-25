require 'string_repeater'

RSpec.describe StringRepeater do
    it 'test' do
        kernel = double :kernel
        expect(kernel).to receive(:puts).with('Hello. I will repeat a string many times.').ordered
        expect(kernel).to receive(:puts).with('Please enter a string').ordered
        expect(kernel).to receive(:gets).and_return('TWIX').ordered
        expect(kernel).to receive(:puts).with('Please enter a number of repeats').ordered
        expect(kernel).to receive(:gets).and_return('10').ordered
        expect(kernel).to receive(:puts).with('Here is your result:').ordered
        expect(kernel).to receive(:puts).with('TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX').ordered
    
        string_repeater = StringRepeater.new(kernel)
        string_repeater.run
    
    end
end 

