require 'diary_unit'
RSpec.describe 'diary' do
    context 'testing read method' do
      it 'input hello, expect hello' do
        diary = DiaryUnit.new('Hello')
        expect(diary.read).to eq 'Hello'
    end
end
end