require 'time_error'
require 'date'

RSpec.describe TimeError do
    context 'testing time' do
        it 'returns the difference between remote clock and local clock' do
            fake_requester = double :requester
            allow(fake_requester).to receive(:get).with(URI("https://worldtimeapi.org/api/ip")).and_return('{"abbreviation":"BST","client_ip":"2a00:23c7:5da7:7e01:b0bd:71de:4fa8:46fb","datetime":"2022-09-25T15:28:32.331171+01:00","day_of_week":0,"day_of_year":268,"dst":true,"dst_from":"2022-03-27T01:00:00+00:00","dst_offset":3600,"dst_until":"2022-10-30T01:00:00+00:00","raw_offset":0,"timezone":"Europe/London","unixtime":1664116112,"utc_datetime":"2022-09-25T14:28:32.331171+00:00","utc_offset":"+01:00","week_number":38}')
            time = Time.new(2022, 1, 1, 0, 0, 0)
            time_error = TimeError.new(fake_requester)
            expect(time_error.error(time)).to eq 23120912.331171
        end
    end
end