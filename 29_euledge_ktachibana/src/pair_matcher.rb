

class PairMatcher
  def initialize(men_wishes, women_wishes)
    puts men_wishes.inspect
    @men_wishes, @women_wishes = men_wishes, women_wishes
    @bachelor_men = Array.new(men_wishes.length){|n| n }
  end

  attr_reader :men_wishes, :women_wishes, :bachelor_men

  def match
      
     while !bachelor_men.empty?
         break
     end
  end
end

