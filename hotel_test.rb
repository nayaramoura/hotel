require 'Rspec'
require_relative 'hotel'

describe '#hotel' do

  context 'Regular customer' do
    let(:hotel) { Hotel.new }

    it 'Returns the cheapest hotel for one date on weekday' do
      hotel_name = hotel.search_cheapest('regular', '16-Mar-2017')
      expect(hotel_name).to eq('Lakewood')
    end

    it 'Returns the cheapest hotel for one date on weekend' do
      hotel_name = hotel.search_cheapest('regular', '18-Mar-2017')
      expect(hotel_name).to eq('Bridgewood')
    end
  end

  context 'Reward customer' do
    let(:hotel) { Hotel.new }

    it 'Returns the cheapest hotel for one date on weekday' do
      hotel_name = hotel.search_cheapest('reward', '16-Mar-2017')
      expect(hotel_name).to eq('Lakewood')
    end

  end
end
