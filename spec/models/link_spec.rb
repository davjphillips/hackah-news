require 'spec_helper'

describe Link do
  
  it 'requires a url' do
    subject.should_not be_valid
    subject.errors[:url].should_not be_empty
  end
  
  it 'requires a title' do
    should_not be_valid
    subject.errors[:title].should_not be_empty
  end
  
  it 'does not allow duplicate urls' do
    Link.create :title => "dont care", :url => "http://devbootcamp.com"
    l = Link.new :title => "dont care", :url => "http://devbootcamp.com"
    l.should_not be_valid
    l.errors[:url].should_not be_empty
  end

  it 'has a valid url' do
    Link.new :title => "dont care", :url => "http://devbootcamp.com"
  end
  
end
