require '../src/grep'

describe Grep do

  subject { Grep.new("text") }

  it { should be_match("input text" ) }
  it { should_not be_match( "input ttttt" ) }

  
end

