require_relative 'spec_helper'
require_relative '../lib/cd'
require_relative '../lib/item'

# Cd < Item
# Tracks (number of)
# Artist
# Run time

describe Cd do
  before(:context) do
    # name, price, no of tracks, artist, runtime
    @cd1 = Cd.new('Yellow', 39.99, 10, 'Coldplay', 45)
  end

  describe Initialization do
    it 'should be an instance of Cd' do
      expect(@cd1).to be_instance_of Cd
    end

    it 'should be extended from item' do
      expect(@cd1).to be_kind_of(Item)
    end
  end

  describe 'check getters and setters' do
    it 'can read name of cd' do
      expect(@cd1.name).to eq('Yellow')
    end

    it 'can assign name of cd' do
      @cd1.name = 'Meteora'
      expect(@cd1.name).to eq('Meteora')
    end

    it 'can read price of cd' do
      expect(@bluray1.price).to eq('39.99')
    end

    it 'can assign price of cd' do
      @cd1.price = '49.99'
      expect(@bluray1.price).to eq('49.99')
    end

    it 'can read and assign runtime' do
      @cd1.runtime = '38'
      expect(@cd1.runtime).to eq('38')
    end

    it 'can read and assign artist' do
      @cd1.artist = 'Linkin Park'
      expect(@cd1.artist).to eq('Linkin Park')
    end

    it 'can read and assign track number' do
      @cd1.tracks = 9
      expect(@cd1.tracks).to eq(9)
    end
  end

  # check initialization
  # check that it is an extended from Item
  # check that it is an instance of Cd
  # check getters and setters
end
