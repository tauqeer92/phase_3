require 'music_library'

RSpec.describe 'Music Library' do
    context 'testing add method' do
        it 'input track, expect all method to return list tracks' do
            music = MusicLibrary.new
            fake_track = double :fake_track
            fake_track1 = double :fake_track
            music.add(fake_track)
            music.add(fake_track1)
            expect(music.all).to eq [fake_track, fake_track1]
        end
    end
    context 'testing search method' do
        it 'input tracks, search for tracks' do
            music = MusicLibrary.new
            fake_track = double :fake_track, matches?: true
            fake_track1 = double :fake_track, matches?: false
            music.add(fake_track)
            music.add(fake_track1)
            expect(music.search('Hello')).to eq fake_track
        end
    end
end
