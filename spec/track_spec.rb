require 'track'

RSpec.describe 'track' do
    context 'testing matches method' do
        it 'testing title matching keyword' do
            track = Track.new('Hello', 'World')
            expect(track.matches?('Hello')).to eq true
        end
        it 'testing artist matching keyword' do
            track = Track.new('Hello', 'World')
            expect(track.matches?('World')).to eq true
        end
        it 'testing artist matching keyword' do
            track = Track.new('Hello', 'Matches World')
            expect(track.matches?('Matches')).to eq true
        end
        it 'no matching keyword' do
            track = Track.new('Hello', 'World')
            expect(track.matches?('Hi')).to eq false
        end
    end
end