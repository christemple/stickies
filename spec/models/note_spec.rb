require 'spec_helper'

describe Note, :type => :model do

  it 'needs to have an owner' do
    expect(Note.create({ text: 'some text' })).to be_invalid
  end

  it 'needs to have some text' do
    expect(Note.create({ owner: 'chris' })).to be_invalid
  end

  it 'is valid with an owner and text' do
    expect(Note.create({ owner: 'chris', text: 'some text' })).to be_valid
  end

end
