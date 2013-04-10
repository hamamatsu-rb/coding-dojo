require '../src/grep'

describe Grep do

  subject { Grep.new }

  before do
    @regex = Regexp.new( 'text' )
  end

  it { should be_match( @regex, "input text" ) }
  it { should_not be_match( @regex, "input ttttt" ) }

end

