require 'secret_diary'
require 'diary_unit'

RSpec.describe 'integration testing' do 
    context 'testing read method' do
        it 'input string' do
            diary = DiaryUnit.new('Hello')
            secret = SecretDiary.new(diary)
            expect {secret.read}.to raise_error 'Go away!'
        end
    end
    context "when it's unlocked" do
        it  'reads the diary contents' do
            diary = DiaryUnit.new('Hello')
            secret = SecretDiary.new(diary)
            secret.unlock
            expect(secret.read).to eq 'Hello'
        end
    end
    context 'when its relocked, fails' do
        it 'does not read diary' do
          diary = DiaryUnit.new('Hello')
          secret = SecretDiary.new(diary)
          secret.unlock
          secret.lock
          expect{secret.read}.to raise_error 'Go away!'
      end
    end

end