require 'Rspec'
require_relative 'hotel'

describe 'Hotel' do

  context 'Given a correct input' do
    let(:hotel) { Hotel.new }

    it 'Returns the cheapest hotel when one date is informed' do
      hotel_name = hotel.search_cheapest('regular', '16-Mar-2017')
      expect(hotel_name).to eq('Lakewood')
    end

  end
end
