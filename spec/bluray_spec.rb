require_relative 'spec_helper'
require_relative '../lib/bluray'

describe Bluray do
  before(:context) do
    @bluray1 = Bluray.new('Winnie the Pooh', 12.99, 90, 'Piglet', 'Tigger')
  end

  describe Initialization do
    it 'should be an instance of Bluray' do
      expect(@bluray1).to be_instance_of Bluray
    end

    it 'should be extended from item' do
      expect(@bluray1).to be_kind_of(Item)
    end
  end

  describe 'check getters and setters' do
    it 'can read and assign name' do
     @bluray1.name = 'Batman'
     expect(@bluray1.name).to eq('Batman')
    end

    it 'can read and assign price' do
     @bluray1.price = '9.99'
     expect(@bluray1.price).to eq('9.99')
    end

    it 'can read and assign runtime' do
     @bluray1.runtime = '120'
     expect(@bluray1.runtime).to eq('120')
    end

    it 'can read and assign director' do
     @bluray1.director = 'Christopher Nolan'
     expect(@bluray1.director).to eq('Christopher Nolan')
    end

    it 'can read and assign producer' do
     @bluray1.producer = 'Emma Thomas'
     expect(@bluray1.producer).to eq('Emma Thomas')
    end
  end
end
