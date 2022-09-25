require 'interactive_calculator'

RSpec.describe InteractiveCalculator do
    it 'subtracts 2 numbers using terminal' do
        terminal = double :terminal
        expect(terminal).to receive(:puts).with('Hello I will subtract 2 numbers').ordered
        expect(terminal).to receive(:puts).with('Please enter a number').ordered
        expect(terminal).to receive(:gets).and_return('4').ordered
        expect(terminal).to receive(:puts).with('Please enter another number').ordered
        expect(terminal).to receive(:gets).and_return('3').ordered
        expect(terminal).to receive(:puts).with('Here is your result').ordered
        expect(terminal).to receive(:puts).with('4 - 3 = 1').ordered

        interactive_calculator = InteractiveCalculator.new(terminal)
        interactive_calculator.run
    end

    it 'fails if given string' do
        terminal = double :terminal
        expect(terminal).to receive(:puts).with('Hello I will subtract 2 numbers').ordered
        expect(terminal).to receive(:puts).with('Please enter a number').ordered
        expect(terminal).to receive(:gets).and_return('jim').ordered

        interactive_calculator = InteractiveCalculator.new(terminal)
        expect { interactive_calculator.run }.to raise_error 'You must enter a number'
    end

    it 'fails if given string instead of second number' do
        terminal = double :terminal
        expect(terminal).to receive(:puts).with('Hello I will subtract 2 numbers').ordered
        expect(terminal).to receive(:puts).with('Please enter a number').ordered
        expect(terminal).to receive(:gets).and_return('jim').ordered

        interactive_calculator = InteractiveCalculator.new(terminal)
        expect { interactive_calculator.run }.to raise_error 'You must enter a number'
    end
        
end