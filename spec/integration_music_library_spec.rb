require 'music_library'
require 'track'

RSpec.describe 'MusicLibrary' do
    it 'testing all method' do
        music = MusicLibrary.new
        track = Track.new('Hello - World' ,'World - Yes')
        music.add(track)
        expect(music.all).to eq [track]
    end
    it 'testing search method' do
        music = MusicLibrary.new
        track = Track.new('Hello' ,'Yes')
        track1 = Track.new('World' ,'No')
        music.add(track)
        music.add(track1)
        expect(music.search('No')).to eq track1
    end
end