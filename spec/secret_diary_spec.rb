require 'secret_diary'

RSpec.describe 'secret diary' do
  context 'testing fail' do
    it 'should fail' do
      fake = double :fake, read: 'Hello'
      secret = SecretDiary.new(fake)
      expect{secret.read}.to raise_error 'Go away!'
    end
end
  context 'testing read method' do
    it 'reads diary' do
      fake = double :fake, read: 'Hello'
      secret = SecretDiary.new(fake)
      secret.unlock
      expect(secret.read).to eq 'Hello'
  end
end

  context 'when its relocked, fails' do
    it 'does not read diary' do
      fake = double :fake, read: 'Hello'
      secret = SecretDiary.new(fake)
      secret.unlock
      secret.lock
      expect{secret.read}.to raise_error 'Go away!'
  end
end
end