require 'catfacts'

RSpec.describe CatFacts do
    context 'testing provide method' do
        it 'adds random string to return statement' do
            fake = double :fake
            expect(fake).to receive(:get).with(URI("https://catfact.ninja/fact")).and_return('{"fact":"The claws on the cat\u2019s back paws aren\u2019t as sharp as the claws on the front paws because the claws in the back don\u2019t retract and, consequently, become worn.","length":155}')
            cat = CatFacts.new(fake)
            expect(cat.provide).to eq "Cat fact: #{"The claws on the cat\u2019s back paws aren\u2019t as sharp as the claws on the front paws because the claws in the back don\u2019t retract and, consequently, become worn."}"
           
        end
    end
end