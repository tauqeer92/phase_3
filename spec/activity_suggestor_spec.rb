require 'activity_suggestor'

RSpec.describe ActivitySuggester do
    it 'suggests an activity' do
        fake_requester = double :requester
        expect(fake_requester).to receive(:get).with('www.boredapi.com' , '/api/activity').and_return('{
            "activity": "Pray Salah",
            "type": "education",
            "participants": 1,
            "price": 0,
            "link": "",
            "key": "8750692",
            "accessibility": 0.15
          }')
        activity_suggester = ActivitySuggester.new(fake_requester)
        expect(activity_suggester.suggest).to eq 'Why not: Pray Salah'
end
end