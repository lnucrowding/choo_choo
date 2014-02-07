require 'spec_helper'

describe ChooChoo do
  it 'should choo' do
    expect(ChooChoo::Say.choo).to eq 'Choo! Choo!'
  end
end
