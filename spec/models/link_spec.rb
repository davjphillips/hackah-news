require 'spec_helper'

describe Link do
  
  it 'requires a url' do
    should_not be_valid
    subject.errors
  end

end
